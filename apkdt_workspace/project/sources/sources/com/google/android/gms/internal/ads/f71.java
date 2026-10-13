package com.google.android.gms.internal.ads;

import java.io.PrintWriter;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class f71 {

    /* renamed from: a, reason: collision with root package name */
    private static final e71 f6591a;

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    static final class a extends e71 {
        a() {
        }

        @Override // com.google.android.gms.internal.ads.e71
        public final void a(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }

        @Override // com.google.android.gms.internal.ads.e71
        public final void a(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    static {
        /*
            java.lang.Integer r0 = a()     // Catch: java.lang.Throwable -> L2c
            if (r0 == 0) goto L14
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L2a
            r2 = 19
            if (r1 < r2) goto L14
            com.google.android.gms.internal.ads.k71 r1 = new com.google.android.gms.internal.ads.k71     // Catch: java.lang.Throwable -> L2a
            r1.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L63
        L14:
            java.lang.String r1 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r1 = java.lang.Boolean.getBoolean(r1)     // Catch: java.lang.Throwable -> L2a
            r1 = r1 ^ 1
            if (r1 == 0) goto L24
            com.google.android.gms.internal.ads.i71 r1 = new com.google.android.gms.internal.ads.i71     // Catch: java.lang.Throwable -> L2a
            r1.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L63
        L24:
            com.google.android.gms.internal.ads.f71$a r1 = new com.google.android.gms.internal.ads.f71$a     // Catch: java.lang.Throwable -> L2a
            r1.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L63
        L2a:
            r1 = move-exception
            goto L2e
        L2c:
            r1 = move-exception
            r0 = 0
        L2e:
            java.io.PrintStream r2 = java.lang.System.err
            java.lang.Class<com.google.android.gms.internal.ads.f71$a> r3 = com.google.android.gms.internal.ads.f71.a.class
            java.lang.String r3 = r3.getName()
            java.lang.String r4 = java.lang.String.valueOf(r3)
            int r4 = r4.length()
            int r4 = r4 + 133
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r4)
            java.lang.String r4 = "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "
            r5.append(r4)
            r5.append(r3)
            java.lang.String r3 = "will be used. The error is: "
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r2.println(r3)
            java.io.PrintStream r2 = java.lang.System.err
            r1.printStackTrace(r2)
            com.google.android.gms.internal.ads.f71$a r1 = new com.google.android.gms.internal.ads.f71$a
            r1.<init>()
        L63:
            com.google.android.gms.internal.ads.f71.f6591a = r1
            if (r0 != 0) goto L68
            goto L6b
        L68:
            r0.intValue()
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.f71.<clinit>():void");
    }

    public static void a(Throwable th, Throwable th2) {
        f6591a.a(th, th2);
    }

    public static void a(Throwable th, PrintWriter printWriter) {
        f6591a.a(th, printWriter);
    }

    private static Integer a() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e2) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e2.printStackTrace(System.err);
            return null;
        }
    }
}
