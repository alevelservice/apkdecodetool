package com.google.firebase.crashlytics.d.m.c;

import java.io.File;
import java.util.Map;

/* compiled from: Report.java */
/* loaded from: classes.dex */
public interface c {

    /* compiled from: Report.java */
    /* loaded from: classes.dex */
    public enum a {
        JAVA,
        NATIVE
    }

    String a();

    Map<String, String> b();

    File c();

    File[] d();

    String e();

    a getType();

    void remove();
}
