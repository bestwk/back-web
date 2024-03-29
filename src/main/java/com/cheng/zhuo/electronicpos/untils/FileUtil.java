package com.cheng.zhuo.electronicpos.untils;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.IOException;

public class FileUtil {
    public static String  checkImg(String uploadContentType){
        String expandedName = "";
        if (uploadContentType.endsWith(".jpg") || uploadContentType.endsWith(".JPG")) {
            // IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg
            expandedName = "jpg";
        } else if (uploadContentType.endsWith(".png") || uploadContentType.endsWith(".PNG")) {
            // IE6上传的png图片的headimageContentType是"image/x-png"
            expandedName = "png";
        } else if (uploadContentType.endsWith(".gif")) {
            expandedName = "gif";
        } else if (uploadContentType.endsWith(".bmp")) {
            expandedName = "bmp";
        }
        return expandedName;
    }


    // 校验文件尺寸跟大小
    public static String checkFileImg(MultipartFile file, String photoSizeStr, String photoWidthStr, String photoHeightStr) throws IOException {
        int photoSize = photoSizeStr!=null?Integer.parseInt(photoSizeStr):0;
        int photoWidth = photoWidthStr!=null?Integer.parseInt(photoWidthStr):0;
        int photoHeight = photoHeightStr!=null?Integer.parseInt(photoHeightStr):0;
        CommonsMultipartFile cf= (CommonsMultipartFile)file;
        String result = "";
        String tip = "请上传图片尺寸为"+photoWidth+"*"+photoHeight+"！";
        BufferedImage image = ImageIO.read(cf.getInputStream());
        //BufferedImage image = ImageIO.read(f);
        if (file.getSize() > photoSize * 1024) {
            result = "文件大小不得大于" + photoSize + "kb!";
            return result;
        }
        if (image.getWidth() < (photoWidth) || image.getWidth() > (photoWidth + 20)) {
            return tip;
        }

        if (image.getHeight() < (photoHeight) || image.getHeight() > (photoHeight + 20)) {
            return tip;
        }

        return null;
    }

    public static Boolean checkImg(MultipartFile file){
        String fileName = file.getOriginalFilename();
        // 获取上传文件扩展名
        String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length());
        // 对扩展名进行小写转换
        fileExt = fileExt.toLowerCase();
        // 图片文件大小过滤
        if (!"jpg".equals(fileExt) && !"jpeg".equals(fileExt) && !"png".equals(fileExt) && !"bmp".equals(fileExt)
                && !"gif".equals(fileExt)) {
            return false;
        }

        return true;
    }

}
