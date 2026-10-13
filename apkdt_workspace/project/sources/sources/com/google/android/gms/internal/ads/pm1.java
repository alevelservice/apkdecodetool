package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pm1 implements km1 {

    /* renamed from: e, reason: collision with root package name */
    private final km1[] f8722e;

    /* renamed from: f, reason: collision with root package name */
    private final ArrayList<km1> f8723f;

    /* renamed from: h, reason: collision with root package name */
    private nm1 f8725h;

    /* renamed from: i, reason: collision with root package name */
    private vh1 f8726i;

    /* renamed from: j, reason: collision with root package name */
    private Object f8727j;

    /* renamed from: l, reason: collision with root package name */
    private rm1 f8729l;

    /* renamed from: g, reason: collision with root package name */
    private final wh1 f8724g = new wh1();

    /* renamed from: k, reason: collision with root package name */
    private int f8728k = -1;

    public pm1(km1... km1VarArr) {
        this.f8722e = km1VarArr;
        this.f8723f = new ArrayList<>(Arrays.asList(km1VarArr));
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void a(zg1 zg1Var, boolean z, nm1 nm1Var) {
        this.f8725h = nm1Var;
        int i2 = 0;
        while (true) {
            km1[] km1VarArr = this.f8722e;
            if (i2 >= km1VarArr.length) {
                return;
            }
            km1VarArr[i2].a(zg1Var, false, new om1(this, i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void b() {
        rm1 rm1Var = this.f8729l;
        if (rm1Var != null) {
            throw rm1Var;
        }
        for (km1 km1Var : this.f8722e) {
            km1Var.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final im1 a(int i2, un1 un1Var) {
        im1[] im1VarArr = new im1[this.f8722e.length];
        for (int i3 = 0; i3 < im1VarArr.length; i3++) {
            im1VarArr[i3] = this.f8722e[i3].a(i2, un1Var);
        }
        return new mm1(im1VarArr);
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void a(im1 im1Var) {
        mm1 mm1Var = (mm1) im1Var;
        int i2 = 0;
        while (true) {
            km1[] km1VarArr = this.f8722e;
            if (i2 >= km1VarArr.length) {
                return;
            }
            km1VarArr[i2].a(mm1Var.f8188e[i2]);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.km1
    public final void a() {
        for (km1 km1Var : this.f8722e) {
            km1Var.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2, vh1 vh1Var, Object obj) {
        rm1 rm1Var;
        if (this.f8729l == null) {
            int b2 = vh1Var.b();
            int i3 = 0;
            while (true) {
                if (i3 < b2) {
                    if (vh1Var.a(i3, this.f8724g, false).f10123e) {
                        rm1Var = new rm1(0);
                        break;
                    }
                    i3++;
                } else {
                    if (this.f8728k == -1) {
                        this.f8728k = vh1Var.c();
                    } else if (vh1Var.c() != this.f8728k) {
                        rm1Var = new rm1(1);
                    }
                    rm1Var = null;
                }
            }
            this.f8729l = rm1Var;
        }
        if (this.f8729l != null) {
            return;
        }
        this.f8723f.remove(this.f8722e[i2]);
        if (i2 == 0) {
            this.f8726i = vh1Var;
            this.f8727j = obj;
        }
        if (this.f8723f.isEmpty()) {
            this.f8725h.a(this.f8726i, this.f8727j);
        }
    }
}
