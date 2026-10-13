package com.mapbox.mapboxsdk;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mapbox.android.accounts.v1.AccountsConstants;
import com.mapbox.android.accounts.v1.MapboxAccounts;
import com.mapbox.mapboxsdk.log.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountsManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private SharedPreferences f15676a;

    /* renamed from: b, reason: collision with root package name */
    private String f15677b;

    /* renamed from: c, reason: collision with root package name */
    private String f15678c;

    /* renamed from: d, reason: collision with root package name */
    private long f15679d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f15680e = h();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        f();
    }

    static boolean a(long j2, long j3) {
        return j2 - j3 > 3600000;
    }

    private long b(String str) {
        long c2 = c();
        SharedPreferences.Editor edit = d().edit();
        edit.putLong("com.mapbox.mapboxsdk.accounts.timestamp", c2);
        edit.putString(AccountsConstants.KEY_PREFERENCE_MAPS_SKU_TOKEN, str);
        edit.apply();
        return c2;
    }

    static long c() {
        return System.currentTimeMillis();
    }

    @NonNull
    private SharedPreferences d() {
        if (this.f15676a == null) {
            this.f15676a = Mapbox.getApplicationContext().getSharedPreferences(AccountsConstants.MAPBOX_SHARED_PREFERENCES, 0);
        }
        return this.f15676a;
    }

    private synchronized String e() {
        if (!TextUtils.isEmpty(this.f15677b)) {
            return this.f15677b;
        }
        this.f15677b = d().getString("com.mapbox.mapboxsdk.accounts.userid", "");
        if (TextUtils.isEmpty(this.f15677b)) {
            this.f15677b = b();
            SharedPreferences.Editor edit = d().edit();
            edit.putString("com.mapbox.mapboxsdk.accounts.userid", this.f15677b);
            if (!edit.commit()) {
                Logger.e("Mbgl-AccountsManager", "Failed to save user id.");
            }
        }
        return this.f15677b;
    }

    private void f() {
        j();
        if (this.f15680e) {
            k();
        }
    }

    private boolean g() {
        return a(c(), this.f15679d);
    }

    private boolean h() {
        try {
            ApplicationInfo i2 = i();
            if (i2.metaData != null) {
                return i2.metaData.getBoolean(AccountsConstants.KEY_META_DATA_MANAGE_SKU, true);
            }
            return true;
        } catch (Exception e2) {
            Logger.e("Mbgl-AccountsManager", "Failed to read the package metadata: ", e2);
            return true;
        }
    }

    private ApplicationInfo i() {
        return Mapbox.getApplicationContext().getPackageManager().getApplicationInfo(Mapbox.getApplicationContext().getPackageName(), 128);
    }

    private void j() {
        SharedPreferences d2 = d();
        this.f15678c = d2.getString(AccountsConstants.KEY_PREFERENCE_MAPS_SKU_TOKEN, "");
        this.f15679d = d2.getLong("com.mapbox.mapboxsdk.accounts.timestamp", 0L);
    }

    private void k() {
        if (TextUtils.isEmpty(this.f15678c) || this.f15679d == 0) {
            this.f15678c = a(e());
            this.f15679d = b(this.f15678c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        if (this.f15680e) {
            if (g()) {
                this.f15678c = a(e());
                this.f15679d = b(this.f15678c);
            }
        } else {
            this.f15678c = d().getString(AccountsConstants.KEY_PREFERENCE_MAPS_SKU_TOKEN, "");
        }
        return this.f15678c;
    }

    @NonNull
    private String b() {
        return MapboxAccounts.obtainEndUserId();
    }

    @NonNull
    private String a(String str) {
        return MapboxAccounts.obtainMapsSkuUserToken(str);
    }
}
