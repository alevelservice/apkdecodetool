package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y0 implements x0 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ he f10454a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(v0 v0Var, he heVar) {
        this.f10454a = heVar;
    }

    @Override // com.google.android.gms.internal.ads.x0
    public final void a(JSONObject jSONObject) {
        this.f10454a.b(jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.x0
    public final void onFailure(@Nullable String str) {
        this.f10454a.a(new u3(str));
    }
}
