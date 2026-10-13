package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u00 implements oe1<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final s00 f9663a;

    public u00(s00 s00Var) {
        this.f9663a = s00Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        JSONObject a2 = this.f9663a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
