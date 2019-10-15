package com.cheng.zhuo.electronicpos.common;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 单个图片上传
 * @author cmz
 */
@Controller
public class UploadImageUtil {

    @Value("${web.upload-path}")
    private String location;

    @ResponseBody
    @RequestMapping("cmz/upload/image")
    public ResponseData upload (@RequestParam(value = "file", required = true) MultipartFile[]files){

        if (files != null) {
            List<String> urls = new ArrayList<>();
            File targetFile = new File(location + "/upload/notFoundFolder/");
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            for (int i = 0; i < files.length; i++) {
                MultipartFile multipartFile = files[i];
                if (!multipartFile.isEmpty()) {
                    try {

                        String random = System.currentTimeMillis() + "-" + Math.round(Math.random() * 1000 + 1);
                        String suf = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().indexOf("."), multipartFile.getOriginalFilename().length());

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
        } else {
            return new ResponseData(false, "图片上传失败");
        }
    }
}


