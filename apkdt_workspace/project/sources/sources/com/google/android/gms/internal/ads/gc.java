package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class gc {

    /* renamed from: a, reason: collision with root package name */
    private static bu1 f6837a;

    /* renamed from: b, reason: collision with root package name */
    private static final Object f6838b = new Object();

    static {
        new jc();
    }

    public gc(Context context) {
        a(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    public static qz0<uo1> a(String str) {
        he heVar = new he();
        f6837a.a(new lc(str, heVar));
        return heVar;
    }

    public final qz0<String> a(int i2, String str, @Nullable Map<String, String> map, @Nullable byte[] bArr) {
        mc mcVar = new mc(null);
        ic icVar = new ic(this, str, mcVar);
        kd kdVar = new kd(null);
        kc kcVar = new kc(this, i2, str, mcVar, icVar, bArr, map, kdVar);
        if (kd.a()) {
            try {
                kdVar.a(str, "GET", kcVar.a(), kcVar.g());
            } catch (ah e2) {
                qd.d(e2.getMessage());
            }
        }
        f6837a.a(kcVar);
        return mcVar;
    }

    public final qz0<String> a(String str, Map<String, String> map) {
        return a(0, str, map, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027 A[Catch: all -> 0x0054, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0010, B:12:0x0027, B:13:0x004e, B:14:0x002c, B:16:0x0050, B:17:0x0052), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002c A[Catch: all -> 0x0054, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0010, B:12:0x0027, B:13:0x004e, B:14:0x002c, B:16:0x0050, B:17:0x0052), top: B:3:0x0003 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.bu1 a(android.content.Context r4) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.gc.f6838b
            monitor-enter(r0)
            com.google.android.gms.internal.ads.bu1 r1 = com.google.android.gms.internal.ads.gc.f6837a     // Catch: java.lang.Throwable -> L54
            if (r1 != 0) goto L50
            com.google.android.gms.internal.ads.aw1.a(r4)     // Catch: java.lang.Throwable -> L54
            boolean r1 = com.google.android.gms.common.util.d.a()     // Catch: java.lang.Throwable -> L54
            if (r1 != 0) goto L24
            com.google.android.gms.internal.ads.pv1<java.lang.Boolean> r1 = com.google.android.gms.internal.ads.aw1.s2     // Catch: java.lang.Throwable -> L54
            com.google.android.gms.internal.ads.wv1 r2 = com.google.android.gms.internal.ads.mu1.e()     // Catch: java.lang.Throwable -> L54
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L54
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L54
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L54
            if (r1 == 0) goto L24
            r1 = 1
            goto L25
        L24:
            r1 = 0
        L25:
            if (r1 == 0) goto L2c
            com.google.android.gms.internal.ads.bu1 r4 = com.google.android.gms.internal.ads.yb.a(r4)     // Catch: java.lang.Throwable -> L54
            goto L4e
        L2c:
            com.google.android.gms.internal.ads.c5 r1 = new com.google.android.gms.internal.ads.c5     // Catch: java.lang.Throwable -> L54
            com.google.android.gms.internal.ads.i8 r2 = new com.google.android.gms.internal.ads.i8     // Catch: java.lang.Throwable -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L54
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L54
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L54
            java.io.File r4 = r4.getCacheDir()     // Catch: java.lang.Throwable -> L54
            java.lang.String r3 = "volley"
            r2.<init>(r4, r3)     // Catch: java.lang.Throwable -> L54
            com.google.android.gms.internal.ads.bu1 r4 = new com.google.android.gms.internal.ads.bu1     // Catch: java.lang.Throwable -> L54
            com.google.android.gms.internal.ads.n5 r3 = new com.google.android.gms.internal.ads.n5     // Catch: java.lang.Throwable -> L54
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L54
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> L54
            r4.a()     // Catch: java.lang.Throwable -> L54
        L4e:
            com.google.android.gms.internal.ads.gc.f6837a = r4     // Catch: java.lang.Throwable -> L54
        L50:
            com.google.android.gms.internal.ads.bu1 r4 = com.google.android.gms.internal.ads.gc.f6837a     // Catch: java.lang.Throwable -> L54
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            return r4
        L54:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.gc.a(android.content.Context):com.google.android.gms.internal.ads.bu1");
    }
}
