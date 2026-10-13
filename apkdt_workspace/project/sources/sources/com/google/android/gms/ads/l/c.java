package com.google.android.gms.ads.l;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.h;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private SharedPreferences f4632a;

    public c(Context context) {
        try {
            Context b2 = h.b(context);
            this.f4632a = b2 == null ? null : b2.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable unused) {
            this.f4632a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float a(String str, float f2) {
        try {
            if (this.f4632a == null) {
                return 0.0f;
            }
            return this.f4632a.getFloat(str, 0.0f);
        } catch (Throwable unused) {
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(String str, String str2) {
        try {
            return this.f4632a == null ? str2 : this.f4632a.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public final boolean a(String str, boolean z) {
        try {
            if (this.f4632a == null) {
                return false;
            }
            return this.f4632a.getBoolean(str, false);
        } catch (Throwable unused) {
            return false;
        }
    }
}
