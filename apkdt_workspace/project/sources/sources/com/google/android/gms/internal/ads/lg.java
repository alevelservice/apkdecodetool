package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lg implements wn1 {

    /* renamed from: a, reason: collision with root package name */
    private InputStream f7878a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f7879b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f7880c;

    /* renamed from: d, reason: collision with root package name */
    private final wn1 f7881d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final ko1<wn1> f7882e;

    /* renamed from: f, reason: collision with root package name */
    private final kg f7883f;

    /* renamed from: g, reason: collision with root package name */
    private Uri f7884g;

    public lg(Context context, wn1 wn1Var, ko1<wn1> ko1Var, kg kgVar) {
        this.f7880c = context;
        this.f7881d = wn1Var;
        this.f7882e = ko1Var;
        this.f7883f = kgVar;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final long a(bo1 bo1Var) {
        Long l2;
        bo1 bo1Var2 = bo1Var;
        if (!this.f7879b) {
            this.f7879b = true;
            this.f7884g = bo1Var2.f5821a;
            ko1<wn1> ko1Var = this.f7882e;
            if (ko1Var != null) {
                ko1Var.a((ko1<wn1>) this, bo1Var2);
            }
            zzrl a2 = zzrl.a(bo1Var2.f5821a);
            if (!((Boolean) mu1.e().a(aw1.p2)).booleanValue()) {
                zzrg zzrgVar = null;
                if (a2 != null) {
                    a2.f11232l = bo1Var2.f5824d;
                    zzrgVar = com.google.android.gms.ads.internal.n.i().a(a2);
                }
                if (zzrgVar != null && zzrgVar.j()) {
                    this.f7878a = zzrgVar.k();
                    return -1L;
                }
            } else if (a2 != null) {
                a2.f11232l = bo1Var2.f5824d;
                if (a2.f11231k) {
                    l2 = (Long) mu1.e().a(aw1.r2);
                } else {
                    l2 = (Long) mu1.e().a(aw1.q2);
                }
                long longValue = l2.longValue();
                long c2 = com.google.android.gms.ads.internal.n.j().c();
                com.google.android.gms.ads.internal.n.w();
                Future<InputStream> a3 = hs1.a(this.f7880c, a2);
                try {
                    try {
                        this.f7878a = a3.get(longValue, TimeUnit.MILLISECONDS);
                        long c3 = com.google.android.gms.ads.internal.n.j().c() - c2;
                        this.f7883f.zzb(true, c3);
                        StringBuilder sb = new StringBuilder(44);
                        sb.append("Cache connection took ");
                        sb.append(c3);
                        sb.append("ms");
                        na.e(sb.toString());
                        return -1L;
                    } catch (InterruptedException unused) {
                        a3.cancel(true);
                        Thread.currentThread().interrupt();
                        long c4 = com.google.android.gms.ads.internal.n.j().c() - c2;
                        this.f7883f.zzb(false, c4);
                        StringBuilder sb2 = new StringBuilder(44);
                        sb2.append("Cache connection took ");
                        sb2.append(c4);
                        sb2.append("ms");
                        na.e(sb2.toString());
                    } catch (ExecutionException | TimeoutException unused2) {
                        a3.cancel(true);
                        long c5 = com.google.android.gms.ads.internal.n.j().c() - c2;
                        this.f7883f.zzb(false, c5);
                        StringBuilder sb3 = new StringBuilder(44);
                        sb3.append("Cache connection took ");
                        sb3.append(c5);
                        sb3.append("ms");
                        na.e(sb3.toString());
                    }
                } catch (Throwable th) {
                    long c6 = com.google.android.gms.ads.internal.n.j().c() - c2;
                    this.f7883f.zzb(false, c6);
                    StringBuilder sb4 = new StringBuilder(44);
                    sb4.append("Cache connection took ");
                    sb4.append(c6);
                    sb4.append("ms");
                    na.e(sb4.toString());
                    throw th;
                }
            }
            if (a2 != null) {
                bo1Var2 = new bo1(Uri.parse(a2.f11225e), bo1Var2.f5822b, bo1Var2.f5823c, bo1Var2.f5824d, bo1Var2.f5825e, bo1Var2.f5826f, bo1Var2.f5827g);
            }
            return this.f7881d.a(bo1Var2);
        }
        throw new IOException("Attempt to open an already open CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final void close() {
        if (this.f7879b) {
            this.f7879b = false;
            this.f7884g = null;
            InputStream inputStream = this.f7878a;
            if (inputStream != null) {
                com.google.android.gms.common.util.k.a(inputStream);
                this.f7878a = null;
            } else {
                this.f7881d.close();
            }
            ko1<wn1> ko1Var = this.f7882e;
            if (ko1Var != null) {
                ko1Var.a(this);
                return;
            }
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final Uri getUri() {
        return this.f7884g;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final int a(byte[] bArr, int i2, int i3) {
        int a2;
        if (this.f7879b) {
            InputStream inputStream = this.f7878a;
            if (inputStream != null) {
                a2 = inputStream.read(bArr, i2, i3);
            } else {
                a2 = this.f7881d.a(bArr, i2, i3);
            }
            ko1<wn1> ko1Var = this.f7882e;
            if (ko1Var != null) {
                ko1Var.a((ko1<wn1>) this, a2);
            }
            return a2;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }
}
