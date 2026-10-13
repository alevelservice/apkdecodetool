package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class dd implements Callable<String> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f6201e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ Context f6202f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dd(ad adVar, Context context, Context context2) {
        this.f6201e = context;
        this.f6202f = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f6201e != null) {
            na.e("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f6201e.getSharedPreferences("admob_user_agent", 0);
        } else {
            na.e("Attempting to read user agent from local cache.");
            sharedPreferences = this.f6202f.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            na.e("Reading user agent from WebSettings");
            string = WebSettings.getDefaultUserAgent(this.f6202f);
            if (z) {
                sharedPreferences.edit().putString("user_agent", string).apply();
                na.e("Persisting user agent.");
            }
        }
        return string;
    }
}
