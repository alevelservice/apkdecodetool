package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e3 implements le<h2> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ m3 f6334a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ q2 f6335b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e3(q2 q2Var, m3 m3Var) {
        this.f6335b = q2Var;
        this.f6334a = m3Var;
    }

    @Override // com.google.android.gms.internal.ads.le
    public final /* synthetic */ void b(h2 h2Var) {
        Object obj;
        m3 m3Var;
        m3 m3Var2;
        m3 m3Var3;
        obj = this.f6335b.f8828a;
        synchronized (obj) {
            this.f6335b.f8835h = 0;
            m3Var = this.f6335b.f8834g;
            if (m3Var != null) {
                m3 m3Var4 = this.f6334a;
                m3Var2 = this.f6335b.f8834g;
                if (m3Var4 != m3Var2) {
                    na.e("New JS engine is loaded, marking previous one as destroyable.");
                    m3Var3 = this.f6335b.f8834g;
                    m3Var3.e();
                }
            }
            this.f6335b.f8834g = this.f6334a;
        }
    }
}
