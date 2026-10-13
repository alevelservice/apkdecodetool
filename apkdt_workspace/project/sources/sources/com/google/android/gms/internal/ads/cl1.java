package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Stack;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cl1 implements pj1, zj1 {
    private static final int p;

    /* renamed from: e, reason: collision with root package name */
    private int f6058e;

    /* renamed from: f, reason: collision with root package name */
    private int f6059f;

    /* renamed from: g, reason: collision with root package name */
    private long f6060g;

    /* renamed from: h, reason: collision with root package name */
    private int f6061h;

    /* renamed from: i, reason: collision with root package name */
    private vo1 f6062i;

    /* renamed from: j, reason: collision with root package name */
    private int f6063j;

    /* renamed from: k, reason: collision with root package name */
    private int f6064k;

    /* renamed from: l, reason: collision with root package name */
    private rj1 f6065l;
    private el1[] m;
    private long n;
    private boolean o;

    /* renamed from: c, reason: collision with root package name */
    private final vo1 f6056c = new vo1(16);

    /* renamed from: d, reason: collision with root package name */
    private final Stack<pk1> f6057d = new Stack<>();

    /* renamed from: a, reason: collision with root package name */
    private final vo1 f6054a = new vo1(to1.f9623a);

    /* renamed from: b, reason: collision with root package name */
    private final vo1 f6055b = new vo1(4);

    static {
        new bl1();
        p = cp1.d("qt  ");
    }

    private final void b(long j2) {
        zzkv zzkvVar;
        tj1 tj1Var;
        gl1 a2;
        while (!this.f6057d.isEmpty() && this.f6057d.peek().z0 == j2) {
            pk1 pop = this.f6057d.pop();
            if (pop.f8165a == mk1.w) {
                ArrayList arrayList = new ArrayList();
                zzkv zzkvVar2 = null;
                tj1 tj1Var2 = new tj1();
                ok1 d2 = pop.d(mk1.l0);
                if (d2 != null && (zzkvVar2 = rk1.a(d2, this.o)) != null) {
                    tj1Var2.a(zzkvVar2);
                }
                long j3 = Long.MAX_VALUE;
                long j4 = -9223372036854775807L;
                int i2 = 0;
                while (i2 < pop.B0.size()) {
                    pk1 pk1Var = pop.B0.get(i2);
                    if (pk1Var.f8165a == mk1.y && (a2 = rk1.a(pk1Var, pop.d(mk1.x), -9223372036854775807L, (zzil) null, this.o)) != null) {
                        il1 a3 = rk1.a(a2, pk1Var.e(mk1.z).e(mk1.A).e(mk1.B), tj1Var2);
                        if (a3.f7334a != 0) {
                            el1 el1Var = new el1(a2, a3, this.f6065l.a(i2, a2.f6916b));
                            zzgq a4 = a2.f6920f.a(a3.f7337d + 30);
                            if (a2.f6916b == 1) {
                                if (tj1Var2.a()) {
                                    a4 = a4.a(tj1Var2.f9594a, tj1Var2.f9595b);
                                }
                                if (zzkvVar2 != null) {
                                    a4 = a4.a(zzkvVar2);
                                }
                            }
                            el1Var.f6460c.a(a4);
                            zzkvVar = zzkvVar2;
                            tj1Var = tj1Var2;
                            j4 = Math.max(j4, a2.f6919e);
                            arrayList.add(el1Var);
                            long j5 = a3.f7335b[0];
                            if (j5 < j3) {
                                j3 = j5;
                            }
                            i2++;
                            tj1Var2 = tj1Var;
                            zzkvVar2 = zzkvVar;
                        }
                    }
                    zzkvVar = zzkvVar2;
                    tj1Var = tj1Var2;
                    i2++;
                    tj1Var2 = tj1Var;
                    zzkvVar2 = zzkvVar;
                }
                this.n = j4;
                this.m = (el1[]) arrayList.toArray(new el1[arrayList.size()]);
                this.f6065l.a();
                this.f6065l.a(this);
                this.f6057d.clear();
                this.f6058e = 2;
            } else if (!this.f6057d.isEmpty()) {
                this.f6057d.peek().B0.add(pop);
            }
        }
        if (this.f6058e != 2) {
            d();
        }
    }

    private final void d() {
        this.f6058e = 0;
        this.f6061h = 0;
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final boolean a(sj1 sj1Var) {
        return dl1.a(sj1Var);
    }

    @Override // com.google.android.gms.internal.ads.zj1
    public final boolean b() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zj1
    public final long c() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final void a(rj1 rj1Var) {
        this.f6065l = rj1Var;
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final void a(long j2, long j3) {
        this.f6057d.clear();
        this.f6061h = 0;
        this.f6063j = 0;
        this.f6064k = 0;
        if (j2 == 0) {
            d();
            return;
        }
        el1[] el1VarArr = this.m;
        if (el1VarArr != null) {
            for (el1 el1Var : el1VarArr) {
                il1 il1Var = el1Var.f6459b;
                int a2 = il1Var.a(j3);
                if (a2 == -1) {
                    a2 = il1Var.b(j3);
                }
                el1Var.f6461d = a2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x018e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x029d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0006 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.pj1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.gms.internal.ads.sj1 r24, com.google.android.gms.internal.ads.wj1 r25) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cl1.a(com.google.android.gms.internal.ads.sj1, com.google.android.gms.internal.ads.wj1):int");
    }

    @Override // com.google.android.gms.internal.ads.zj1
    public final long a(long j2) {
        long j3 = Long.MAX_VALUE;
        for (el1 el1Var : this.m) {
            il1 il1Var = el1Var.f6459b;
            int a2 = il1Var.a(j2);
            if (a2 == -1) {
                a2 = il1Var.b(j2);
            }
            long j4 = il1Var.f7335b[a2];
            if (j4 < j3) {
                j3 = j4;
            }
        }
        return j3;
    }
}
