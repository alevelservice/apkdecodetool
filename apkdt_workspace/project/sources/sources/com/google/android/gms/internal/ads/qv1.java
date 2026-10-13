package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class qv1 extends pv1<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public qv1(int i2, String str, Long l2) {
        super(i2, str, l2, null);
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Long a(Bundle bundle) {
        String valueOf = String.valueOf(a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(a());
            return Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return c();
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Long l2) {
        editor.putLong(a(), l2.longValue());
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Long a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(a(), c().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.pv1
    public final /* synthetic */ Long a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(a(), c().longValue()));
    }
}
