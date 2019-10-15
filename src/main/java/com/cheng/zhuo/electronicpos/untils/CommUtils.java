package com.cheng.zhuo.electronicpos.untils;

import com.alibaba.fastjson.JSONObject;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.CaseInsensitiveMap;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;
import java.lang.reflect.Method;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 *@author zxp
 *@Title:WechatUtil
 *@Description:TODO
 *@date 2018/10/18 0004
 */
public class CommUtils {

    /**
     * 将字符串转换成整数
     * @param value        字符串
     * @param defaultValue 如果字符串为空或者null的默认返回值
     * @return
     */
    public static int str2Int(String value, int defaultValue) {
        if (value == null || "".equals(value)) {
            return defaultValue;
        }
        return Integer.valueOf(value);
    }

    @SuppressWarnings("restriction")
	public static Long null2Long(String value, long defaultValue) {
        if (value == null || "".equals(value)) {
            return defaultValue;
        }
        new CaseInsensitiveMap();
        return Long.valueOf(value);
    }

    public static Long str2Long(String value) {
        if (isNullOrBlack(value)) {
            return -1L;
        }
        return Long.valueOf(value);
    }

    public static Long str2Long(String value, Long defaultValue) {
        if (isNullOrBlack(value)) {
            return defaultValue;
        }
        return Long.valueOf(value);
    }

    public static Double str2Double(String value) {
        if (isNullOrBlack(value)) {
            return 0d;
        }
        return Double.valueOf(value);
    }

    public static Double str2Double(String value, Double defaultValue) {
        if (isNullOrBlack(value)) {
            return defaultValue;
        }
        return Double.valueOf(value);
    }

    /**
     * 将字符串转换成整数
     *
     * @param value 待转换的字符串
     * @return
     */
    public static int str2Int(String value) {
        if (isNullOrBlack(value)) {
            return -1;
        }
        return Integer.valueOf(value);
    }

    /**
     * 判断字符串是否为空或者null
     *
     * @param
     * @return
     */
    public static boolean isNotNull(Object obj) {
        return (obj != null) && (!obj.toString().equals(""));
    }

    public static boolean isNullOrBlack(Object obj) {
        if (obj == null) {
            return true;
        }

        if (obj instanceof CharSequence) {
            return ((CharSequence) obj).length() == 0;
        }

        if (obj instanceof Collection) {
            return ((Collection<?>) obj).isEmpty();
        }

        if (obj instanceof Map) {
            return ((Map<?, ?>) obj).isEmpty();
        }

        if (obj instanceof Object[]) {
            Object[] object = (Object[]) obj;
            if (object.length == 0) {
                return true;
            }
            boolean empty = true;
            for (int i = 0; i < object.length; i++) {
                if (!isNullOrBlack(object[i])) {
                    empty = false;
                    break;
                }
            }
            return empty;
        }
        return false;
    }

    /**
     * @param entityName,路径最后在日期目录前的名字
     * @param file,保存的文件
     * @param uploadAbPath,upload文件夹的绝对路径
     * @throws Exception
     * @throws IllegalStateException
     * @return 举例：{ext=jpg, filename=2018031410342456453.jpg,relativepath=/upload/media/ee/2018/3/14/, width=750, height=1334}
     */
    public static HashMap<String, String> saveImg(String entityName, MultipartFile file, String uploadAbPath, String...str) throws IllegalStateException, Exception {
        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONDAY) + 1;
        int day = cal.get(Calendar.DAY_OF_MONTH);
//        char c = File.separatorChar;
        StringBuffer sb = new StringBuffer ();
        sb.append("/").append("upload").append("/").append("media").append("/");
        sb.append(entityName).append("/");
        if (str == null || str.length == 0){
            sb.append(year).append("/");
            sb.append(month).append("/");
            sb.append(day).append("/");
        }
        String relativePath = sb.toString();
        String fileName = file.getOriginalFilename();
        String ext = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();
        String saveingFileName = String.valueOf(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())) + Math.round(Math.random() * 100000) + "." + ext;
        //绝对路径前缀+相对路径+自定义文件名
        if (!new File(uploadAbPath + relativePath).exists()) {
            new File(uploadAbPath + relativePath).mkdirs();
        }
        File saveingFile = new File(uploadAbPath + relativePath + saveingFileName);
        file.transferTo(saveingFile);
        //通过imageio获取文件的其他属性,比如尺寸和长宽
        BufferedImage sourceImg = ImageIO.read(new FileInputStream(saveingFile));
        HashMap<String, String> map = new HashMap<>();
        map.put("ext", ext);
        if (sourceImg != null) {
            map.put("width", String.valueOf(sourceImg.getWidth()));
            map.put("height", String.valueOf(sourceImg.getHeight()));
        }
        map.put("relativepath", relativePath);
        map.put("filename", saveingFileName);

        System.gc();//回收资源
        return map;
    }

    public static String formatTime(String format, Object v) {
        if (v == null) {
            return null;
        }
        if (v.equals("")) {
            return "";
        }
        SimpleDateFormat df = new SimpleDateFormat(format);
        return df.format(v);
    }

    public static final String randomNumberString(int length) {
        char[] numbersAndLetters = "0123456789".toCharArray();
        if (length < 1) {
            return "";
        }
        Random randGen = new Random();
        char[] randBuffer = new char[length];
        for (int i = 0; i < randBuffer.length; i++) {
            randBuffer[i] = numbersAndLetters[randGen.nextInt(10)];
        }
        return new String(randBuffer);
    }

    public static long getOrderDisHours(Date orderAddDate, Integer orderDisTime) {
        //当前时间
        Calendar calendarNow = Calendar.getInstance();
        //订单失效时间
        Calendar orderDis = Calendar.getInstance();
        orderDis.setTime(orderAddDate);
        orderDis.add(Calendar.HOUR, orderDisTime);
        long diffHours = (orderDis.getTimeInMillis() - calendarNow.getTimeInMillis()) / (1000 * 60 * 60);
        return diffHours;
    }

    public static List<Long> strToListLong(String str) {
        List<Long> list = new ArrayList<Long>();
        String[] strs = str.split(",");
        for (int i = 0; i < strs.length; i++) {
            Long id = Long.parseLong(strs[i]);
            list.add(id);
        }
        return list;

    }

    public static void main(String[] args) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());
            String termStart = "08:00:00";
            String termEnd = "08:03:00";
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
            Calendar termEndCanlendar = Calendar.getInstance();
            termEndCanlendar.setTime(new SimpleDateFormat("HH:mm:ss").parse(termStart));
            calendar.set(Calendar.HOUR_OF_DAY, termEndCanlendar.get(Calendar.HOUR_OF_DAY));//TODO 8点开始 测试有效时间为3分钟
            calendar.set(Calendar.MINUTE, termEndCanlendar.get(Calendar.MINUTE));
            calendar.set(Calendar.SECOND, termEndCanlendar.get(Calendar.SECOND));
            calendar.add(Calendar.DATE, 1);
            System.out.println(calendar.getTime());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 不为空转换为INT
     *
     * @param s
     */
    public static int null2Int(Object s) {
        int v = 0;
        if (s != null) {
            try {
                v = Integer.parseInt(s.toString());
            } catch (Exception localException) {
            }
        }
        return v;
    }

    public static String getURL(HttpServletRequest request) {
        String contextPath = request.getContextPath().equals("/") ? "" : request.getContextPath();
        String url = "http://" + request.getServerName();
        if (null2Int(Integer.valueOf(request.getServerPort())) != 80)
            url = url + ":" + null2Int(Integer.valueOf(request.getServerPort())) + contextPath;
        else {
            url = url + contextPath;
        }
        // logger.info("请求地址为："+url);
        return url;
    }

    public static void delFile(String sPath) {
        File file = new File(sPath);
        // 判断目录或文件是否存在
        if (file.exists()) {  // 不存在返回 false
            // 判断是否为文件
            if (file.isFile()) {  // 为文件时调用删除文件方法
                file.delete();
            }
        }
    }


    public static String urlEncodeUTF8(String source) {
        String result = source;
        try {
            result = java.net.URLEncoder.encode(source, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 发起HTTPS请求并获取结果
     *
     * @param requestUrl    路径
     * @param requestMethod 请求方式
     * @param output        提交的数据
     * @throws IOException
     */
    public static StringBuffer httpsRequest(String requestUrl, String requestMethod, String output) throws IOException {
        StringBuffer buffer = new StringBuffer();
        try {
            // 创建SSLContext对象，并使用我们指定的信任管理器初始化
            TrustManager[] tm = {new MyX509TrustManager()};
            SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
            sslContext.init(null, tm, new java.security.SecureRandom());
            // 从上述SSLContext对象中得到SSLSocketFactory对象
            SSLSocketFactory ssf = sslContext.getSocketFactory();

            URL url = new URL(requestUrl);
            HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
            connection.setSSLSocketFactory(ssf);
            connection.setDoOutput(true);
            connection.setDoInput(true);
            connection.setUseCaches(false);
            // 设置请求方式（GET/POST）
            connection.setRequestMethod(requestMethod);
            // 当有数据需要提交时
            if (null != output) {
                OutputStream outputStream = connection.getOutputStream();
                outputStream.write(output.getBytes("UTF-8"));
                outputStream.close();
            }
            // 将返回的输入流转换成字符串
            InputStream inputStream = connection.getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String str = null;
            while ((str = bufferedReader.readLine()) != null) {
                buffer.append(str);
            }
            bufferedReader.close();
            inputStreamReader.close();
            inputStream.close();
            inputStream = null;
            connection.disconnect();
        } catch (KeyManagementException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (NoSuchProviderException e) {
            e.printStackTrace();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (java.net.ProtocolException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return buffer;
    }

    /**
     * 重定向到http://的url
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param url
     */
    public static void redirectHttpUrl(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                       String url) {

        try {
            httpServletResponse.sendRedirect(url);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 生成随机字符串包含字母和数字
     *
     * @param length 字符串的长度
     * @return
     */
    public static String getRandomString(int length) {
        String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(62);
            sb.append(str.charAt(number));
        }
        return sb.toString();
    }

    /**
     * 请求返回JSON
     *
     * @param requestUrl    请求路径
     * @param requestMethod 请求方式
     * @param outputStr     提交的数据
     * @return
     */
    public static JSONObject httpsRequestToJsonObject(String requestUrl, String requestMethod, String outputStr) {
        JSONObject jsonObject = new JSONObject();
        try {
            StringBuffer buffer = httpsRequest(requestUrl, requestMethod, outputStr);
            jsonObject=JSONObject.parseObject(buffer.toString());
//            jsonObject = JSONObject.fromObject(buffer.toString());
        } catch (ConnectException ce) {
            ce.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jsonObject;
    }


    /**
     * 获取枚举的全部数据
     *
     * @param enumName 枚举类名 首字母大小写都兼容
     * @return JSONObject -> enumKey 对应 枚举的Key
     * @return JSONObject -> enumValue 对应 枚举的Value
     */
    public static List<JSONObject> getEnum(String enumName) {
        if (enumName == null) {
            return null;
        }
        List<JSONObject> list = new ArrayList<>();
        try {
            String className = "com.hdkj.media.common.en." + enumName.substring(0, 1).toUpperCase() + enumName.substring(1);
            Class<?> clazz = Class.forName(className);
            Method getKey = clazz.getMethod("getKey");
            Method getValue = clazz.getMethod("getValue");
            for (Object en : clazz.getEnumConstants()) {
                JSONObject object = new JSONObject();
                object.put("enumKey", getKey.invoke(en));
                object.put("enumValue", getValue.invoke(en));
                list.add(object);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 将emoji表情替换成空串
     *
     * @param source
     * @return 过滤后的字符串
     */
    public static String filterEmoji(String source) {
        if (source != null && source.length() > 0) {
            return source.replaceAll("[\ud800\udc00-\udbff\udfff\ud800-\udfff]", "");
        } else {
            return source;
        }
    }
}
