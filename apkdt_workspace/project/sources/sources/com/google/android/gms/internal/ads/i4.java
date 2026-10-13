package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i4 implements x0 {

    /* renamed from: a, reason: collision with root package name */
    private final i3 f7220a;

    /* renamed from: b, reason: collision with root package name */
    private final he<O> f7221b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ h4 f7222c;

    public i4(h4 h4Var, i3 i3Var, he<O> heVar) {
        this.f7222c = h4Var;
        this.f7220a = i3Var;
        this.f7221b = heVar;
    }

    @Override // com.google.android.gms.internal.ads.x0
    public final void a(JSONObject jSONObject) {
        v3 v3Var;
        try {
            try {
                he<O> heVar = this.f7221b;
                v3Var = this.f7222c.f6993a;
                heVar.b(v3Var.a(jSONObject));
                this.f7220a.c();
            } catch (IllegalStateException unused) {
                this.f7220a.c();
            } catch (JSONException e2) {
                this.f7221b.a(e2);
                this.f7220a.c();
            }
        } catch (Throwable th) {
            this.f7220a.c();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.x0
    public final void onFailure(@Nullable String str) {
        try {
            if (str == null) {
                this.f7221b.a(new u3());
            } else {
                this.f7221b.a(new u3(str));
            }
        } catch (IllegalStateException unused) {
        } finally {
            this.f7220a.c();
        }
    }
}
