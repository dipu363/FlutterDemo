package com.example.restapitest;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;

import com.example.restapitest.appconfig.ApiClient;
import com.example.restapitest.appconfig.CommentModel;
import com.example.restapitest.appconfig.CommentService;
import com.example.restapitest.appconfig.LabelTextRespons;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //getallcomments();
        getLable();


    }


    public void getallcomments() {
        CommentService commentService = ApiClient.getRetrofit().create(CommentService.class);

        Call<String> comments = commentService.getallcomments();


        comments.enqueue(new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {



                if (response.isSuccessful()){

                    Log.d("response " ,String.valueOf( response.code()));
                    Log.d("response " ,response.toString());
                    Log.d("response " ,response.body());

                }
                else{
                    Log.d("response " , "not success");
                }
            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {

            }
        });

    }


    public void getLable(){

        CommentService commentService = ApiClient.getRetrofit().create(CommentService.class);
        Call<String> lab = commentService.getalllabel("MM1212");

        lab.enqueue(new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {
                Log.d("respons",response.body().toString());
            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {
                Log.d("respons",t.getMessage());
            }
        });


    }
}