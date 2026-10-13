package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class rv1 extends pv1<Integer> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public rv1(int i2, String str, Integer num) {
        super(i2, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Integer a(Bundle bundle) {
        String valueOf = String.valueOf(a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(a());
            return Integer.valueOf(bundle.getInt(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return c();
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(a(), num.intValue());
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Integer a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(a(), c().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Integer a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(a(), c().intValue()));
    }
}
