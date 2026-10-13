package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ao1 implements un1 {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f5630a;

    /* renamed from: b, reason: collision with root package name */
    private final int f5631b;

    /* renamed from: c, reason: collision with root package name */
    private final vn1[] f5632c;

    /* renamed from: d, reason: collision with root package name */
    private int f5633d;

    /* renamed from: e, reason: collision with root package name */
    private int f5634e;

    /* renamed from: f, reason: collision with root package name */
    private int f5635f;

    /* renamed from: g, reason: collision with root package name */
    private vn1[] f5636g;

    public ao1(boolean z, int i2) {
        this(true, AntDetector.ACTION_ID_SAMPLE, 0);
    }

    public final synchronized void a(int i2) {
        boolean z = i2 < this.f5633d;
        this.f5633d = i2;
        if (z) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.un1
    public final int b() {
        return this.f5631b;
    }

    public final synchronized void c() {
        if (this.f5630a) {
            a(0);
        }
    }

    public final synchronized int d() {
        return this.f5634e * this.f5631b;
    }

    @Override // com.google.android.gms.internal.ads.un1
    public final synchronized void zzm() {
        int max = Math.max(0, cp1.a(this.f5633d, this.f5631b) - this.f5634e);
        if (max >= this.f5635f) {
            return;
        }
        Arrays.fill(this.f5636g, max, this.f5635f, (Object) null);
        this.f5635f = max;
    }

    private ao1(boolean z, int i2, int i3) {
        no1.a(true);
        no1.a(true);
        this.f5630a = true;
        this.f5631b = AntDetector.ACTION_ID_SAMPLE;
        this.f5635f = 0;
        this.f5636g = new vn1[100];
        this.f5632c = new vn1[1];
    }

    @Override // com.google.android.gms.internal.ads.un1
    public final synchronized vn1 a() {
        vn1 vn1Var;
        this.f5634e++;
        if (this.f5635f > 0) {
            vn1[] vn1VarArr = this.f5636g;
            int i2 = this.f5635f - 1;
            this.f5635f = i2;
            vn1Var = vn1VarArr[i2];
            this.f5636g[this.f5635f] = null;
        } else {
            vn1Var = new vn1(new byte[this.f5631b], 0);
        }
        return vn1Var;
    }

    @Override // com.google.android.gms.internal.ads.un1
    public final synchronized void a(vn1 vn1Var) {
        this.f5632c[0] = vn1Var;
        a(this.f5632c);
    }

    @Override // com.google.android.gms.internal.ads.un1
    public final synchronized void a(vn1[] vn1VarArr) {
        boolean z;
        if (this.f5635f + vn1VarArr.length >= this.f5636g.length) {
            this.f5636g = (vn1[]) Arrays.copyOf(this.f5636g, Math.max(this.f5636g.length << 1, this.f5635f + vn1VarArr.length));
        }
        for (vn1 vn1Var : vn1VarArr) {
            if (vn1Var.f9958a != null && vn1Var.f9958a.length != this.f5631b) {
                z = false;
                no1.a(z);
                vn1[] vn1VarArr2 = this.f5636g;
                int i2 = this.f5635f;
                this.f5635f = i2 + 1;
                vn1VarArr2[i2] = vn1Var;
            }
            z = true;
            no1.a(z);
            vn1[] vn1VarArr22 = this.f5636g;
            int i22 = this.f5635f;
            this.f5635f = i22 + 1;
            vn1VarArr22[i22] = vn1Var;
        }
        this.f5634e -= vn1VarArr.length;
        notifyAll();
    }
}
