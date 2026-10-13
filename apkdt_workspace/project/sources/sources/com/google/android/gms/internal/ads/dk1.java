package com.google.android.gms.internal.ads;

import java.util.Stack;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dk1 implements ek1 {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f6239a = new byte[8];

    /* renamed from: b, reason: collision with root package name */
    private final Stack<fk1> f6240b = new Stack<>();

    /* renamed from: c, reason: collision with root package name */
    private final nk1 f6241c = new nk1();

    /* renamed from: d, reason: collision with root package name */
    private hk1 f6242d;

    /* renamed from: e, reason: collision with root package name */
    private int f6243e;

    /* renamed from: f, reason: collision with root package name */
    private int f6244f;

    /* renamed from: g, reason: collision with root package name */
    private long f6245g;

    @Override // com.google.android.gms.internal.ads.ek1
    public final void a(hk1 hk1Var) {
        this.f6242d = hk1Var;
    }

    @Override // com.google.android.gms.internal.ads.ek1
    public final void a() {
        this.f6243e = 0;
        this.f6240b.clear();
        this.f6241c.a();
    }

    @Override // com.google.android.gms.internal.ads.ek1
    public final boolean a(sj1 sj1Var) {
        String str;
        double longBitsToDouble;
        int a2;
        int a3;
        long j2;
        int i2;
        no1.b(this.f6242d != null);
        while (true) {
            if (!this.f6240b.isEmpty()) {
                long c2 = sj1Var.c();
                j2 = this.f6240b.peek().f6658b;
                if (c2 >= j2) {
                    hk1 hk1Var = this.f6242d;
                    i2 = this.f6240b.pop().f6657a;
                    hk1Var.e(i2);
                    return true;
                }
            }
            if (this.f6243e == 0) {
                long a4 = this.f6241c.a(sj1Var, true, false, 4);
                if (a4 == -2) {
                    sj1Var.b();
                    while (true) {
                        sj1Var.b(this.f6239a, 0, 4);
                        a2 = nk1.a(this.f6239a[0]);
                        if (a2 != -1 && a2 <= 4) {
                            a3 = (int) nk1.a(this.f6239a, a2, false);
                            if (this.f6242d.d(a3)) {
                                break;
                            }
                        }
                        sj1Var.a(1);
                    }
                    sj1Var.a(a2);
                    a4 = a3;
                }
                if (a4 == -1) {
                    return false;
                }
                this.f6244f = (int) a4;
                this.f6243e = 1;
            }
            if (this.f6243e == 1) {
                this.f6245g = this.f6241c.a(sj1Var, false, true, 8);
                this.f6243e = 2;
            }
            int c3 = this.f6242d.c(this.f6244f);
            if (c3 != 0) {
                if (c3 == 1) {
                    long c4 = sj1Var.c();
                    this.f6240b.add(new fk1(this.f6244f, this.f6245g + c4));
                    this.f6242d.a(this.f6244f, c4, this.f6245g);
                    this.f6243e = 0;
                    return true;
                }
                if (c3 == 2) {
                    long j3 = this.f6245g;
                    if (j3 <= 8) {
                        this.f6242d.a(this.f6244f, a(sj1Var, (int) j3));
                        this.f6243e = 0;
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j3);
                    throw new nh1(sb.toString());
                }
                if (c3 == 3) {
                    long j4 = this.f6245g;
                    if (j4 <= 2147483647L) {
                        hk1 hk1Var2 = this.f6242d;
                        int i3 = this.f6244f;
                        int i4 = (int) j4;
                        if (i4 == 0) {
                            str = "";
                        } else {
                            byte[] bArr = new byte[i4];
                            sj1Var.readFully(bArr, 0, i4);
                            str = new String(bArr);
                        }
                        hk1Var2.a(i3, str);
                        this.f6243e = 0;
                        return true;
                    }
                    StringBuilder sb2 = new StringBuilder(41);
                    sb2.append("String element size: ");
                    sb2.append(j4);
                    throw new nh1(sb2.toString());
                }
                if (c3 == 4) {
                    this.f6242d.a(this.f6244f, (int) this.f6245g, sj1Var);
                    this.f6243e = 0;
                    return true;
                }
                if (c3 == 5) {
                    long j5 = this.f6245g;
                    if (j5 != 4 && j5 != 8) {
                        StringBuilder sb3 = new StringBuilder(40);
                        sb3.append("Invalid float size: ");
                        sb3.append(j5);
                        throw new nh1(sb3.toString());
                    }
                    hk1 hk1Var3 = this.f6242d;
                    int i5 = this.f6244f;
                    int i6 = (int) this.f6245g;
                    long a5 = a(sj1Var, i6);
                    if (i6 == 4) {
                        longBitsToDouble = Float.intBitsToFloat((int) a5);
                    } else {
                        longBitsToDouble = Double.longBitsToDouble(a5);
                    }
                    hk1Var3.a(i5, longBitsToDouble);
                    this.f6243e = 0;
                    return true;
                }
                StringBuilder sb4 = new StringBuilder(32);
                sb4.append("Invalid element type ");
                sb4.append(c3);
                throw new nh1(sb4.toString());
            }
            sj1Var.a((int) this.f6245g);
            this.f6243e = 0;
        }
    }

    private final long a(sj1 sj1Var, int i2) {
        sj1Var.readFully(this.f6239a, 0, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | (this.f6239a[i3] & 255);
        }
        return j2;
    }
}
