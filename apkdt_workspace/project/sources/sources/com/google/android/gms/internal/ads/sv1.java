package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class sv1 extends pv1<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public sv1(int i2, String str, String str2) {
        super(i2, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ String a(Bundle bundle) {
        String valueOf = String.valueOf(a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(a());
            return bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
        }
        return c();
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ void a(SharedPreferences.Editor editor, String str) {
        editor.putString(a(), str);
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ String a(JSONObject jSONObject) {
        return jSONObject.optString(a(), c());
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ String a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(a(), c());
    }
}
