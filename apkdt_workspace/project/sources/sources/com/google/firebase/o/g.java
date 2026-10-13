package com.google.firebase.o;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HeartBeatInfoStorage.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    private static g f15286b;

    /* renamed from: c, reason: collision with root package name */
    private static final SimpleDateFormat f15287c = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f15288a;

    private g(Context context) {
        this.f15288a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized g a(Context context) {
        g gVar;
        synchronized (g.class) {
            if (f15286b == null) {
                f15286b = new g(context);
            }
            gVar = f15286b;
        }
        return gVar;
    }

    static boolean a(long j2, long j3) {
        return !f15287c.format(new Date(j2)).equals(f15287c.format(new Date(j3)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(String str, long j2) {
        if (this.f15288a.contains(str)) {
            if (!a(this.f15288a.getLong(str, -1L), j2)) {
                return false;
            }
            this.f15288a.edit().putLong(str, j2).apply();
            return true;
        }
        this.f15288a.edit().putLong(str, j2).apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(long j2) {
        return a("fire-global", j2);
    }
}
