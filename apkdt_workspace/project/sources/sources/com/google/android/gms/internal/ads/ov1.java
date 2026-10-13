package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class ov1 extends pv1<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ov1(int i2, String str, Boolean bool) {
        super(i2, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Boolean a(Bundle bundle) {
        String valueOf = String.valueOf(a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(a());
            return Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return c();
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(a(), bool.booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Boolean a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(a(), c().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Boolean a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(a(), c().booleanValue()));
    }
}
