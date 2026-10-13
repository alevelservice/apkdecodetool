package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n3 implements le<h2> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m3 f8267a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n3(m3 m3Var) {
        this.f8267a = m3Var;
    }

    @Override // com.google.android.gms.internal.ads.le
    public final /* synthetic */ void b(h2 h2Var) {
        final h2 h2Var2 = h2Var;
        yd.f10543d.execute(new Runnable(this, h2Var2) { // from class: com.google.android.gms.internal.ads.q3

            /* renamed from: e, reason: collision with root package name */
            private final n3 f8837e;

            /* renamed from: f, reason: collision with root package name */
            private final h2 f8838f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8837e = this;
                this.f8838f = h2Var2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                dc dcVar;
                n3 n3Var = this.f8837e;
                h2 h2Var3 = this.f8838f;
                dcVar = n3Var.f8267a.f8008d;
                dcVar.b(h2Var3);
                h2Var3.destroy();
            }
        });
    }
}
