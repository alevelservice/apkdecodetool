package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class jb0 implements fu0 {

    /* renamed from: a, reason: collision with root package name */
    static final fu0 f7450a = new jb0();

    private jb0() {
    }

    @Override // com.google.android.gms.internal.ads.fu0
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        na.e("Ad request signals:");
        na.e(jSONObject.toString(2));
        return jSONObject;
    }
}
