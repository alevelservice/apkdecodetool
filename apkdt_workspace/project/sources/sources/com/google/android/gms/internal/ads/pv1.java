package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class pv1<T> {

    /* renamed from: a, reason: collision with root package name */
    private final int f8796a;

    /* renamed from: b, reason: collision with root package name */
    private final String f8797b;

    /* renamed from: c, reason: collision with root package name */
    private final T f8798c;

    private pv1(int i2, String str, T t) {
        this.f8796a = i2;
        this.f8797b = str;
        this.f8798c = t;
        mu1.d().a(this);
    }

    public static pv1<String> b(int i2, String str) {
        pv1<String> a2 = a(i2, str, (String) null);
        mu1.d().c(a2);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T a(SharedPreferences sharedPreferences);

    public abstract T a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T a(JSONObject jSONObject);

    public final String a() {
        return this.f8797b;
    }

    public abstract void a(SharedPreferences.Editor editor, T t);

    public final T c() {
        return this.f8798c;
    }

    public static pv1<Boolean> a(int i2, String str, Boolean bool) {
        return new ov1(i2, str, bool);
    }

    public static pv1<Integer> a(int i2, String str, int i3) {
        return new rv1(i2, str, Integer.valueOf(i3));
    }

    public final int b() {
        return this.f8796a;
    }

    public static pv1<Long> a(int i2, String str, long j2) {
        return new qv1(i2, str, Long.valueOf(j2));
    }

    public static pv1<Float> a(int i2, String str, float f2) {
        return new tv1(i2, str, Float.valueOf(f2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ pv1(int i2, String str, Object obj, ov1 ov1Var) {
        this(i2, str, obj);
    }

    public static pv1<String> a(int i2, String str, String str2) {
        return new sv1(i2, str, str2);
    }

    public static pv1<String> a(int i2, String str) {
        pv1<String> a2 = a(i2, str, (String) null);
        mu1.d().b(a2);
        return a2;
    }
}
