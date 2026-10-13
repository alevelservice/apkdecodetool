package com.google.firebase.crashlytics.d;

import android.util.Log;

/* compiled from: Logger.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: c, reason: collision with root package name */
    static final b f14368c = new b("FirebaseCrashlytics");

    /* renamed from: a, reason: collision with root package name */
    private final String f14369a;

    /* renamed from: b, reason: collision with root package name */
    private int f14370b = 4;

    public b(String str) {
        this.f14369a = str;
    }

    public static b a() {
        return f14368c;
    }

    public void b(String str, Throwable th) {
        a(6);
    }

    public void c(String str, Throwable th) {
        a(4);
    }

    public void d(String str, Throwable th) {
        a(5);
    }

    private boolean a(int i2) {
        return this.f14370b <= i2 || Log.isLoggable(this.f14369a, i2);
    }

    public void b(String str) {
        b(str, null);
    }

    public void c(String str) {
        c(str, null);
    }

    public void d(String str) {
        d(str, null);
    }

    public void a(String str, Throwable th) {
        a(3);
    }

    public void a(String str) {
        a(str, null);
    }
}
