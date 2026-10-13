package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class dh0 implements by {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ vs0 f6221a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ns0 f6222b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bd0 f6223c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ bh0 f6224d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dh0(bh0 bh0Var, vs0 vs0Var, ns0 ns0Var, bd0 bd0Var) {
        this.f6224d = bh0Var;
        this.f6221a = vs0Var;
        this.f6222b = ns0Var;
        this.f6223c = bd0Var;
    }

    @Override // com.google.android.gms.internal.ads.by
    public final void a(int i2) {
        String valueOf = String.valueOf(this.f6223c.f5764a);
        qd.d(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }

    @Override // com.google.android.gms.internal.ads.by
    public final void onInitializationSucceeded() {
        Executor executor;
        executor = this.f6224d.f5775b;
        final vs0 vs0Var = this.f6221a;
        final ns0 ns0Var = this.f6222b;
        final bd0 bd0Var = this.f6223c;
        executor.execute(new Runnable(this, vs0Var, ns0Var, bd0Var) { // from class: com.google.android.gms.internal.ads.ch0

            /* renamed from: e, reason: collision with root package name */
            private final dh0 f6011e;

            /* renamed from: f, reason: collision with root package name */
            private final vs0 f6012f;

            /* renamed from: g, reason: collision with root package name */
            private final ns0 f6013g;

            /* renamed from: h, reason: collision with root package name */
            private final bd0 f6014h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6011e = this;
                this.f6012f = vs0Var;
                this.f6013g = ns0Var;
                this.f6014h = bd0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                dh0 dh0Var = this.f6011e;
                vs0 vs0Var2 = this.f6012f;
                ns0 ns0Var2 = this.f6013g;
                bd0 bd0Var2 = this.f6014h;
                bh0 bh0Var = dh0Var.f6224d;
                bh0.c(vs0Var2, ns0Var2, bd0Var2);
            }
        });
    }
}
