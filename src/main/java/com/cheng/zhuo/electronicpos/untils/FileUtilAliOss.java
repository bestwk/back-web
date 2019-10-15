package com.cheng.zhuo.electronicpos.untils;

/**
 * @author JayLee
 * @Title: FileUtil
 * @ProjectName onlinecourse_web
 * @Description: TODO
 * @date 2018/7/9 000911:35
 */
public class FileUtilAliOss {

    public String getRandomString(String type, int len) {
        String chars = "ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678";
        int maxPos = chars.length();
        String random = "";
        for (int i = 0; i < len; i++) {
            random += chars.charAt((int) Math.floor(Math.random() * maxPos));
        }
        return type + "-" + random;
    }

    public String getSuffix(String fileName) {
        int pos = fileName.lastIndexOf('.');
        String suffix = "";
        if (pos != -1) {
            suffix = fileName.substring(pos);
        }
        return suffix;
    }

    public String pathRemovalFileName(String fileName){
        int pos = fileName.lastIndexOf("/");
        String filename = "";
        if (pos != -1) {
            filename = fileName.substring(pos);
        }
        return filename;
    }

    public String calculateObjectName(String type, String dir, String fileSuffix, int len) {
        String g_object_name = dir + getRandomString(type, len) + fileSuffix;
        return g_object_name;
    }
}
