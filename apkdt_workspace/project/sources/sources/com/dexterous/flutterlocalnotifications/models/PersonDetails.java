package com.dexterous.flutterlocalnotifications.models;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes.dex */
public class PersonDetails {
    public Boolean bot;
    public String icon;
    public IconSource iconBitmapSource;
    public Boolean important;
    public String key;
    public String name;
    public String uri;

    public PersonDetails(Boolean bool, String str, IconSource iconSource, Boolean bool2, String str2, String str3, String str4) {
        this.bot = bool;
        this.icon = str;
        this.iconBitmapSource = iconSource;
        this.important = bool2;
        this.key = str2;
        this.name = str3;
        this.uri = str4;
    }
}
