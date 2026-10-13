package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d3 implements je {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ m3 f6149a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ q2 f6150b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(q2 q2Var, m3 m3Var) {
        this.f6150b = q2Var;
        this.f6149a = m3Var;
    }

    @Override // com.google.android.gms.internal.ads.je
    public final void run() {
        Object obj;
        obj = this.f6150b.f8828a;
        synchronized (obj) {
            this.f6150b.f8835h = 1;
            na.e("Failed loading new engine. Marking new engine destroyable.");
            this.f6149a.e();
        }
    }
}
