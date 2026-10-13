package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z60 implements oe1<ks1> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10703a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<String> f10704b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<zzawv> f10705c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Integer> f10706d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<String> f10707e;

    private z60(af1<Context> af1Var, af1<String> af1Var2, af1<zzawv> af1Var3, af1<Integer> af1Var4, af1<String> af1Var5) {
        this.f10703a = af1Var;
        this.f10704b = af1Var2;
        this.f10705c = af1Var3;
        this.f10706d = af1Var4;
        this.f10707e = af1Var5;
    }

    public static z60 a(af1<Context> af1Var, af1<String> af1Var2, af1<zzawv> af1Var3, af1<Integer> af1Var4, af1<String> af1Var5) {
        return new z60(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Context context = this.f10703a.get();
        final String str = this.f10704b.get();
        zzawv zzawvVar = this.f10705c.get();
        final int intValue = this.f10706d.get().intValue();
        final String str2 = this.f10707e.get();
        ks1 ks1Var = new ks1(new ps1(context));
        final rt1 rt1Var = new rt1();
        rt1Var.f9229c = Integer.valueOf(zzawvVar.f11001f);
        rt1Var.f9230d = Integer.valueOf(zzawvVar.f11002g);
        rt1Var.f9231e = Integer.valueOf(zzawvVar.f11003h ? 0 : 2);
        ks1Var.a(new js1(intValue, str, rt1Var, str2) { // from class: com.google.android.gms.internal.ads.a70

            /* renamed from: a, reason: collision with root package name */
            private final int f5529a;

            /* renamed from: b, reason: collision with root package name */
            private final String f5530b;

            /* renamed from: c, reason: collision with root package name */
            private final rt1 f5531c;

            /* renamed from: d, reason: collision with root package name */
            private final String f5532d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5529a = intValue;
                this.f5530b = str;
                this.f5531c = rt1Var;
                this.f5532d = str2;
            }

            @Override // com.google.android.gms.internal.ads.js1
            public final void a(pt1 pt1Var) {
                int i2 = this.f5529a;
                String str3 = this.f5530b;
                rt1 rt1Var2 = this.f5531c;
                String str4 = this.f5532d;
                pt1Var.f8784f.f8230c = Integer.valueOf(i2);
                nt1 nt1Var = pt1Var.f8783e;
                nt1Var.f8432c = str3;
                nt1Var.f8433d = rt1Var2;
                pt1Var.f8781c = str4;
            }
        });
        ue1.a(ks1Var, "Cannot return null from a non-@Nullable @Provides method");
        return ks1Var;
    }
}
