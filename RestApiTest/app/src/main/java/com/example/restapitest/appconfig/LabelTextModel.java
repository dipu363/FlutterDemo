package com.example.restapitest.appconfig;

public class LabelTextModel {

    private String CODE;
    private String NAME_NATIVE;
    private String NAME_GLOBAL;

    public LabelTextModel() {
    }

    public LabelTextModel(String CODE, String NAME_NATIVE, String NAME_GLOBAL) {
        this.CODE = CODE;
        this.NAME_NATIVE = NAME_NATIVE;
        this.NAME_GLOBAL = NAME_GLOBAL;
    }

    public String getCODE() {
        return CODE;
    }

    public void setCODE(String CODE) {
        this.CODE = CODE;
    }

    public String getNAME_NATIVE() {
        return NAME_NATIVE;
    }

    public void setNAME_NATIVE(String NAME_NATIVE) {
        this.NAME_NATIVE = NAME_NATIVE;
    }

    public String getNAME_GLOBAL() {
        return NAME_GLOBAL;
    }

    public void setNAME_GLOBAL(String NAME_GLOBAL) {
        this.NAME_GLOBAL = NAME_GLOBAL;
    }
}
