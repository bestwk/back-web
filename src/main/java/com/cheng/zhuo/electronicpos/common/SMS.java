package com.cheng.zhuo.electronicpos.common;


import cn.jiguang.common.resp.APIConnectionException;
import cn.jiguang.common.resp.APIRequestException;
import cn.jsms.api.SendSMSResult;
import cn.jsms.api.ValidSMSResult;
import cn.jsms.api.common.SMSClient;
import cn.jsms.api.common.model.SMSPayload;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class SMS {
	private static final Logger log = LoggerFactory.getLogger(SMS.class);
	public static Map<String,Integer> map = new HashMap<>();

	private static final String jgappkey = "0f6155e6b41e9817dae09e19";
	private static final String jgmasterSecret = "21fcec1920a8d1825a7522aa";

	private static String getH(){
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		SimpleDateFormat i_month_day = new SimpleDateFormat("yyyy-MM-dd");
		String date_now = i_month_day.format(new Date());
		String h = date_now+""+c.get(Calendar.HOUR_OF_DAY);
		return h;
	}
	
	private static boolean isOk(String tel){
		Integer count = map.get(tel+getH());
		if(null==count){
			map.put(tel+getH(), 0);
			return true;
		}else{
			if(count>=4){
				return false;
			}else{
				map.put(tel+getH(), ++count);
				return true;
			}
		}
	}

	/**
	 * 获取验证吗
	 * SMS.java
	 * @author 王阳阳
	 * @date 2018/6/7 15:07
	 */
	public static String sendVerificationCode(String tel, String number) {
		if(!isOk(tel)){
			return "C";
		}
		String result = "";
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
		// 在头文件中设置转码
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");
		NameValuePair[] data = {
				new NameValuePair("Uid", "milianqianbao"),
				new NameValuePair("Key", "d41d8cd98f00b204e980"),
				new NameValuePair("smsMob", tel),
				new NameValuePair("smsText", "(" + number
						+ ") 这是本次的验证码，请与2分钟内正确输入到登录界面中") };
		post.setRequestBody(data);

		try {
			client.executeMethod(post);
			Header[] headers = post.getResponseHeaders();
			int statusCode = post.getStatusCode();
			for (Header h : headers) {
				
			}
			result = new String(post.getResponseBodyAsString().getBytes("gbk"));
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		post.releaseConnection();
		if (Integer.parseInt(result.trim()) > 0) {
			return "T";
		} else {
			return "F";
		}
	}
	/**
	 * 获取验证吗 (注册)
	 * SMS.java
	 * @author 王阳阳
	 * @date 2018/6/7 15:07
	 */
	public static String sendRegisterCode(String tel, String number) {
		if(!isOk(tel)){
			return "C";
		}
		String result = "";
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
		// 在头文件中设置转码
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");
		NameValuePair[] data = {
				new NameValuePair("Uid", "milianqianbao"),
				new NameValuePair("Key", "d41d8cd98f00b204e980"),
				new NameValuePair("smsMob", tel),
				new NameValuePair("smsText", "(" + number
						+ ") 这是本次的验证码，请与2分钟内正确输入到注册界面中") };
		post.setRequestBody(data);

		try {
			client.executeMethod(post);
			Header[] headers = post.getResponseHeaders();
			int statusCode = post.getStatusCode();
			for (Header h : headers) {

			}
			result = new String(post.getResponseBodyAsString().getBytes("gbk"));
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		post.releaseConnection();
		if (Integer.parseInt(result.trim()) > 0) {
			return "T";
		} else {
			return "F";
		}
	}
	/**
	 * 发送短息通知
	 * SMS.java
	 * @author 樊志东
	 * @date 2018/6/16
	 */
	public static String sendMsg(String tel, String msg) {

		if(!isOk(tel)){
			return "C";
		}
		String result = "";
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
		// 在头文件中设置转码
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");
		NameValuePair[] data = {
				new NameValuePair("Uid", "milianqianbao"),
				new NameValuePair("Key", "d41d8cd98f00b204e980"),
				new NameValuePair("smsMob", tel),
				new NameValuePair("smsText", msg)};
		post.setRequestBody(data);

		try {
			client.executeMethod(post);
			Header[] headers = post.getResponseHeaders();
			int statusCode = post.getStatusCode();
			for (Header h : headers) {

			}
			result = new String(post.getResponseBodyAsString().getBytes("gbk"));
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		post.releaseConnection();
		if (Integer.parseInt(result.trim()) > 0) {
			return "T";
		} else {
			return "F";
		}
	}
	/**
	 * @author  郭超超
	 * @create  2018/3/14 17:30
	 * @desc    六位随机数
	 **/
	public static int getRandNum() {
		int randNum = (int)((Math.random()*9+1)*100000);
		return randNum;
	}

	/**
	 * 发送极光短息通知 自己生成的验证码
	 * @author LTL
	 * @date 2019/6/13
	 */
	public static JSONObject sendJpushSmsMessageSelfCode(String phone,String code) {
		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(1)
				.addTempPara("code",code)
				.build();
		try {
			SendSMSResult res = client.sendTemplateSMS(payload);
			System.out.println(res.toString());
			JSONObject json = JSONObject.parseObject(res.toString());
			return json;
		} catch (APIConnectionException e) {
			System.out.println("Connection error. Should retry later. "+e);
		} catch (APIRequestException e) {
			System.out.println("Error response from JPush server. Should review and fix it. "+e);
			System.out.println("HTTP Status: " +e.getStatus());
			System.out.println("Error Message: " + e.getMessage());
		}
		return null;
	}
	/**
	 * 发送极光短息通知 自己生成的验证码(成享)
	 * @author  cjb
	 * @date 2019/6/13
	 */
	public static JSONObject sendJpushSmsMessageSelfCodeForChengXiang(String phone,String code) {
		SMSClient client = new SMSClient( "ce02ddca85ba9cc538aec78e","e6c94e6917e69f80c53d7d56");
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(1)
				.addTempPara("code",code)
				.build();
		try {
			SendSMSResult res = client.sendTemplateSMS(payload);
			System.out.println(res.toString());
			JSONObject json = JSONObject.parseObject(res.toString());
			return json;
		} catch (APIConnectionException e) {
			System.out.println("Connection error. Should retry later. "+e);
		} catch (APIRequestException e) {
			System.out.println("Error response from JPush server. Should review and fix it. "+e);
			System.out.println("HTTP Status: " +e.getStatus());
			System.out.println("Error Message: " + e.getMessage());
		}
		return null;
	}
	/**
	 * 发送极光短息通知 极光生成的验证码
	 * @author LTL
	 * @date 2019/6/13
	 */
	public static JSONObject sendJpushSMSCode(String phone) {
		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(1)
				.build();
		try {
			SendSMSResult res = client.sendSMSCode(payload);
			System.out.println(res.toString());
			JSONObject json = JSONObject.parseObject(res.toString());
			return json;
		} catch (APIConnectionException e) {
			System.out.println("Connection error. Should retry later. "+e);
		} catch (APIRequestException e) {
			System.out.println("Error response from JPush server. Should review and fix it. "+e);
			System.out.println("HTTP Status: " +e.getStatus());
			System.out.println("Error Message: " + e.getMessage());
		}
		return null;
	}

	/**
	 * 批量发送极光短息通知
	 * @author wsj
	 * @date 2019/6/13
	 */
//	public static JSONObject sendBatch(List<CompanyApp> list) {
//		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
//		BatchSMSPayload.Builder builder = BatchSMSPayload.newBuilder();
//		builder.setTempId(167849);
//		for (CompanyApp companyApp : list) {
//
//			RecipientPayload build = RecipientPayload.newBuilder()
//					.setMobile(companyApp.getPhone())
//					.addTempPara("endDate", companyApp.getEndDate())
//					.addTempPara("appName", companyApp.getAppName())
//					.addTempPara("dateStatus", companyApp.getDateStatus())
//					.build();
//			builder.addRecipient(build);
//		}
//		BatchSMSPayload build = builder.build();
//		try {
//			BatchSMSResult res = client.sendBatchTemplateSMS(build);
//			System.out.println(res.toString());
//			JSONObject json = JSONObject.parseObject(res.toString());
//			return json;
//		} catch (APIConnectionException e) {
//			System.out.println("Connection error. Should retry later. "+e);
//		} catch (APIRequestException e) {
//			System.out.println("Error response from JPush server. Should review and fix it. "+e);
//			System.out.println("HTTP Status: " +e.getStatus());
//			System.out.println("Error Message: " + e.getMessage());
//		}
//		return null;
//	}
	/**
	 * 发送极光短息验证
	 * @author LTL
	 * @date 2019/6/13
	 */
	public static JSONObject sendJpushValidSMSCode(String msgId,String code) {
		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
		System.out.println(msgId+"========"+code);
		try {
			ValidSMSResult res = client.sendValidSMSCode(msgId, code);
			System.out.println(res.toString());
			JSONObject json = JSONObject.parseObject(res.toString());
			return json;
		} catch (APIConnectionException e) {
			e.printStackTrace();
			System.out.println("Connection error. Should retry later. "+e);
			System.out.println("Error Message: " + e.getMessage());
		} catch (APIRequestException e) {
			e.printStackTrace();
			System.out.println("Error response from JPush server. Should review and fix it. "+e);
			System.out.println("HTTP Status: " +e.getStatus());
			System.out.println("Error Message: " + e.getMessage());

		}
		return null;
	}

	//发送三个参数的短信
	public static String sendMessageThree(String phone, Integer tempId,String key1,String key2,String key3,String value1, String value2, String value3) {
		String result = "";
		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(tempId)
				.addTempPara(key1, value1)
				.addTempPara(key2, value2)
				.addTempPara(key3, value3)
				.build();
		try {
			SendSMSResult res = client.sendTemplateSMS(payload);
			System.out.println(res.toString());
			result = res.toString();
		} catch (APIConnectionException e) {
		} catch (APIRequestException e) {
		}
		//返回的是json{msg_id:"4346777"}
		return result;
	}
	//发送两个参数的短信
	public static String sendMessageTwo(String phone, Integer tempId,String key1,String key2,String value1, String value2) {
		String result = "";
		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(tempId)
				.addTempPara(key1, value1)
				.addTempPara(key2, value2)
				.build();
		try {
			SendSMSResult res = client.sendTemplateSMS(payload);
			System.out.println(res.toString());
			result = res.toString();
		} catch (APIConnectionException e) {
		} catch (APIRequestException e) {
		}
		//返回的是json{msg_id:"4346777"}
		return result;
	}
	//发送一个参数的短信
	/**
	 * 航翼
	 * @author: 崔建波
	 * @date: 2019年08月16日 14:32
	 */
	public static String sendMessageOne(String phone, Integer tempId,String key1,String value1) {
		String result = "";
		SMSClient client = new SMSClient(jgmasterSecret, jgappkey);
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(tempId)
				.addTempPara(key1, value1)
				.build();
		try {
			SendSMSResult res = client.sendTemplateSMS(payload);
			System.out.println(res.toString());
			result = res.toString();
		} catch (APIConnectionException e) {
		} catch (APIRequestException e) {
		}
		//返回的是json{msg_id:"4346777"}
		return result;
	}

	/**
	 * 成享
	 * @author: 崔建波
	 * @date: 2019年08月16日 14:32
	 */
	public static String sendMessageOneForChengXiang(String phone, Integer tempId,String key1,String value1) {
		String result = "";
		SMSClient client = new SMSClient("ce02ddca85ba9cc538aec78e","e6c94e6917e69f80c53d7d56");
		SMSPayload payload = SMSPayload.newBuilder()
				.setMobileNumber(phone)
				.setTempId(tempId)
				.addTempPara(key1, value1)
				.build();
		try {
			SendSMSResult res = client.sendTemplateSMS(payload);
			System.out.println(res.toString());
			result = res.toString();
		} catch (APIConnectionException e) {
		} catch (APIRequestException e) {
		}
		//返回的是json{msg_id:"4346777"}
		return result;
	}

	public static void main(String[] args) {

		//sendJpushSmsMessageSelfCode("15318828897");

		/*ArrayList<CompanyApp> list = new ArrayList<>();
		CompanyApp companyApp = new CompanyApp();
		companyApp.setEndDate("2019-07-25");
		companyApp.setDateStatus("1");
		companyApp.setAppName("发票云");
		companyApp.setPhone("15531173759");
		CompanyApp companyApp1 = new CompanyApp();
		companyApp1.setEndDate("2019-07-29");
		companyApp1.setDateStatus("3");
		companyApp1.setAppName("聚合网银");
		companyApp1.setPhone("13363873031");
		list.add(companyApp);
		list.add(companyApp1);
		SMS.sendBatch(list);*/

	}
}
