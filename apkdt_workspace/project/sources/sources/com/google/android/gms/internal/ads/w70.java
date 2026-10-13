package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w70 implements fv0 {

    /* renamed from: e, reason: collision with root package name */
    private Map<wu0, y70> f10038e;

    /* renamed from: f, reason: collision with root package name */
    private ks1 f10039f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w70(ks1 ks1Var, Map<wu0, y70> map) {
        this.f10038e = map;
        this.f10039f = ks1Var;
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str, Throwable th) {
        if (this.f10038e.containsKey(wu0Var)) {
            this.f10039f.a(this.f10038e.get(wu0Var).f10494c);
        }
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void b(wu0 wu0Var, String str) {
        if (this.f10038e.containsKey(wu0Var)) {
            this.f10039f.a(this.f10038e.get(wu0Var).f10492a);
        }
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void c(wu0 wu0Var, String str) {
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str) {
        if (this.f10038e.containsKey(wu0Var)) {
            this.f10039f.a(this.f10038e.get(wu0Var).f10493b);
        }
    }
}
