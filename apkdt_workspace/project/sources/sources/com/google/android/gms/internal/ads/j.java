package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.a;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class j extends a.b {

    /* renamed from: a, reason: collision with root package name */
    private final zzaas f7399a;

    /* renamed from: b, reason: collision with root package name */
    private final Drawable f7400b;

    /* renamed from: c, reason: collision with root package name */
    private final Uri f7401c;

    /* renamed from: d, reason: collision with root package name */
    private final double f7402d;

    /* renamed from: e, reason: collision with root package name */
    private final int f7403e;

    /* renamed from: f, reason: collision with root package name */
    private final int f7404f;

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|(2:2|3)|(15:5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)|34|6|7|8|9|10|11|12|13|14|15|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        com.google.android.gms.internal.ads.qd.b("", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0042, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0043, code lost:
    
        com.google.android.gms.internal.ads.qd.b("", r1);
        r1 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0034, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0035, code lost:
    
        com.google.android.gms.internal.ads.qd.b("", r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0025, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0026, code lost:
    
        com.google.android.gms.internal.ads.qd.b("", r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j(com.google.android.gms.internal.ads.zzaas r4) {
        /*
            r3 = this;
            java.lang.String r0 = ""
            r3.<init>()
            r3.f7399a = r4
            r4 = 0
            com.google.android.gms.internal.ads.zzaas r1 = r3.f7399a     // Catch: android.os.RemoteException -> L17
            com.google.android.gms.dynamic.IObjectWrapper r1 = r1.zzqf()     // Catch: android.os.RemoteException -> L17
            if (r1 == 0) goto L1b
            java.lang.Object r1 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r1)     // Catch: android.os.RemoteException -> L17
            android.graphics.drawable.Drawable r1 = (android.graphics.drawable.Drawable) r1     // Catch: android.os.RemoteException -> L17
            goto L1c
        L17:
            r1 = move-exception
            com.google.android.gms.internal.ads.qd.b(r0, r1)
        L1b:
            r1 = r4
        L1c:
            r3.f7400b = r1
            com.google.android.gms.internal.ads.zzaas r1 = r3.f7399a     // Catch: android.os.RemoteException -> L25
            android.net.Uri r4 = r1.getUri()     // Catch: android.os.RemoteException -> L25
            goto L29
        L25:
            r1 = move-exception
            com.google.android.gms.internal.ads.qd.b(r0, r1)
        L29:
            r3.f7401c = r4
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            com.google.android.gms.internal.ads.zzaas r4 = r3.f7399a     // Catch: android.os.RemoteException -> L34
            double r1 = r4.getScale()     // Catch: android.os.RemoteException -> L34
            goto L38
        L34:
            r4 = move-exception
            com.google.android.gms.internal.ads.qd.b(r0, r4)
        L38:
            r3.f7402d = r1
            r4 = -1
            com.google.android.gms.internal.ads.zzaas r1 = r3.f7399a     // Catch: android.os.RemoteException -> L42
            int r1 = r1.getWidth()     // Catch: android.os.RemoteException -> L42
            goto L47
        L42:
            r1 = move-exception
            com.google.android.gms.internal.ads.qd.b(r0, r1)
            r1 = -1
        L47:
            r3.f7403e = r1
            com.google.android.gms.internal.ads.zzaas r1 = r3.f7399a     // Catch: android.os.RemoteException -> L50
            int r4 = r1.getHeight()     // Catch: android.os.RemoteException -> L50
            goto L54
        L50:
            r1 = move-exception
            com.google.android.gms.internal.ads.qd.b(r0, r1)
        L54:
            r3.f7404f = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.j.<init>(com.google.android.gms.internal.ads.zzaas):void");
    }

    @Override // com.google.android.gms.ads.formats.a.b
    public final Drawable a() {
        return this.f7400b;
    }

    @Override // com.google.android.gms.ads.formats.a.b
    public final int b() {
        return this.f7404f;
    }

    @Override // com.google.android.gms.ads.formats.a.b
    public final double c() {
        return this.f7402d;
    }

    @Override // com.google.android.gms.ads.formats.a.b
    public final Uri d() {
        return this.f7401c;
    }

    @Override // com.google.android.gms.ads.formats.a.b
    public final int e() {
        return this.f7403e;
    }
}
