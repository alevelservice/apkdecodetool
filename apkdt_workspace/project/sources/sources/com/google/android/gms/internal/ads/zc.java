package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zc implements Callable<String> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f10725e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zc(ad adVar, Context context) {
        this.f10725e = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences = this.f10725e.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (!TextUtils.isEmpty(string)) {
            na.e("User agent is already initialized on Google Play Services.");
            return string;
        }
        na.e("User agent is not initialized on Google Play Services. Initializing.");
        com.google.android.gms.common.util.r.a(this.f10725e, sharedPreferences.edit().putString("user_agent", WebSettings.getDefaultUserAgent(this.f10725e)), "admob_user_agent");
        throw null;
    }
}
