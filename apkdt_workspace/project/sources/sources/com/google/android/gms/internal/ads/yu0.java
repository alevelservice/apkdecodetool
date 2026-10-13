package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class yu0 extends cw<fv0> implements xu0<wu0> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public yu0(Set<ox<fv0>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.xu0
    public final void a(final hu0<wu0, ?> hu0Var, final Throwable th) {
        a(new ew(hu0Var, th) { // from class: com.google.android.gms.internal.ads.dv0

            /* renamed from: a, reason: collision with root package name */
            private final hu0 f6318a;

            /* renamed from: b, reason: collision with root package name */
            private final Throwable f6319b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6318a = hu0Var;
                this.f6319b = th;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                hu0 hu0Var2 = this.f6318a;
                ((fv0) obj).a((wu0) hu0Var2.a(), hu0Var2.b(), this.f6319b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.xu0
    public final void b(final hu0<wu0, ?> hu0Var) {
        a(new ew(hu0Var) { // from class: com.google.android.gms.internal.ads.av0

            /* renamed from: a, reason: collision with root package name */
            private final hu0 f5664a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5664a = hu0Var;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                hu0 hu0Var2 = this.f5664a;
                ((fv0) obj).b((wu0) hu0Var2.a(), hu0Var2.b());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.xu0
    public final void c(final hu0<wu0, ?> hu0Var) {
        a(new ew(hu0Var) { // from class: com.google.android.gms.internal.ads.bv0

            /* renamed from: a, reason: collision with root package name */
            private final hu0 f5874a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5874a = hu0Var;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                hu0 hu0Var2 = this.f5874a;
                ((fv0) obj).c((wu0) hu0Var2.a(), hu0Var2.b());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.xu0
    public final void a(final hu0<wu0, ?> hu0Var) {
        a(new ew(hu0Var) { // from class: com.google.android.gms.internal.ads.cv0

            /* renamed from: a, reason: collision with root package name */
            private final hu0 f6122a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6122a = hu0Var;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                hu0 hu0Var2 = this.f6122a;
                ((fv0) obj).a((wu0) hu0Var2.a(), hu0Var2.b());
            }
        });
    }
}
