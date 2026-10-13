package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class tv1 extends pv1<Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public tv1(int i2, String str, Float f2) {
        super(i2, str, f2, null);
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Float a(Bundle bundle) {
        String valueOf = String.valueOf(a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(a());
            return Float.valueOf(bundle.getFloat(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return c();
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Float f2) {
        editor.putFloat(a(), f2.floatValue());
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Float a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(a(), c().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Float a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(a(), c().floatValue()));
    }
}
