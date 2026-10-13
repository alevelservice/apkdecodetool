package com.google.android.gms.ads;

import android.content.Context;
import com.alipay.zoloz.hardware.camera.CameraConstants;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.gd;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.zztw;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
public final class d {

    /* renamed from: e, reason: collision with root package name */
    public static final d f4470e = new d(320, 50, "320x50_mb");

    /* renamed from: f, reason: collision with root package name */
    public static final d f4471f = new d(468, 60, "468x60_as");

    /* renamed from: g, reason: collision with root package name */
    public static final d f4472g = new d(320, 100, "320x100_as");

    /* renamed from: h, reason: collision with root package name */
    public static final d f4473h = new d(728, 90, "728x90_as");

    /* renamed from: i, reason: collision with root package name */
    public static final d f4474i = new d(300, 250, "300x250_as");

    /* renamed from: j, reason: collision with root package name */
    public static final d f4475j = new d(BlobStatic.MONITOR_IMAGE_WIDTH, CameraConstants.CAMERA_MAX_WIDTH, "160x600_as");

    /* renamed from: k, reason: collision with root package name */
    public static final d f4476k = new d(-1, -2, "smart_banner");

    /* renamed from: l, reason: collision with root package name */
    public static final d f4477l = new d(-3, -4, "fluid");
    public static final d m = new d(0, 0, "invalid");
    public static final d n = new d(50, 50, "50x50_mb");
    public static final d o = new d(-3, 0, "search_v2");

    /* renamed from: a, reason: collision with root package name */
    private final int f4478a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4479b;

    /* renamed from: c, reason: collision with root package name */
    private final String f4480c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f4481d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(int r5, int r6) {
        /*
            r4 = this;
            r0 = -1
            if (r5 != r0) goto L6
            java.lang.String r0 = "FULL"
            goto La
        L6:
            java.lang.String r0 = java.lang.String.valueOf(r5)
        La:
            r1 = -2
            if (r6 != r1) goto L10
            java.lang.String r1 = "AUTO"
            goto L14
        L10:
            java.lang.String r1 = java.lang.String.valueOf(r6)
        L14:
            java.lang.String r2 = java.lang.String.valueOf(r0)
            int r2 = r2.length()
            int r2 = r2 + 4
            java.lang.String r3 = java.lang.String.valueOf(r1)
            int r3 = r3.length()
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            r3.append(r0)
            java.lang.String r0 = "x"
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = "_as"
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r4.<init>(r5, r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.d.<init>(int, int):void");
    }

    public final int a() {
        return this.f4479b;
    }

    public final int b() {
        return this.f4478a;
    }

    public final boolean c() {
        return this.f4478a == -3 && this.f4479b == -4;
    }

    public final boolean d() {
        return this.f4481d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f4478a == dVar.f4478a && this.f4479b == dVar.f4479b && this.f4480c.equals(dVar.f4480c);
    }

    public final int hashCode() {
        return this.f4480c.hashCode();
    }

    public final String toString() {
        return this.f4480c;
    }

    public final int a(Context context) {
        int i2 = this.f4479b;
        if (i2 == -4 || i2 == -3) {
            return -1;
        }
        if (i2 != -2) {
            mu1.a();
            return gd.b(context, this.f4479b);
        }
        return zztw.b(context.getResources().getDisplayMetrics());
    }

    public final int b(Context context) {
        int i2 = this.f4478a;
        if (i2 == -4 || i2 == -3) {
            return -1;
        }
        if (i2 != -1) {
            mu1.a();
            return gd.b(context, this.f4478a);
        }
        return zztw.a(context.getResources().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i2, int i3, String str) {
        if (i2 < 0 && i2 != -1 && i2 != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i3 < 0 && i3 != -2 && i3 != -4) {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i3);
            throw new IllegalArgumentException(sb2.toString());
        }
        this.f4478a = i2;
        this.f4479b = i3;
        this.f4480c = str;
    }
}
