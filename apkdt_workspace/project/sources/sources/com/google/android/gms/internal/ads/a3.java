package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a3 implements o0<p3> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ m3 f5503a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ h2 f5504b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ q2 f5505c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a3(q2 q2Var, m3 m3Var, h2 h2Var) {
        this.f5505c = q2Var;
        this.f5503a = m3Var;
        this.f5504b = h2Var;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(p3 p3Var, Map map) {
        Object obj;
        dc dcVar;
        obj = this.f5505c.f8828a;
        synchronized (obj) {
            if (this.f5503a.a() != -1 && this.f5503a.a() != 1) {
                this.f5505c.f8835h = 0;
                dcVar = this.f5505c.f8832e;
                dcVar.b(this.f5504b);
                this.f5503a.a((m3) this.f5504b);
                this.f5505c.f8834g = this.f5503a;
                na.e("Successfully loaded JS Engine.");
            }
        }
    }
}
