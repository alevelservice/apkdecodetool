package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mg implements yg1, jm1, ko1<wn1>, np1 {

    @VisibleForTesting
    private static int q;

    @VisibleForTesting
    private static int r;

    /* renamed from: e, reason: collision with root package name */
    private final Context f8111e;

    /* renamed from: g, reason: collision with root package name */
    private final ph1 f8113g;

    /* renamed from: j, reason: collision with root package name */
    private final qf f8116j;

    /* renamed from: k, reason: collision with root package name */
    private zg1 f8117k;

    /* renamed from: l, reason: collision with root package name */
    private ByteBuffer f8118l;
    private boolean m;
    private ug n;
    private int o;
    private Set<WeakReference<jg>> p = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    private final ng f8112f = new ng();

    /* renamed from: h, reason: collision with root package name */
    private final ph1 f8114h = new ui1(ml1.f8186a);

    /* renamed from: i, reason: collision with root package name */
    private final jn1 f8115i = new in1();

    public mg(Context context, qf qfVar) {
        this.f8111e = context;
        this.f8116j = qfVar;
        this.f8113g = new hp1(this.f8111e, ml1.f8186a, 0L, wa.f10063h, this, -1);
        if (na.a()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            na.e(sb.toString());
        }
        q++;
        this.f8117k = dh1.a(new ph1[]{this.f8114h, this.f8113g}, this.f8115i, this.f8112f);
        this.f8117k.b(this);
    }

    public static int f() {
        return q;
    }

    public static int g() {
        return r;
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void a(int i2, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void a(Surface surface) {
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a(bn1 bn1Var, qn1 qn1Var) {
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void a(fj1 fj1Var) {
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a(qh1 qh1Var) {
    }

    public final void a(ug ugVar) {
        this.n = ugVar;
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a(vh1 vh1Var, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void a(zzgq zzgqVar) {
    }

    @Override // com.google.android.gms.internal.ads.ko1
    public final /* bridge */ /* synthetic */ void a(wn1 wn1Var) {
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void a(String str, long j2, long j3) {
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a(boolean z) {
    }

    public final long b() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void b(fj1 fj1Var) {
    }

    public final void c() {
        zg1 zg1Var = this.f8117k;
        if (zg1Var != null) {
            zg1Var.a(this);
            this.f8117k.a();
            this.f8117k = null;
            r--;
        }
    }

    public final zg1 d() {
        return this.f8117k;
    }

    public final ng e() {
        return this.f8112f;
    }

    public final void finalize() {
        q--;
        if (na.a()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            na.e(sb.toString());
        }
    }

    public final void a(Uri[] uriArr, String str) {
        a(uriArr, str, ByteBuffer.allocate(0), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        if (this.f8117k == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f8117k.e(); i2++) {
            this.f8115i.a(i2, !z);
        }
    }

    public final void a(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        km1 pm1Var;
        if (this.f8117k == null) {
            return;
        }
        this.f8118l = byteBuffer;
        this.m = z;
        if (uriArr.length == 1) {
            pm1Var = a(uriArr[0], str);
        } else {
            km1[] km1VarArr = new km1[uriArr.length];
            for (int i2 = 0; i2 < uriArr.length; i2++) {
                km1VarArr[i2] = a(uriArr[i2], str);
            }
            pm1Var = new pm1(km1VarArr);
        }
        this.f8117k.a(pm1Var);
        r++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ wn1 b(String str) {
        mg mgVar = this.f8116j.f8889j ? null : this;
        qf qfVar = this.f8116j;
        jg jgVar = new jg(str, mgVar, qfVar.f8883d, qfVar.f8885f, qfVar.f8888i);
        this.p.add(new WeakReference<>(jgVar));
        return jgVar;
    }

    @Override // com.google.android.gms.internal.ads.jm1
    public final void a(IOException iOException) {
        ug ugVar = this.n;
        if (ugVar != null) {
            ugVar.zza("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.np1
    public final void a(int i2, int i3, int i4, float f2) {
        ug ugVar = this.n;
        if (ugVar != null) {
            ugVar.zzm(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a(boolean z, int i2) {
        ug ugVar = this.n;
        if (ugVar != null) {
            ugVar.zzcy(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.yg1
    public final void a(wg1 wg1Var) {
        ug ugVar = this.n;
        if (ugVar != null) {
            ugVar.zza("onPlayerError", wg1Var);
        }
    }

    public final void a(int i2) {
        Iterator<WeakReference<jg>> it = this.p.iterator();
        while (it.hasNext()) {
            jg jgVar = it.next().get();
            if (jgVar != null) {
                jgVar.a(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Surface surface, boolean z) {
        if (this.f8117k == null) {
            return;
        }
        ah1 ah1Var = new ah1(this.f8113g, 1, surface);
        if (z) {
            this.f8117k.b(ah1Var);
        } else {
            this.f8117k.a(ah1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f2, boolean z) {
        if (this.f8117k == null) {
            return;
        }
        ah1 ah1Var = new ah1(this.f8114h, 2, Float.valueOf(f2));
        if (z) {
            this.f8117k.b(ah1Var);
        } else {
            this.f8117k.a(ah1Var);
        }
    }

    @VisibleForTesting
    private final km1 a(Uri uri, final String str) {
        final zn1 zn1Var;
        zn1 zn1Var2;
        if (this.m && this.f8118l.limit() > 0) {
            final byte[] bArr = new byte[this.f8118l.limit()];
            this.f8118l.get(bArr);
            zn1Var2 = new zn1(bArr) { // from class: com.google.android.gms.internal.ads.pg

                /* renamed from: a, reason: collision with root package name */
                private final byte[] f8693a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8693a = bArr;
                }

                @Override // com.google.android.gms.internal.ads.zn1
                public final wn1 a() {
                    return new xn1(this.f8693a);
                }
            };
        } else {
            if (this.f8116j.f8888i > 0) {
                zn1Var = new zn1(this, str) { // from class: com.google.android.gms.internal.ads.og

                    /* renamed from: a, reason: collision with root package name */
                    private final mg f8521a;

                    /* renamed from: b, reason: collision with root package name */
                    private final String f8522b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8521a = this;
                        this.f8522b = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zn1
                    public final wn1 a() {
                        return this.f8521a.b(this.f8522b);
                    }
                };
            } else {
                zn1Var = new zn1(this, str) { // from class: com.google.android.gms.internal.ads.rg

                    /* renamed from: a, reason: collision with root package name */
                    private final mg f9125a;

                    /* renamed from: b, reason: collision with root package name */
                    private final String f9126b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f9125a = this;
                        this.f9126b = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zn1
                    public final wn1 a() {
                        return this.f9125a.a(this.f9126b);
                    }
                };
            }
            final zn1 zn1Var3 = this.f8116j.f8889j ? new zn1(this, zn1Var) { // from class: com.google.android.gms.internal.ads.qg

                /* renamed from: a, reason: collision with root package name */
                private final mg f8893a;

                /* renamed from: b, reason: collision with root package name */
                private final zn1 f8894b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8893a = this;
                    this.f8894b = zn1Var;
                }

                @Override // com.google.android.gms.internal.ads.zn1
                public final wn1 a() {
                    return this.f8893a.a(this.f8894b);
                }
            } : zn1Var;
            if (this.f8118l.limit() > 0) {
                final byte[] bArr2 = new byte[this.f8118l.limit()];
                this.f8118l.get(bArr2);
                zn1Var3 = new zn1(zn1Var3, bArr2) { // from class: com.google.android.gms.internal.ads.tg

                    /* renamed from: a, reason: collision with root package name */
                    private final zn1 f9572a;

                    /* renamed from: b, reason: collision with root package name */
                    private final byte[] f9573b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f9572a = zn1Var3;
                        this.f9573b = bArr2;
                    }

                    @Override // com.google.android.gms.internal.ads.zn1
                    public final wn1 a() {
                        zn1 zn1Var4 = this.f9572a;
                        byte[] bArr3 = this.f9573b;
                        return new xg(new xn1(bArr3), bArr3.length, zn1Var4.a());
                    }
                };
            }
            zn1Var2 = zn1Var3;
        }
        uj1 uj1Var = sg.f9343a;
        qf qfVar = this.f8116j;
        return new gm1(uri, zn1Var2, uj1Var, qfVar.f8890k, wa.f10063h, this, null, qfVar.f8886g);
    }

    @Override // com.google.android.gms.internal.ads.ko1
    public final /* synthetic */ void a(wn1 wn1Var, int i2) {
        this.o += i2;
    }

    @Override // com.google.android.gms.internal.ads.ko1
    public final /* synthetic */ void a(wn1 wn1Var, bo1 bo1Var) {
        this.o = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ wn1 a(zn1 zn1Var) {
        return new lg(this.f8111e, zn1Var.a(), this, new kg(this) { // from class: com.google.android.gms.internal.ads.vg

            /* renamed from: a, reason: collision with root package name */
            private final mg f9910a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9910a = this;
            }

            @Override // com.google.android.gms.internal.ads.kg
            public final void zzb(boolean z, long j2) {
                this.f9910a.a(z, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(boolean z, long j2) {
        ug ugVar = this.n;
        if (ugVar != null) {
            ugVar.zzb(z, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ wn1 a(String str) {
        mg mgVar = this.f8116j.f8889j ? null : this;
        qf qfVar = this.f8116j;
        return new do1(str, null, mgVar, qfVar.f8883d, qfVar.f8885f, true, null);
    }
}
