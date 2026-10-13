package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q4 implements x0 {

    /* renamed from: a, reason: collision with root package name */
    private final he<O> f8841a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ o4 f8842b;

    public q4(o4 o4Var, he<O> heVar) {
        this.f8842b = o4Var;
        this.f8841a = heVar;
    }

    @Override // com.google.android.gms.internal.ads.x0
    public final void a(JSONObject jSONObject) {
        v3 v3Var;
        try {
            he<O> heVar = this.f8841a;
            v3Var = this.f8842b.f8465a;
            heVar.b(v3Var.a(jSONObject));
        } catch (IllegalStateException unused) {
        } catch (JSONException e2) {
            this.f8841a.a(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.x0
    public final void onFailure(@Nullable String str) {
        try {
            if (str == null) {
                this.f8841a.a(new u3());
            } else {
                this.f8841a.a(new u3(str));
            }
        } catch (IllegalStateException unused) {
        }
    }
}
