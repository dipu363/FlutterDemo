package com.example.restapitest.appconfig;

import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

public interface CommentService {

    @GET("/comments")
    Call<String> getallcomments();
    @GET("GetLabelText")
    Call<String> getalllabel(@Query("fromcode") String code);
    @GET("GetAllNationality")
    Call<LabelTextRespons> getnationality();


}
