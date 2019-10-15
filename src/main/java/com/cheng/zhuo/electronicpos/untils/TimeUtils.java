package com.cheng.zhuo.electronicpos.untils;


import org.apache.http.util.TextUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * TimeUtils
 */
public class TimeUtils {

    public static final SimpleDateFormat DEFAULT_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat DATE_FORMAT_DATE = new SimpleDateFormat("yyyy-MM-dd");
    public static final SimpleDateFormat DATE_FORMAT_NOSEC = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    public static final SimpleDateFormat DATE_FORMAT_NOLINE = new SimpleDateFormat("yyyyMMddHHmmss");

    private TimeUtils() {
        throw new AssertionError();
    }

    /**
     * long time to string
     *
     * @param timeInMillis
     * @param dateFormat
     * @return
     */
    public synchronized static String getTime(long timeInMillis, SimpleDateFormat dateFormat) {
        return dateFormat.format(new Date(timeInMillis));
    }

    /**
     * long time to string, format is {@link #DEFAULT_DATE_FORMAT}
     *
     * @param timeInMillis
     * @return
     */
    public synchronized static String getTime(long timeInMillis) {
        return getTime(timeInMillis, DEFAULT_DATE_FORMAT);
    }
    public synchronized static String getDate(long timeInMillis) {
        return getTime(timeInMillis, DATE_FORMAT_DATE);
    }

    /**
     * get current time in milliseconds
     *
     * @return
     */
    public static long getCurrentTimeInLong() {
        return System.currentTimeMillis();
    }

    /**
     * get current time in milliseconds, format is {@link #DEFAULT_DATE_FORMAT}
     *
     * @return
     */
    public static String getCurrentTimeInString() {
        return getTime(getCurrentTimeInLong());
    }

    /**
     * 获取当前时间并转换为yyyy-MM-dd HH:mm
     *
     * @return
     */
    public static String getCurrentTime2StringNoSec() {
        return getTime(getCurrentTimeInLong(), DATE_FORMAT_NOSEC);
    }

    /**
     * get current time in milliseconds
     *
     * @return
     */
    public static String getCurrentTimeInString(SimpleDateFormat dateFormat) {
        return getTime(getCurrentTimeInLong(), dateFormat);
    }
    /**
     * 获取当前时间 YYYY-MM-DD
     *
     * @return
     */
    public static String getDateDay() {
        return DATE_FORMAT_DATE.format(new Date());
    }

    /**
     * get current time in milliseconds, format is {@link #DEFAULT_DATE_FORMAT}
     *
     * @return
     */
    public static String getUnixDateCurrentTimeInString() {
        return getTime(getUnixDateCurrentTimeInLong() * 1000);
    }

    /**
     * get current time in milliseconds
     *
     * @return
     */
    public static Long getUnixDateCurrentTimeInLong() {
        return System.currentTimeMillis() / 1000;
    }

    /**
     * get current time in milliseconds
     *
     * @return
     */
    public static Integer getUnixDateCurrentTimeInInt() {
        Long t = System.currentTimeMillis() / 1000;
        return t.intValue();
    }

    /**
     * Unix时间戳转java时间
     */

    public static String unixTime2DateInString(Integer timestampInteger, String formats) {
        Long timestamp = timestampInteger * 1000L;
        String date = new SimpleDateFormat(formats).format(new Date(timestamp));
        return date;
    }

    public static String unixTime2DateInString(Long timestamp, String formats) {
        String date = new SimpleDateFormat(formats).format(new Date(timestamp));
        return date;
    }

    /**
     * java时间转Unix时间戳
     *
     * @param date
     * @return
     */
    public static Integer date2UnixTime(Date date) {
        Integer unix = null;
        Long mi = date.getTime() / 1000;
        unix = mi.intValue();
        return unix;
    }

    /**
     * 毫秒转为分钟
     *
     * @param millis
     * @return
     */
    public static Integer javaTime2UnixTime(Long millis) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(new Date(millis));
        Long mi = cl.getTimeInMillis() / 1000/60;
        return mi.intValue();
    }

    /**
     * java时间转时间戳--date.gettime()方法-传入的是"yyyy-MM-dd "格式的字符串
     *
     * @return
     */
    public static Long longTime(String sDate) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date;
        if (!"".equals(sDate)) {
            try {
                date = sdf.parse(sDate);
                return date.getTime();
            } catch (ParseException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                return null;
            }
        } else {
            return null;
        }

    }

    /**
     * 获取某月的最大天数
     *
     * @param year
     * @param month
     * @return
     */
    public static int getMaxDateInMonth(int year, int month) {
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.YEAR, year);
        cal.set(Calendar.MONTH, month - 1);
        int maxDate = cal.getActualMaximum(Calendar.DATE);
        return maxDate;
    }

    /**
     * 获取周几
     *
     * @param date
     * @return
     */
    public static int getWeekOfDate(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        return cal.get(Calendar.DAY_OF_WEEK);
    }

    /**
     * 获取周几
     *
     * @param date
     * @return
     */
    public static String getWeek(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int result = cal.get(Calendar.DAY_OF_WEEK);
        String strWeek = "";
        switch (result) {
            case 1:
                strWeek = "星期一";
                break;
            case 2:
                strWeek = "星期二";
                break;
            case 3:
                strWeek = "星期三";
                break;
            case 4:
                strWeek = "星期四";
                break;
            case 5:
                strWeek = "星期五";
                break;
            case 6:
                strWeek = "星期六";
                break;
            case 7:
                strWeek = "星期日";
                break;
            default:
                break;
        }
        return strWeek;
    }

    /**
     * 将字符串转换为日期类型
     *
     * @param sdate
     * @return
     */
    public static Date toDate(String sdate) {
        return toDate(sdate, DEFAULT_DATE_FORMAT);
    }

    /**
     * 将字符串转换为日期类型
     *
     * @param sdate
     * @param dateFormater SimpleDateFormat
     * @return 任向阳
     * 2016-10-21
     */
    public static Date toDate(String sdate, SimpleDateFormat dateFormater) {
        try {
            return dateFormater.parse(sdate);
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * 将字符串转换为日期类型
     *
     * @param sdate
     * @return 任向阳
     * 2016-10-21
     */
    public static Date toDate(String sdate, String format) {
        try {
            SimpleDateFormat dateFormater = new SimpleDateFormat(format);
            return dateFormater.parse(sdate);
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * 将日期转换为字符
     *
     * @param date
     * @return 任向阳
     * 2016-10-21
     */
    public synchronized static String getDateString(Date date) {
        return DEFAULT_DATE_FORMAT.format(date);
    }

    /**
     * 将日期转换为字符
     *
     * @param date
     * @return 任向阳
     * 2016-10-21
     */
    public static String getDateString(Date date, String format) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        return dateFormat.format(date);
    }

    /**
     * 判断给定字符串时间是否为今日
     *
     * @param sdate
     * @return boolean
     */
    public synchronized static boolean isToday(String sdate) {
        boolean b = false;
        Date time = toDate(sdate);
        Date today = new Date();
        if (time != null) {
            String nowDate = DEFAULT_DATE_FORMAT.format(today);
            String timeDate = DEFAULT_DATE_FORMAT.format(time);
            if (nowDate.equals(timeDate)) {
                b = true;
            }
        }
        return b;
    }

    /***
     * 计算两个时间差，返回的是的秒s
     *
     * @author 火蚁 2015-2-9 下午4:50:06
     *
     * @return long
     * @param dete1
     * @param date2
     * @return
     */
    public static long calDateDifferent(String dete1, String date2) {

        long diff = 0;

        Date d1 = null;
        Date d2 = null;

        try {
            d1 = DEFAULT_DATE_FORMAT.parse(dete1);
            d2 = DEFAULT_DATE_FORMAT.parse(date2);

            // 毫秒ms
            diff = d2.getTime() - d1.getTime();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return diff / 1000;
    }

    /**
     * 获取当前时间为每年第几周
     *
     * @return
     */
    public static int getWeekOfYear() {
        return getWeekOfYear(new Date());
    }

    /**
     * 获取当前时间为每年第几周
     *
     * @param date
     * @return
     */
    public static int getWeekOfYear(Date date) {
        Calendar c = Calendar.getInstance();
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c.setTime(date);
        int week = c.get(Calendar.WEEK_OF_YEAR) - 1;
        week = week == 0 ? 52 : week;
        return week > 0 ? week : 1;
    }

    /**
     * 通过毫秒值，手动计算两个日期的相差天数
     * <p>
     * 跨年不会出现问题
     * 使用此种方法的话需要注意
     * 如果时间为：2016-03-18 11:59:59 和 2016-03-19 00:00:01的话差值为 0
     *
     * @throws ParseException
     */
    public static Long getTwoDateDayDiff(String date1, String date2) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date fDate = sdf.parse(date1);
        Date oDate = sdf.parse(date2);
        long days = (oDate.getTime() - fDate.getTime()) / (1000 * 3600 * 24);
        return days;
    }


//    /**
//     * 根据上下午，确定返回时间
//     * @param cld 日期
//     * @param apEnum 上午/下午的枚举
//     * @param isMax 取值范围，如果为false取最小值，如果为true最大值。如：上午的最大值是11：59：59。
//     * @return
//     */
//    public static Calendar getCalendarForAmPm(Calendar cld,AmPmEnum apEnum,boolean isMax){
//    	if(isMax){
//    		if(apEnum==AmPmEnum.PM){
//    			cld.set(Calendar.HOUR_OF_DAY, 18);
//    			cld.set(Calendar.MINUTE, 0);
//    			cld.set(Calendar.SECOND, 0);
//    		}else{
//    			cld.set(Calendar.HOUR_OF_DAY, 11);
//    			cld.set(Calendar.MINUTE, 59);
//    			cld.set(Calendar.SECOND, 59);
//    		}
//    	}else{
//    		if(apEnum==AmPmEnum.PM){
//    			cld.set(Calendar.HOUR_OF_DAY, 12);
//    			cld.set(Calendar.MINUTE, 0);
//    			cld.set(Calendar.SECOND, 0);
//    		}else{
//    			cld.set(Calendar.HOUR_OF_DAY, 8);
//    			cld.set(Calendar.MINUTE, 0);
//    			cld.set(Calendar.SECOND, 0);
//    		}
//    	}
//    	return cld;
//    }

    /**
     * 将日期格式化为上下午格式，如：2017-01-02 上午
     *
     * @param dateStr
     * @return
     * @throws ParseException
     */
    public synchronized static String formatDateToAmPm(String dateStr) throws ParseException {
        Date date = DEFAULT_DATE_FORMAT.parse(dateStr);
        Calendar cd = Calendar.getInstance();
        cd.setTime(date);
        String ap = "";
        if (cd.get(Calendar.HOUR_OF_DAY) < 12) {
            ap = "上午";
        } else {
            ap = "下午";
        }

        return DATE_FORMAT_DATE.format(cd.getTime()) + " " + ap;
    }

    /**
     * 高仿canlender.add 日期的前后几天/年/月/时/分/秒
     * (@android.support.annotation.IntDef(value={java.util.Calendar.ERA, java.util.Calendar.YEAR, java.util.Calendar.MONTH, java.util.Calendar.WEEK_OF_YEAR, java.util.Calendar.WEEK_OF_MONTH, java.util.Calendar.DATE, java.util.Calendar.DAY_OF_MONTH, java.util.Calendar.DAY_OF_YEAR, java.util.Calendar.DAY_OF_WEEK, java.util.Calendar.DAY_OF_WEEK_IN_MONTH, java.util.Calendar.AM_PM, java.util.Calendar.HOUR, java.util.Calendar.HOUR_OF_DAY, java.util.Calendar.MINUTE, java.util.Calendar.SECOND, java.util.Calendar.MILLISECOND, java.util.Calendar.ZONE_OFFSET, java.util.Calendar.DST_OFFSET}) int field,
     * int value)
     * Sets the given calendar field to the given value. The value is not interpreted by this method regardless of the leniency mode.
     * Parameters:
     * field - the given calendar field.
     * value - the value to be set for the given calendar field.
     *
     * @throws ParseException
     */
    public synchronized static String getPreOrNextTimeByType(String dateStr, SimpleDateFormat format, int field, int value) {
        try {
            Date date = format.parse(dateStr);
            Calendar cd = Calendar.getInstance();
            cd.setTime(date);
            cd.add(field, value);
            String newDateStr = format.format(cd.getTime());
            return newDateStr;
        } catch (Exception e) {

        }
        return null;
    }

    /**
     * 判断保存时间是否超过多少小时 true是 false否
     *
     * @param dateTime
     *            保存时间==开始时间
     * @param hours
     *            小时
     * @author WYY
     * @date 2019年4月15日10:40:47
     */
    public static boolean getTowHours(String dateTime, int hours) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            // 当前时间-开始时间 获取毫秒
            long cha = sdf.parse(getCurrentTimeInString()).getTime() - sdf.parse(dateTime).getTime();
            if (cha < 0) {
                return false;
            }
            // 将毫秒转换成小时
            double result = cha * 1.0 / (1000 * 60 * 60);
            // 时间小于2个小时返回true
            if (result <= hours) {
                return true;
            }
            return false;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 根据当前日期获得所在周的日期区间（周一和周日日期）
     *
     * @param dateTime 当前日期
     * @return
     * @throws ParseException
     * @author 王阳阳
     */
    public static String getWeakInterval(String dateTime) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(dateTime);
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        // 判断要计算的日期是否是周日，如果是则减一天计算周六的，否则会出问题，计算到下一周去了
        // 获得当前日期是一个星期的第几天
        int dayWeek = cal.get(Calendar.DAY_OF_WEEK);
        if (1 == dayWeek) {
            cal.add(Calendar.DAY_OF_MONTH, -1);
        }
        //  sdf.format(cal.getTime())); // 输出要计算日期
        // 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        // 获得当前日期是一个星期的第几天
        int day = cal.get(Calendar.DAY_OF_WEEK);
        // 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值
        cal.add(Calendar.DATE, cal.getFirstDayOfWeek() - day);
        String impTimeBegin = sdf.format(cal.getTime());
        cal.add(Calendar.DATE, 6);
        String impTimeEnd = sdf.format(cal.getTime());
        return impTimeBegin + " 00:00:00" + "," + impTimeEnd + " 23:59:59";
    }

    /**
     * 根据当前日期获得上周的日期区间（上周周一和周日日期）
     *
     * @param dateTime 当前时间
     * @return
     * @author 王阳阳
     */
    public static String getPreWeakInterval(String dateTime) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(dateTime);
        Calendar calendar1 = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar1.setTime(date);
        int dayOfWeek = calendar1.get(Calendar.DAY_OF_WEEK) - 1;
        int offset1 = 1 - dayOfWeek;
        int offset2 = 7 - dayOfWeek;
        calendar1.add(Calendar.DATE, offset1 - 7);
        calendar2.add(Calendar.DATE, offset2 - 7);
        String lastBeginDate = sdf.format(calendar1.getTime());
        String lastEndDate = sdf.format(calendar2.getTime());
        return lastBeginDate + " 00:00:00" + "," + lastEndDate + " 23:59:59";
    }

    /**
     * 根据当前日期获取月的第一天和最后一天
     *
     * @param dateTime 当前日期
     * @param index    -1 上一个月 0 本月 1 下一个月
     * @return
     * @author 王阳阳
     * @date 2017/9/27 8:50
     */
    public static String getMonthInterval(String dateTime, int index) throws ParseException {
        String monthFirst;
        String monthEnd;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(dateTime);
        Calendar lastDate = Calendar.getInstance();
        lastDate.setTime(date);
        lastDate.add(Calendar.MONTH, index);
        //把日期设置为当月第一天
        lastDate.set(Calendar.DATE, 1);
        monthFirst = sdf.format(lastDate.getTime());
        //日期回滚一天，也就是当月最后一天
        lastDate.roll(Calendar.DATE, -1);
        monthEnd = sdf.format(lastDate.getTime());
        return monthFirst + " 00:00:00" + "," + monthEnd + " 23:59:59";
    }

    /**
     * 获得一年第一天的日期+最后一天的日期
     *
     * @param index 0本年 1明年 -1去年
     * @return
     * @author 王阳阳
     * @date 2017/9/27 8:57
     */
    public static String getYearInterval(int index) {
        String yearEnd;
        String yearFirst;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        Calendar lastDate = Calendar.getInstance();
        //加一个年  -1减一年
        lastDate.add(Calendar.YEAR, index);
        lastDate.set(Calendar.DAY_OF_YEAR, 1);
        yearFirst = sdf.format(lastDate.getTime());
        lastDate.roll(Calendar.DAY_OF_YEAR, -1);
        yearEnd = sdf.format(lastDate.getTime());
        return yearFirst + " 00:00:00" + "," + yearEnd + " 23:59:59";
    }





    /**
     * 是否闰年
     *
     * @param year 年
     * @return
     */
    public static boolean isLeapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

    /**
     * 根据当前时间获取今天+昨天的时间
     *
     * @param dateTime 当前时间
     * @return
     * @author 王阳阳
     * @date 2017/9/27 16:32
     */
    public static List<String> getDataTime(String dateTime) {
        List<String> dateJine = new ArrayList<>();
        try {
            Calendar calendar = Calendar.getInstance();
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateTime);
            calendar.setTime(date);
            int day = calendar.get(Calendar.DATE);
            calendar.set(Calendar.DATE, day - 1);
            String yesToday = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
            dateJine.add(dateTime);
            dateJine.add(yesToday);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dateJine;
    }


    /**
     * 获得本周的第一天，周一
     *
     * @return
     */
    public static Date getCurrentWeekDayStartTime(String time, SimpleDateFormat fromat) {
        Calendar c = Calendar.getInstance();
        try {
            c.setTime(fromat.parse(time));
            int weekday = c.get(Calendar.DAY_OF_WEEK) - 2;
            c.add(Calendar.DATE, -weekday);
            c.setTime(DEFAULT_DATE_FORMAT.parse(DATE_FORMAT_DATE.format(c.getTime()) + " 00:00:00"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }

    /**
     * 获得本周的最后一天，周日
     *
     * @return
     */
    public static Date getCurrentWeekDayEndTime(String time, SimpleDateFormat fromat) {
        Calendar c = Calendar.getInstance();
        try {
            c.setTime(fromat.parse(time));
            int weekday = c.get(Calendar.DAY_OF_WEEK);
            c.add(Calendar.DATE, 8 - weekday);
            c.setTime(DEFAULT_DATE_FORMAT.parse(DATE_FORMAT_DATE.format(c.getTime()) + " 23:59:59"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }

    /**
     * 获得本月的开始时间，即2012-01-01 00:00:00
     *
     * @return
     */
    public static Date getCurrentMonthStartTime(String time, SimpleDateFormat fromat) {
        Calendar c = Calendar.getInstance();
        Date now = null;
        try {
            c.setTime(fromat.parse(time));
            c.set(Calendar.DATE, 1);
            now = DATE_FORMAT_DATE.parse(DATE_FORMAT_DATE.format(c.getTime()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return now;
    }

    /**
     * 当前月的结束时间，即2012-01-31 23:59:59
     *
     * @return
     */
    public static Date getCurrentMonthEndTime(String time, SimpleDateFormat fromat) {
        Calendar c = Calendar.getInstance();
        Date now = null;
        try {
            c.setTime(fromat.parse(time));
            c.set(Calendar.DATE, 1);
            c.add(Calendar.MONTH, 1);
            c.add(Calendar.DATE, -1);
            now = DEFAULT_DATE_FORMAT.parse(DATE_FORMAT_DATE.format(c.getTime()) + " 23:59:59");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return now;
    }

    /**
     * 当前年的开始时间，即2012-01-01 00:00:00
     *
     * @return
     */
    public static Date getCurrentYearStartTime(String time, SimpleDateFormat fromat) {
        Calendar c = Calendar.getInstance();
        Date now = null;
        try {
            c.setTime(fromat.parse(time));
            c.set(Calendar.MONTH, 0);
            c.set(Calendar.DATE, 1);
            now = DATE_FORMAT_DATE.parse(DATE_FORMAT_DATE.format(c.getTime()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return now;
    }

    /**
     * 当前年的结束时间，即2012-12-31 23:59:59
     *
     * @return
     */
    public static Date getCurrentYearEndTime(String time, SimpleDateFormat fromat) {
        Calendar c = Calendar.getInstance();
        Date now = null;
        try {
            c.setTime(fromat.parse(time));
            c.set(Calendar.MONTH, 11);
            c.set(Calendar.DATE, 31);
            now = DEFAULT_DATE_FORMAT.parse(DATE_FORMAT_DATE.format(c.getTime()) + " 23:59:59");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return now;
    }


    /**
     * 将时间戳转成时间
     * @param time
     * @return
     */
    public static String getTimeStamp(String time){
        if(!TextUtils.isEmpty(time)){
            Long timestamp = Long.parseLong(time) * 1000;
            String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date(timestamp));
            return date;
        }
        return "";
    }
    /**
     *
     * @return
     * @Author: fanzhidong
     * @Description:获取一年后的日期
     * @Date: 2018/7/26
     */
    public static String getMonthDate(Long startTime,int month) {
        Calendar calendar =Calendar.getInstance();
        Date date = new Date(startTime);
           calendar.setTime(date);
            calendar.add(Calendar.MONTH,month );
        return DATE_FORMAT_DATE.format(calendar.getTime());
    }

    /**
     * 将时间yyyyMMdd转换成yyyy-MM-dd
     */
    public static String getDateDay(String day) {
        try {
            Calendar calendar = Calendar.getInstance();
            Date date = new SimpleDateFormat("yyyyMMdd").parse(day);
            calendar.setTime(date);
            return new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    /**
     * yyyyMM  年月
     * @return
     */
    public static String getPresentMonthDay() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMM");
            return simpleDateFormat.format(new Date());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

}
