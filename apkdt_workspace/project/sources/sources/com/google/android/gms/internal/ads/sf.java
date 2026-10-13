package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sf {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9326a;

    /* renamed from: b, reason: collision with root package name */
    private final String f9327b;

    /* renamed from: c, reason: collision with root package name */
    private final zzawv f9328c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private final nw1 f9329d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final pw1 f9330e;

    /* renamed from: f, reason: collision with root package name */
    private final cc f9331f;

    /* renamed from: g, reason: collision with root package name */
    private final long[] f9332g;

    /* renamed from: h, reason: collision with root package name */
    private final String[] f9333h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f9334i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f9335j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f9336k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f9337l;
    private boolean m;
    private zzaya n;
    private boolean o;
    private boolean p;
    private long q;

    public sf(Context context, zzawv zzawvVar, String str, @Nullable pw1 pw1Var, @Nullable nw1 nw1Var) {
        hc hcVar = new hc();
        hcVar.a("min_1", Double.MIN_VALUE, 1.0d);
        hcVar.a("1_5", 1.0d, 5.0d);
        hcVar.a("5_10", 5.0d, 10.0d);
        hcVar.a("10_20", 10.0d, 20.0d);
        hcVar.a("20_30", 20.0d, 30.0d);
        hcVar.a("30_max", 30.0d, Double.MAX_VALUE);
        this.f9331f = hcVar.a();
        this.f9334i = false;
        this.f9335j = false;
        this.f9336k = false;
        this.f9337l = false;
        this.q = -1L;
        this.f9326a = context;
        this.f9328c = zzawvVar;
        this.f9327b = str;
        this.f9330e = pw1Var;
        this.f9329d = nw1Var;
        String str2 = (String) mu1.e().a(aw1.z);
        if (str2 == null) {
            this.f9333h = new String[0];
            this.f9332g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.f9333h = new String[split.length];
        this.f9332g = new long[split.length];
        for (int i2 = 0; i2 < split.length; i2++) {
            try {
                this.f9332g[i2] = Long.parseLong(split[i2]);
            } catch (NumberFormatException e2) {
                qd.c("Unable to parse frame hash target time number.", e2);
                this.f9332g[i2] = -1;
            }
        }
    }

    public final void a(zzaya zzayaVar) {
        kw1.a(this.f9330e, this.f9329d, "vpc2");
        this.f9334i = true;
        pw1 pw1Var = this.f9330e;
        if (pw1Var != null) {
            pw1Var.a("vpn", zzayaVar.zzwm());
        }
        this.n = zzayaVar;
    }

    public final void b() {
        if (!this.f9334i || this.f9335j) {
            return;
        }
        kw1.a(this.f9330e, this.f9329d, "vfr2");
        this.f9335j = true;
    }

    public final void c() {
        this.m = true;
        if (!this.f9335j || this.f9336k) {
            return;
        }
        kw1.a(this.f9330e, this.f9329d, "vfp2");
        this.f9336k = true;
    }

    public final void d() {
        this.m = false;
    }

    public final void b(zzaya zzayaVar) {
        if (this.f9336k && !this.f9337l) {
            if (na.a() && !this.f9337l) {
                na.e("VideoMetricsMixin first frame");
            }
            kw1.a(this.f9330e, this.f9329d, "vff2");
            this.f9337l = true;
        }
        long b2 = com.google.android.gms.ads.internal.n.j().b();
        if (this.m && this.p && this.q != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L);
            double d2 = b2 - this.q;
            Double.isNaN(nanos);
            Double.isNaN(d2);
            this.f9331f.a(nanos / d2);
        }
        this.p = this.m;
        this.q = b2;
        long longValue = ((Long) mu1.e().a(aw1.A)).longValue();
        long currentPosition = zzayaVar.getCurrentPosition();
        int i2 = 0;
        while (true) {
            String[] strArr = this.f9333h;
            if (i2 >= strArr.length) {
                return;
            }
            if (strArr[i2] == null && longValue > Math.abs(currentPosition - this.f9332g[i2])) {
                String[] strArr2 = this.f9333h;
                int i3 = 8;
                Bitmap bitmap = zzayaVar.getBitmap(8, 8);
                long j2 = 63;
                int i4 = 0;
                long j3 = 0;
                while (i4 < i3) {
                    long j4 = j2;
                    long j5 = j3;
                    int i5 = 0;
                    while (i5 < i3) {
                        int pixel = bitmap.getPixel(i5, i4);
                        j5 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j4);
                        i5++;
                        j4--;
                        i3 = 8;
                    }
                    i4++;
                    j3 = j5;
                    i3 = 8;
                    j2 = j4;
                }
                strArr2[i2] = String.format("%016X", Long.valueOf(j3));
                return;
            }
            i2++;
        }
    }

    public final void a() {
        if (!((Boolean) mu1.e().a(aw1.y)).booleanValue() || this.o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f9327b);
        bundle.putString("player", this.n.zzwm());
        for (ec ecVar : this.f9331f.a()) {
            String valueOf = String.valueOf(ecVar.f6391a);
            bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(ecVar.f6395e));
            String valueOf2 = String.valueOf(ecVar.f6391a);
            bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(ecVar.f6394d));
        }
        int i2 = 0;
        while (true) {
            long[] jArr = this.f9332g;
            if (i2 < jArr.length) {
                String str = this.f9333h[i2];
                if (str != null) {
                    String valueOf3 = String.valueOf(Long.valueOf(jArr[i2]));
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 3);
                    sb.append("fh_");
                    sb.append(valueOf3);
                    bundle.putString(sb.toString(), str);
                }
                i2++;
            } else {
                com.google.android.gms.ads.internal.n.c().a(this.f9326a, this.f9328c.f11000e, "gmob-apps", bundle, true);
                this.o = true;
                return;
            }
        }
    }
}
