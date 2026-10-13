package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l4 {

    /* renamed from: a, reason: collision with root package name */
    private q2 f7808a;

    /* renamed from: b, reason: collision with root package name */
    private qz0<p3> f7809b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l4(q2 q2Var) {
        this.f7808a = q2Var;
    }

    private final void a() {
        if (this.f7809b == null) {
            final he heVar = new he();
            this.f7809b = heVar;
            this.f7808a.b((t11) null).a(new le(heVar) { // from class: com.google.android.gms.internal.ads.k4

                /* renamed from: a, reason: collision with root package name */
                private final he f7609a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7609a = heVar;
                }

                @Override // com.google.android.gms.internal.ads.le
                public final void b(Object obj) {
                    this.f7609a.b((p3) obj);
                }
            }, new je(heVar) { // from class: com.google.android.gms.internal.ads.n4

                /* renamed from: a, reason: collision with root package name */
                private final he f8270a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8270a = heVar;
                }

                @Override // com.google.android.gms.internal.ads.je
                public final void run() {
                    this.f8270a.a(new u3("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final void b(final String str, final o0<? super p3> o0Var) {
        this.f7809b = gz0.a(this.f7809b, new pw0(str, o0Var) { // from class: com.google.android.gms.internal.ads.p4

            /* renamed from: a, reason: collision with root package name */
            private final String f8641a;

            /* renamed from: b, reason: collision with root package name */
            private final o0 f8642b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8641a = str;
                this.f8642b = o0Var;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                p3 p3Var = (p3) obj;
                p3Var.zzb(this.f8641a, this.f8642b);
                return p3Var;
            }
        }, yd.f10544e);
    }

    public final <I, O> o4<I, O> a(String str, z3<I> z3Var, v3<O> v3Var) {
        a();
        return new o4<>(this.f7809b, str, z3Var, v3Var);
    }

    public final void a(final String str, final o0<? super p3> o0Var) {
        a();
        this.f7809b = gz0.a(this.f7809b, new qy0(str, o0Var) { // from class: com.google.android.gms.internal.ads.m4

            /* renamed from: a, reason: collision with root package name */
            private final String f8019a;

            /* renamed from: b, reason: collision with root package name */
            private final o0 f8020b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8019a = str;
                this.f8020b = o0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                p3 p3Var = (p3) obj;
                p3Var.zza(this.f8019a, this.f8020b);
                return gz0.a(p3Var);
            }
        }, yd.f10544e);
    }
}
