package com.cheng.zhuo.electronicpos.common.controller;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.common.utils.BinaryUtil;
import com.aliyun.oss.model.MatchMode;
import com.aliyun.oss.model.PolicyConditions;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.vod.model.v20170321.CreateUploadVideoRequest;
import com.aliyuncs.vod.model.v20170321.CreateUploadVideoResponse;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.untils.AliyunuploadClientUtils;
import com.cheng.zhuo.electronicpos.untils.FileUtil;
import com.cheng.zhuo.electronicpos.untils.FileUtilAliOss;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.*;

@RestController
public class UploadFileController {
    @Value("${web.upload-path}")
    private String location;

    @Value("${aliyun.access-key-id}")
    private  String accessKeyId;

    @Value("${aliyun.access-key-secret}")
    private  String accessKeySecret ;

    @Value("${aliyun.bucket}")
    private  String pBbucket ;

    @Value("${aliyun.endpoint}")
    private  String pEndpoint ;

    @ResponseBody
    @PostMapping("/upload/image")
    public ResponseData upload(@RequestParam(value = "file", required = true) MultipartFile[] files) {
        if(files != null){
            List<String> urls = new ArrayList<>();
            File targetFile = new File(location + "/upload/notFoundFolder/");
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            for (int i = 0; i < files.length; i++) {
                MultipartFile multipartFile = files[i];
                if (!multipartFile.isEmpty()) {
                    try {
                        //校验是否图片
                        Boolean aBoolean = FileUtil.checkImg(multipartFile);
                        if (!aBoolean) {
                            return new ResponseData(false, "请上传图片格式", null);
                        }
                        String random = System.currentTimeMillis() + "-"+Math.round(Math.random()*1000+1);
                        String suf=multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().indexOf("."),multipartFile.getOriginalFilename().length());

                        File file = new File(location + "/upload/notFoundFolder/" + random + suf);
                        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(file));
                        out.write(multipartFile.getBytes());
                        out.flush();
                        out.close();
                        urls.add("/upload/notFoundFolder/" + random + suf);
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                        return new ResponseData(false, "图片上传失败", null);
                    } catch (IOException e) {
                        e.printStackTrace();
                        return new ResponseData(false, "图片上传失败", null);
                    } catch (NullPointerException e) {
                        e.printStackTrace();
                        return new ResponseData(false, "图片上传失败", null);
                    }
                }
            }

            return new ResponseData(true, "图片上传成功", urls);
        }else{
            return new ResponseData(false,"图片上传失败");
        }
    }
    //小程序上传视频
    @ResponseBody
    @PostMapping("/mini/upload/video")
    public ResponseData miniUploadVideo(@RequestParam(value = "file", required = true) MultipartFile[] files) {
        if(files != null){
            List<String> urls = new ArrayList<>();
            File targetFile = new File(location + "/upload/notFoundFolder/");
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            for (int i = 0; i < files.length; i++) {
                MultipartFile multipartFile = files[i];
                if (!multipartFile.isEmpty()) {
                    try {

                        String random = System.currentTimeMillis() + "-"+Math.round(Math.random()*1000+1);
                        String suf=multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().indexOf("."),multipartFile.getOriginalFilename().length());

                        File file = new File(location + "/upload/notFoundFolder/" + random + suf);
                        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(file));
                        out.write(multipartFile.getBytes());
                        out.flush();
                        out.close();
                        urls.add("/upload/notFoundFolder/" + random + suf);
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                        return new ResponseData(false, "视频上传失败", null);
                    } catch (IOException e) {
                        e.printStackTrace();
                        return new ResponseData(false, "视频上传失败", null);
                    } catch (NullPointerException e) {
                        e.printStackTrace();
                        return new ResponseData(false, "视频上传失败", null);
                    }
                }
            }

            return new ResponseData(true, "视频上传成功", urls);
        }else{
            return new ResponseData(false,"视频上传失败");
        }
    }

    @GetMapping("/pre/upload/video")
    public ResponseData getSignature(String fileCatalog,String dir,String fileSuffix) {
        System.out.println("OK");
        ResponseData responseData = new ResponseData();
        FileUtilAliOss objFileUtil = new FileUtilAliOss();

        String accessId = accessKeyId;
        String accessKey = accessKeySecret;
        String bucket = pBbucket;
        String endpoint = pEndpoint;
        String host = "http://" + bucket + "." + endpoint;
        long max = ".mp4".equals(fileSuffix) ? 524288000 : 512000;

        OSSClient ossClient = new OSSClient(endpoint, accessId, accessKey);
        try {
            long expireTime = 3600L * 24 * 365 * 10;
            long expireEndTime = System.currentTimeMillis() + expireTime * 1000;
            Date expiration = new Date(expireEndTime);
            PolicyConditions policyConds = new PolicyConditions();
            policyConds.addConditionItem(PolicyConditions.COND_CONTENT_LENGTH_RANGE, 0, max);
            policyConds.addConditionItem(MatchMode.StartWith, PolicyConditions.COND_KEY, dir);

            String postPolicy = ossClient.generatePostPolicy(expiration, policyConds);
            byte[] binaryData = postPolicy.getBytes("utf-8");
            String encodedPolicy = BinaryUtil.toBase64String(binaryData);
            String postSignature = ossClient.calculatePostSignature(postPolicy);

            Map<String, String> params = new LinkedHashMap<String, String>();
            params.put("key", objFileUtil.calculateObjectName(fileCatalog, dir, fileSuffix, 32));
            params.put("policy", encodedPolicy);
            params.put("OSSAccessKeyId", accessId);
            params.put("success_action_status", "200");
            params.put("signature", postSignature);
            params.put("host", host);

            responseData.setSuccess(true);
            responseData.setData(params);
        } catch (Exception e) {
            responseData.setSuccess(false);
            e.printStackTrace();
        }

        return responseData;
    }


    @ResponseBody
    @GetMapping("/upload/video")
    public Map getAuth(String title) throws Exception{
        Map map = new HashMap();
        ResponseData res=new ResponseData();
        DefaultAcsClient client = AliyunuploadClientUtils.initVodClient(accessKeyId, accessKeySecret);
        CreateUploadVideoRequest request = new CreateUploadVideoRequest();
        //将以下信息替换成前端动态传入的文件信息即可
        //上传的文件标题
        request.setTitle(title);
        //上传文件的相关藐视
        //request.setDescription("linux");
        //上传文件名
        request.setFileName(title+".mp4");

        CreateUploadVideoResponse response = new CreateUploadVideoResponse();
        try {
            response = client.getAcsResponse(request);
            //将下面是三个参数封装成json串返回给前端，这个json传就相当于一个凭证，该凭证默认的生命周期是3600秒
            //VideoId ： + response.getVideoId()
            //UploadAddress： response.getUploadAddress()
            //UploadAuth ： + response.getUploadAuth()
            System.out.print("VideoId = " + response.getVideoId() + "\n");
            System.out.print("UploadAddress = " + response.getUploadAddress() + "\n");
            System.out.print("UploadAuth = " + response.getUploadAuth() + "\n");
            map.put("code","0");
            map.put("VideoId",response.getVideoId());
            map.put("UploadAddress",response.getUploadAddress());
            map.put("UploadAuth",response.getUploadAuth());
        } catch (Exception e) {
            System.out.print("ErrorMessage = " + e.getLocalizedMessage());
            map.put("code","-1");
        }
        return map;
    }

}
