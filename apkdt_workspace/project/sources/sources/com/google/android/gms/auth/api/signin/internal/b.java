package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class b {

    /* renamed from: c, reason: collision with root package name */
    private static final Lock f4867c = new ReentrantLock();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("sLk")
    private static b f4868d;

    /* renamed from: a, reason: collision with root package name */
    private final Lock f4869a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("mLk")
    private final SharedPreferences f4870b;

    @VisibleForTesting
    private b(Context context) {
        this.f4870b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    public static b a(Context context) {
        com.google.android.gms.common.internal.m.a(context);
        f4867c.lock();
        try {
            if (f4868d == null) {
                f4868d = new b(context.getApplicationContext());
            }
            return f4868d;
        } finally {
            f4867c.unlock();
        }
    }

    @KeepForSdk
    @Nullable
    public GoogleSignInAccount b() {
        return a(c("defaultGoogleSignInAccount"));
    }

    @KeepForSdk
    @Nullable
    public GoogleSignInOptions c() {
        return b(c("defaultGoogleSignInAccount"));
    }

    @KeepForSdk
    @Nullable
    public String d() {
        return c("refreshToken");
    }

    @VisibleForTesting
    @Nullable
    private final GoogleSignInOptions b(String str) {
        String c2;
        if (!TextUtils.isEmpty(str) && (c2 = c(b("googleSignInOptions", str))) != null) {
            try {
                return GoogleSignInOptions.b(c2);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    @Nullable
    private final String c(String str) {
        this.f4869a.lock();
        try {
            return this.f4870b.getString(str, null);
        } finally {
            this.f4869a.unlock();
        }
    }

    private static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @KeepForSdk
    public void a(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        com.google.android.gms.common.internal.m.a(googleSignInAccount);
        com.google.android.gms.common.internal.m.a(googleSignInOptions);
        a("defaultGoogleSignInAccount", googleSignInAccount.u());
        com.google.android.gms.common.internal.m.a(googleSignInAccount);
        com.google.android.gms.common.internal.m.a(googleSignInOptions);
        String u = googleSignInAccount.u();
        a(b("googleSignInAccount", u), googleSignInAccount.v());
        a(b("googleSignInOptions", u), googleSignInOptions.s());
    }

    private final void a(String str, String str2) {
        this.f4869a.lock();
        try {
            this.f4870b.edit().putString(str, str2).apply();
        } finally {
            this.f4869a.unlock();
        }
    }

    @VisibleForTesting
    @Nullable
    private final GoogleSignInAccount a(String str) {
        String c2;
        if (!TextUtils.isEmpty(str) && (c2 = c(b("googleSignInAccount", str))) != null) {
            try {
                return GoogleSignInAccount.b(c2);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    @KeepForSdk
    public void a() {
        this.f4869a.lock();
        try {
            this.f4870b.edit().clear().apply();
        } finally {
            this.f4869a.unlock();
        }
    }
}
