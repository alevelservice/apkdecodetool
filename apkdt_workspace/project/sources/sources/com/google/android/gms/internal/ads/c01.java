package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c01<V> implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    @NullableDecl
    private a01<V> f5895e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c01(a01<V> a01Var) {
        this.f5895e = a01Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0005, code lost:
    
        r1 = ((com.google.android.gms.internal.ads.a01) r0).f5495l;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.a01<V> r0 = r10.f5895e
            if (r0 != 0) goto L5
            return
        L5:
            com.google.android.gms.internal.ads.qz0 r1 = com.google.android.gms.internal.ads.a01.a(r0)
            if (r1 != 0) goto Lc
            return
        Lc:
            r2 = 0
            r10.f5895e = r2
            boolean r3 = r1.isDone()
            if (r3 == 0) goto L19
            r0.a(r1)
            return
        L19:
            r3 = 1
            java.util.concurrent.ScheduledFuture r4 = com.google.android.gms.internal.ads.a01.b(r0)     // Catch: java.lang.Throwable -> L9a
            com.google.android.gms.internal.ads.a01.a(r0, r2)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r5 = "Timed out"
            if (r4 == 0) goto L55
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L90
            long r6 = r4.getDelay(r6)     // Catch: java.lang.Throwable -> L90
            long r6 = java.lang.Math.abs(r6)     // Catch: java.lang.Throwable -> L90
            r8 = 10
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 <= 0) goto L55
            int r4 = r5.length()     // Catch: java.lang.Throwable -> L90
            int r4 = r4 + 66
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L90
            r8.<init>(r4)     // Catch: java.lang.Throwable -> L90
            r8.append(r5)     // Catch: java.lang.Throwable -> L90
            java.lang.String r4 = " (timeout delayed by "
            r8.append(r4)     // Catch: java.lang.Throwable -> L90
            r8.append(r6)     // Catch: java.lang.Throwable -> L90
            java.lang.String r4 = " ms after scheduled time)"
            r8.append(r4)     // Catch: java.lang.Throwable -> L90
            java.lang.String r4 = r8.toString()     // Catch: java.lang.Throwable -> L90
            r5 = r4
        L55:
            java.lang.String r4 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L90
            java.lang.String r6 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L90
            java.lang.String r7 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L90
            int r7 = r7.length()     // Catch: java.lang.Throwable -> L90
            int r7 = r7 + 2
            java.lang.String r8 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L90
            int r8 = r8.length()     // Catch: java.lang.Throwable -> L90
            int r7 = r7 + r8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L90
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L90
            r8.append(r4)     // Catch: java.lang.Throwable -> L90
            java.lang.String r4 = ": "
            r8.append(r4)     // Catch: java.lang.Throwable -> L90
            r8.append(r6)     // Catch: java.lang.Throwable -> L90
            java.lang.String r4 = r8.toString()     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.ads.g01 r5 = new com.google.android.gms.internal.ads.g01     // Catch: java.lang.Throwable -> L9a
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L9a
            r0.a(r5)     // Catch: java.lang.Throwable -> L9a
            r1.cancel(r3)
            return
        L90:
            r4 = move-exception
            com.google.android.gms.internal.ads.g01 r6 = new com.google.android.gms.internal.ads.g01     // Catch: java.lang.Throwable -> L9a
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L9a
            r0.a(r6)     // Catch: java.lang.Throwable -> L9a
            throw r4     // Catch: java.lang.Throwable -> L9a
        L9a:
            r0 = move-exception
            r1.cancel(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.c01.run():void");
    }
}
