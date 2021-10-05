package com.example.restapitest.appconfig;

import java.util.List;

public class LabelTextRespons {
    int total;
    List<LabelTextModel> data;
    boolean success;
    String message;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<LabelTextModel> getData() {
        return data;
    }

    public void setData(List<LabelTextModel> data) {
        this.data = data;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
