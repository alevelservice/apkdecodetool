package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class h4<I, O> implements t3<I, O> {

    /* renamed from: a, reason: collision with root package name */
    private final v3<O> f6993a;

    /* renamed from: b, reason: collision with root package name */
    private final z3<I> f6994b;

    /* renamed from: c, reason: collision with root package name */
    private final q2 f6995c;

    /* renamed from: d, reason: collision with root package name */
    private final String f6996d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4(q2 q2Var, String str, z3<I> z3Var, v3<O> v3Var) {
        this.f6995c = q2Var;
        this.f6996d = str;
        this.f6994b = z3Var;
        this.f6993a = v3Var;
    }

    @Override // com.google.android.gms.internal.ads.t3
    public final qz0<O> a(I i2) {
        he heVar = new he();
        i3 b2 = this.f6995c.b((t11) null);
        b2.a(new g4(this, b2, i2, heVar), new j4(this, heVar, b2));
        return heVar;
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final qz0<O> b(@Nullable I i2) {
        return a((h4<I, O>) i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(i3 i3Var, p3 p3Var, I i2, he<O> heVar) {
        try {
            com.google.android.gms.ads.internal.n.c();
            String b2 = wa.b();
            b0.o.a(b2, new i4(this, i3Var, heVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", b2);
            jSONObject.put("args", this.f6994b.d(i2));
            p3Var.zzb(this.f6996d, jSONObject);
        } catch (Exception e2) {
            try {
                heVar.a(e2);
                qd.b("Unable to invokeJavascript", e2);
            } finally {
                i3Var.c();
            }
        }
    }
}
