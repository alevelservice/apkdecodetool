package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.WindowManager;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public final class lp1 {

    /* renamed from: a, reason: collision with root package name */
    private final op1 f7949a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f7950b;

    /* renamed from: c, reason: collision with root package name */
    private final long f7951c;

    /* renamed from: d, reason: collision with root package name */
    private final long f7952d;

    /* renamed from: e, reason: collision with root package name */
    private long f7953e;

    /* renamed from: f, reason: collision with root package name */
    private long f7954f;

    /* renamed from: g, reason: collision with root package name */
    private long f7955g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f7956h;

    /* renamed from: i, reason: collision with root package name */
    private long f7957i;

    /* renamed from: j, reason: collision with root package name */
    private long f7958j;

    /* renamed from: k, reason: collision with root package name */
    private long f7959k;

    public lp1(Context context) {
        this(((WindowManager) context.getSystemService("window")).getDefaultDisplay() != null ? r3.getDefaultDisplay().getRefreshRate() : -1.0d);
    }

    public final void a() {
        if (this.f7950b) {
            this.f7949a.b();
        }
    }

    public final void b() {
        this.f7956h = false;
        if (this.f7950b) {
            this.f7949a.a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(long r12, long r14) {
        /*
            r11 = this;
            r0 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r12
            boolean r2 = r11.f7956h
            if (r2 == 0) goto L42
            long r2 = r11.f7953e
            int r4 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r4 == 0) goto L19
            long r2 = r11.f7959k
            r4 = 1
            long r2 = r2 + r4
            r11.f7959k = r2
            long r2 = r11.f7955g
            r11.f7954f = r2
        L19:
            long r2 = r11.f7959k
            r4 = 6
            r6 = 0
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 < 0) goto L3a
            long r4 = r11.f7958j
            long r4 = r0 - r4
            long r4 = r4 / r2
            long r2 = r11.f7954f
            long r2 = r2 + r4
            boolean r4 = r11.b(r2, r14)
            if (r4 == 0) goto L33
            r11.f7956h = r6
            goto L42
        L33:
            long r4 = r11.f7957i
            long r4 = r4 + r2
            long r6 = r11.f7958j
            long r4 = r4 - r6
            goto L44
        L3a:
            boolean r2 = r11.b(r0, r14)
            if (r2 == 0) goto L42
            r11.f7956h = r6
        L42:
            r4 = r14
            r2 = r0
        L44:
            boolean r6 = r11.f7956h
            r7 = 0
            if (r6 != 0) goto L53
            r11.f7958j = r0
            r11.f7957i = r14
            r11.f7959k = r7
            r14 = 1
            r11.f7956h = r14
        L53:
            r11.f7953e = r12
            r11.f7955g = r2
            com.google.android.gms.internal.ads.op1 r12 = r11.f7949a
            if (r12 == 0) goto L86
            long r12 = r12.f8575e
            int r14 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
            if (r14 != 0) goto L62
            goto L86
        L62:
            com.google.android.gms.internal.ads.op1 r12 = r11.f7949a
            long r12 = r12.f8575e
            long r14 = r11.f7951c
            long r0 = r4 - r12
            long r0 = r0 / r14
            long r0 = r0 * r14
            long r12 = r12 + r0
            int r0 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r0 > 0) goto L75
            long r14 = r12 - r14
            goto L79
        L75:
            long r14 = r14 + r12
            r9 = r12
            r12 = r14
            r14 = r9
        L79:
            long r0 = r12 - r4
            long r4 = r4 - r14
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 >= 0) goto L81
            goto L82
        L81:
            r12 = r14
        L82:
            long r14 = r11.f7952d
            long r12 = r12 - r14
            return r12
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lp1.a(long, long):long");
    }

    private lp1(double d2) {
        this.f7950b = d2 != -1.0d;
        if (this.f7950b) {
            this.f7949a = op1.c();
            this.f7951c = (long) (1.0E9d / d2);
            this.f7952d = (this.f7951c * 80) / 100;
        } else {
            this.f7949a = null;
            this.f7951c = -1L;
            this.f7952d = -1L;
        }
    }

    private final boolean b(long j2, long j3) {
        return Math.abs((j3 - this.f7957i) - (j2 - this.f7958j)) > 20000000;
    }
}
