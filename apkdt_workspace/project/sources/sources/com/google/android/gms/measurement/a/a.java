package com.google.android.gms.measurement.a;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.measurement.zzz;
import java.util.List;
import java.util.Map;

@KeepForSdk
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final zzz f12733a;

    public a(zzz zzzVar) {
        this.f12733a = zzzVar;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @KeepForSdk
    public static a a(@NonNull Context context) {
        return zzz.a(context).f();
    }

    @KeepForSdk
    public void b(String str, String str2, Bundle bundle) {
        this.f12733a.b(str, str2, bundle);
    }

    @KeepForSdk
    public void c(@NonNull Bundle bundle) {
        this.f12733a.a(bundle);
    }

    @Nullable
    @KeepForSdk
    public String d() {
        return this.f12733a.c();
    }

    @Nullable
    @KeepForSdk
    public String e() {
        return this.f12733a.d();
    }

    @Nullable
    @KeepForSdk
    public String f() {
        return this.f12733a.e();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @KeepForSdk
    public static a a(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull String str3, Bundle bundle) {
        return zzz.a(context, str, str2, str3, bundle).f();
    }

    @KeepForSdk
    public void b(@NonNull @Size(min = 1) String str) {
        this.f12733a.b(str);
    }

    @Nullable
    @KeepForSdk
    public String c() {
        return this.f12733a.g();
    }

    @KeepForSdk
    public Bundle b(Bundle bundle) {
        return this.f12733a.a(bundle, true);
    }

    @KeepForSdk
    @WorkerThread
    public int c(@NonNull @Size(min = 1) String str) {
        return this.f12733a.c(str);
    }

    @KeepForSdk
    public void a(String str, String str2, Object obj) {
        this.f12733a.a(str, str2, obj);
    }

    @KeepForSdk
    public String b() {
        return this.f12733a.b();
    }

    @KeepForSdk
    @WorkerThread
    public Map<String, Object> a(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        return this.f12733a.a(str, str2, z);
    }

    @KeepForSdk
    public void a(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f12733a.a(str, str2, bundle);
    }

    @KeepForSdk
    @WorkerThread
    public List<Bundle> a(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        return this.f12733a.a(str, str2);
    }

    @KeepForSdk
    public long a() {
        return this.f12733a.a();
    }

    @KeepForSdk
    public void a(@NonNull @Size(min = 1) String str) {
        this.f12733a.a(str);
    }

    @KeepForSdk
    public void a(Bundle bundle) {
        this.f12733a.a(bundle, false);
    }

    @KeepForSdk
    public void a(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.f12733a.a(activity, str, str2);
    }
}
