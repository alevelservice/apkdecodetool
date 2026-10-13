package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f13220e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ q6 f13221f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ q6 f13222g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ p6 f13223h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s6(p6 p6Var, boolean z, q6 q6Var, q6 q6Var2) {
        this.f13223h = p6Var;
        this.f13220e = z;
        this.f13221f = q6Var;
        this.f13222g = q6Var2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        if (com.google.android.gms.measurement.internal.r8.e(r10.f13221f.f13172a, r10.f13222g.f13172a) != false) goto L27;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.z8 r0 = r0.d()
            com.google.android.gms.measurement.internal.p6 r1 = r10.f13223h
            com.google.android.gms.measurement.internal.y2 r1 = r1.n()
            java.lang.String r1 = r1.z()
            boolean r0 = r0.r(r1)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L2f
            boolean r0 = r10.f13220e
            if (r0 == 0) goto L24
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.q6 r0 = r0.f13150c
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 == 0) goto L3d
            com.google.android.gms.measurement.internal.p6 r3 = r10.f13223h
            com.google.android.gms.measurement.internal.q6 r4 = r3.f13150c
            com.google.android.gms.measurement.internal.p6.a(r3, r4, r2)
            goto L3d
        L2f:
            boolean r0 = r10.f13220e
            if (r0 == 0) goto L3c
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.q6 r3 = r0.f13150c
            if (r3 == 0) goto L3c
            com.google.android.gms.measurement.internal.p6.a(r0, r3, r2)
        L3c:
            r0 = 0
        L3d:
            com.google.android.gms.measurement.internal.q6 r3 = r10.f13221f
            if (r3 == 0) goto L63
            long r4 = r3.f13174c
            com.google.android.gms.measurement.internal.q6 r6 = r10.f13222g
            long r7 = r6.f13174c
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 != 0) goto L63
            java.lang.String r3 = r3.f13173b
            java.lang.String r4 = r6.f13173b
            boolean r3 = com.google.android.gms.measurement.internal.r8.e(r3, r4)
            if (r3 == 0) goto L63
            com.google.android.gms.measurement.internal.q6 r3 = r10.f13221f
            java.lang.String r3 = r3.f13172a
            com.google.android.gms.measurement.internal.q6 r4 = r10.f13222g
            java.lang.String r4 = r4.f13172a
            boolean r3 = com.google.android.gms.measurement.internal.r8.e(r3, r4)
            if (r3 != 0) goto L64
        L63:
            r1 = 1
        L64:
            if (r1 == 0) goto Lcd
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            com.google.android.gms.measurement.internal.q6 r3 = r10.f13222g
            com.google.android.gms.measurement.internal.p6.a(r3, r1, r2)
            com.google.android.gms.measurement.internal.q6 r2 = r10.f13221f
            if (r2 == 0) goto L8f
            java.lang.String r2 = r2.f13172a
            if (r2 == 0) goto L7d
            java.lang.String r3 = "_pn"
            r1.putString(r3, r2)
        L7d:
            com.google.android.gms.measurement.internal.q6 r2 = r10.f13221f
            java.lang.String r2 = r2.f13173b
            java.lang.String r3 = "_pc"
            r1.putString(r3, r2)
            com.google.android.gms.measurement.internal.q6 r2 = r10.f13221f
            long r2 = r2.f13174c
            java.lang.String r4 = "_pi"
            r1.putLong(r4, r2)
        L8f:
            com.google.android.gms.measurement.internal.p6 r2 = r10.f13223h
            com.google.android.gms.measurement.internal.z8 r2 = r2.d()
            com.google.android.gms.measurement.internal.p6 r3 = r10.f13223h
            com.google.android.gms.measurement.internal.y2 r3 = r3.n()
            java.lang.String r3 = r3.z()
            boolean r2 = r2.r(r3)
            if (r2 == 0) goto Lc0
            if (r0 == 0) goto Lc0
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.v7 r0 = r0.r()
            long r2 = r0.A()
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto Lc0
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.r8 r0 = r0.j()
            r0.a(r1, r2)
        Lc0:
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.p5 r0 = r0.m()
            java.lang.String r2 = "auto"
            java.lang.String r3 = "_vs"
            r0.c(r2, r3, r1)
        Lcd:
            com.google.android.gms.measurement.internal.p6 r0 = r10.f13223h
            com.google.android.gms.measurement.internal.q6 r1 = r10.f13222g
            r0.f13150c = r1
            com.google.android.gms.measurement.internal.u6 r0 = r0.o()
            com.google.android.gms.measurement.internal.q6 r1 = r10.f13222g
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.s6.run():void");
    }
}
