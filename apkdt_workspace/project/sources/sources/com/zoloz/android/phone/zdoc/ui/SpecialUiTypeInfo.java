package com.zoloz.android.phone.zdoc.ui;

import com.alibaba.fastjson.annotation.JSONField;

/* loaded from: classes.dex */
public class SpecialUiTypeInfo {

    @JSONField(name = "layout")
    private String layout;

    @JSONField(name = "name")
    private String name;

    @JSONField(name = "textResId")
    private String testResId;

    public String getLayout() {
        return this.layout;
    }

    public String getName() {
        return this.name;
    }

    public String getTestResId() {
        return this.testResId;
    }

    public void setLayout(String str) {
        this.layout = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTestResId(String str) {
        this.testResId = str;
    }
}
