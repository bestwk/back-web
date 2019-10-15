package com.cheng.zhuo.electronicpos.common;


/**
 * 请求结果的封装类
 * @param <T> 泛型参数
 * @author: cmz
 * @date: 2018年02月19日 11:55
 */
public class ResponseData<T> {

    public final static String MESSAGE_OK="操作成功！";

    public final static String MESSAGE_ERROR="操作失败！";

    private Boolean success;

    private String message;

    private T data;

    public ResponseData(){
        this.success=false;
        this.message="";
        this.data=null;
    }

    public ResponseData(boolean isSuccess, String message, T data){
        this.success=isSuccess;
        this.message=message;
        this.data=data;
    }

    public ResponseData(boolean isSuccess, T data){
        this.success=isSuccess;
        this.message=isSuccess?ResponseData.MESSAGE_OK:ResponseData.MESSAGE_ERROR;
        this.data=data;
    }

    public ResponseData(boolean isSuccess){
        this.success=isSuccess;
        this.message=isSuccess?ResponseData.MESSAGE_OK:ResponseData.MESSAGE_ERROR;
        this.data=null;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }


}
