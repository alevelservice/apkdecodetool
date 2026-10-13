package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class o4<I, O> implements qy0<I, O> {

    /* renamed from: a, reason: collision with root package name */
    private final v3<O> f8465a;

    /* renamed from: b, reason: collision with root package name */
    private final z3<I> f8466b;

    /* renamed from: c, reason: collision with root package name */
    private final String f8467c;

    /* renamed from: d, reason: collision with root package name */
    private final qz0<p3> f8468d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o4(qz0<p3> qz0Var, String str, z3<I> z3Var, v3<O> v3Var) {
        this.f8468d = qz0Var;
        this.f8467c = str;
        this.f8466b = z3Var;
        this.f8465a = v3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(Object obj, p3 p3Var) {
        he heVar = new he();
        com.google.android.gms.ads.internal.n.c();
        String b2 = wa.b();
        b0.o.a(b2, new q4(this, heVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", b2);
        jSONObject.put("args", this.f8466b.d(obj));
        p3Var.zzb(this.f8467c, jSONObject);
        return heVar;
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final qz0<O> b(final I i2) {
        return gz0.a(this.f8468d, new qy0(this, i2) { // from class: com.google.android.gms.internal.ads.r4

            /* renamed from: a, reason: collision with root package name */
            private final o4 f9034a;

            /* renamed from: b, reason: collision with root package name */
            private final Object f9035b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9034a = this;
                this.f9035b = i2;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f9034a.a(this.f9035b, (p3) obj);
            }
        }, yd.f10544e);
    }
}
