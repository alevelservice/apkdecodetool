package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class um implements qy0<vs0, vs0> {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, ym> f9769a;

    public um(Map<String, ym> map) {
        this.f9769a = map;
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final /* synthetic */ qz0<vs0> b(vs0 vs0Var) {
        vs0 vs0Var2 = vs0Var;
        for (ss0 ss0Var : vs0Var2.f9986b.f9631c) {
            if (this.f9769a.containsKey(ss0Var.f9437a)) {
                this.f9769a.get(ss0Var.f9437a).a(ss0Var.f9438b);
            }
        }
        return gz0.a(vs0Var2);
    }
}
