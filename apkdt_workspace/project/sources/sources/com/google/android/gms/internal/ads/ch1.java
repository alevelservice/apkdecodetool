package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ch1 implements zg1 {

    /* renamed from: a, reason: collision with root package name */
    private final ph1[] f6015a;

    /* renamed from: b, reason: collision with root package name */
    private final pn1 f6016b;

    /* renamed from: c, reason: collision with root package name */
    private final qn1 f6017c;

    /* renamed from: d, reason: collision with root package name */
    private final Handler f6018d;

    /* renamed from: e, reason: collision with root package name */
    private final eh1 f6019e;

    /* renamed from: f, reason: collision with root package name */
    private final CopyOnWriteArraySet<yg1> f6020f;

    /* renamed from: g, reason: collision with root package name */
    private final wh1 f6021g;

    /* renamed from: h, reason: collision with root package name */
    private final xh1 f6022h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f6023i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f6024j;

    /* renamed from: k, reason: collision with root package name */
    private int f6025k;

    /* renamed from: l, reason: collision with root package name */
    private int f6026l;
    private int m;
    private boolean n;
    private vh1 o;
    private Object p;
    private bn1 q;
    private qn1 r;
    private qh1 s;
    private gh1 t;
    private int u;
    private long v;

    @SuppressLint({"HandlerLeak"})
    public ch1(ph1[] ph1VarArr, pn1 pn1Var, oh1 oh1Var) {
        String str = cp1.f6084e;
        StringBuilder sb = new StringBuilder("Init ExoPlayerLib/2.4.2 [".length() + 1 + String.valueOf(str).length());
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        sb.toString();
        no1.b(ph1VarArr.length > 0);
        no1.a(ph1VarArr);
        this.f6015a = ph1VarArr;
        no1.a(pn1Var);
        this.f6016b = pn1Var;
        this.f6024j = false;
        this.f6025k = 1;
        this.f6020f = new CopyOnWriteArraySet<>();
        this.f6017c = new qn1(new on1[ph1VarArr.length]);
        this.o = vh1.f9932a;
        this.f6021g = new wh1();
        this.f6022h = new xh1();
        this.q = bn1.f5807d;
        this.r = this.f6017c;
        this.s = qh1.f8911d;
        this.f6018d = new fh1(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.t = new gh1(0, 0L);
        this.f6019e = new eh1(ph1VarArr, pn1Var, oh1Var, this.f6024j, 0, this.f6018d, this.t, this);
    }

    private final int f() {
        if (!this.o.a() && this.f6026l <= 0) {
            this.o.a(this.t.f6875a, this.f6022h, false);
            return 0;
        }
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void a(yg1 yg1Var) {
        this.f6020f.remove(yg1Var);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void b(yg1 yg1Var) {
        this.f6020f.add(yg1Var);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final long c() {
        if (!this.o.a() && this.f6026l <= 0) {
            this.o.a(this.t.f6875a, this.f6022h, false);
            return this.f6022h.a() + xg1.a(this.t.f6878d);
        }
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final boolean d() {
        return this.f6024j;
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final int e() {
        return this.f6015a.length;
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final long getDuration() {
        if (this.o.a()) {
            return -9223372036854775807L;
        }
        return xg1.a(this.o.a(f(), this.f6021g, false).f10127i);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final int getPlaybackState() {
        return this.f6025k;
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void seekTo(long j2) {
        long b2;
        int f2 = f();
        if (f2 >= 0 && (this.o.a() || f2 < this.o.b())) {
            this.f6026l++;
            this.u = f2;
            if (!this.o.a()) {
                this.o.a(f2, this.f6021g, false);
                if (j2 == -9223372036854775807L) {
                    b2 = this.f6021g.f10126h;
                } else {
                    b2 = xg1.b(j2);
                }
                long j3 = this.f6021g.f10128j + b2;
                long j4 = this.o.a(0, this.f6022h, false).f10360b;
                if (j4 != -9223372036854775807L) {
                    int i2 = (j3 > j4 ? 1 : (j3 == j4 ? 0 : -1));
                }
            }
            if (j2 == -9223372036854775807L) {
                this.v = 0L;
                this.f6019e.a(this.o, f2, -9223372036854775807L);
                return;
            }
            this.v = j2;
            this.f6019e.a(this.o, f2, xg1.b(j2));
            Iterator<yg1> it = this.f6020f.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            return;
        }
        throw new lh1(this.o, f2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void stop() {
        this.f6019e.c();
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void a(km1 km1Var) {
        if (!this.o.a() || this.p != null) {
            this.o = vh1.f9932a;
            this.p = null;
            Iterator<yg1> it = this.f6020f.iterator();
            while (it.hasNext()) {
                it.next().a(this.o, this.p);
            }
        }
        if (this.f6023i) {
            this.f6023i = false;
            this.q = bn1.f5807d;
            this.r = this.f6017c;
            this.f6016b.a((Object) null);
            Iterator<yg1> it2 = this.f6020f.iterator();
            while (it2.hasNext()) {
                it2.next().a(this.q, this.r);
            }
        }
        this.m++;
        this.f6019e.a(km1Var, true);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void b(ah1... ah1VarArr) {
        this.f6019e.b(ah1VarArr);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final long b() {
        if (!this.o.a() && this.f6026l <= 0) {
            this.o.a(this.t.f6875a, this.f6022h, false);
            return this.f6022h.a() + xg1.a(this.t.f6877c);
        }
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void a(boolean z) {
        if (this.f6024j != z) {
            this.f6024j = z;
            this.f6019e.a(z);
            Iterator<yg1> it = this.f6020f.iterator();
            while (it.hasNext()) {
                it.next().a(z, this.f6025k);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void a() {
        this.f6019e.b();
        this.f6018d.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zg1
    public final void a(ah1... ah1VarArr) {
        this.f6019e.a(ah1VarArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Message message) {
        switch (message.what) {
            case 0:
                this.m--;
                return;
            case 1:
                this.f6025k = message.arg1;
                Iterator<yg1> it = this.f6020f.iterator();
                while (it.hasNext()) {
                    it.next().a(this.f6024j, this.f6025k);
                }
                return;
            case 2:
                this.n = message.arg1 != 0;
                Iterator<yg1> it2 = this.f6020f.iterator();
                while (it2.hasNext()) {
                    it2.next().a(this.n);
                }
                return;
            case 3:
                if (this.m == 0) {
                    rn1 rn1Var = (rn1) message.obj;
                    this.f6023i = true;
                    this.q = rn1Var.f9180a;
                    this.r = rn1Var.f9181b;
                    this.f6016b.a(rn1Var.f9182c);
                    Iterator<yg1> it3 = this.f6020f.iterator();
                    while (it3.hasNext()) {
                        it3.next().a(this.q, this.r);
                    }
                    return;
                }
                return;
            case 4:
                int i2 = this.f6026l - 1;
                this.f6026l = i2;
                if (i2 == 0) {
                    this.t = (gh1) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<yg1> it4 = this.f6020f.iterator();
                        while (it4.hasNext()) {
                            it4.next().a();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.f6026l == 0) {
                    this.t = (gh1) message.obj;
                    Iterator<yg1> it5 = this.f6020f.iterator();
                    while (it5.hasNext()) {
                        it5.next().a();
                    }
                    return;
                }
                return;
            case 6:
                ih1 ih1Var = (ih1) message.obj;
                this.f6026l -= ih1Var.f7301d;
                if (this.m == 0) {
                    this.o = ih1Var.f7298a;
                    this.p = ih1Var.f7299b;
                    this.t = ih1Var.f7300c;
                    Iterator<yg1> it6 = this.f6020f.iterator();
                    while (it6.hasNext()) {
                        it6.next().a(this.o, this.p);
                    }
                    return;
                }
                return;
            case 7:
                qh1 qh1Var = (qh1) message.obj;
                if (this.s.equals(qh1Var)) {
                    return;
                }
                this.s = qh1Var;
                Iterator<yg1> it7 = this.f6020f.iterator();
                while (it7.hasNext()) {
                    it7.next().a(qh1Var);
                }
                return;
            case 8:
                wg1 wg1Var = (wg1) message.obj;
                Iterator<yg1> it8 = this.f6020f.iterator();
                while (it8.hasNext()) {
                    it8.next().a(wg1Var);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
