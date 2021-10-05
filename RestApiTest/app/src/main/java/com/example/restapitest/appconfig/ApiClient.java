package com.example.restapitest.appconfig;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;

public class ApiClient {

   // private  static final  String baseurl = "https://jsonplaceholder.typicode.com";
    private  static final  String baseurl = "http://202.40.189.19/BloodBankAPI/api/";
   // private  static final  String baseurl = "https://rms.rufaida.com.my/BloodBankAPI/api/";
    private  static Retrofit retrofit  = null;


    public  static  Retrofit getRetrofit (){

        if(retrofit == null){
            retrofit = new Retrofit.Builder()
                    .baseUrl(baseurl)
                    .addConverterFactory(ScalarsConverterFactory.create())
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
        }
        return  retrofit;
    }



}
