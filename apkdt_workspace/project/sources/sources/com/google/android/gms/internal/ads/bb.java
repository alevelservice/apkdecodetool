package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class bb extends FilterInputStream {

    /* renamed from: e, reason: collision with root package name */
    private final HttpURLConnection f5740e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public bb(java.net.HttpURLConnection r2) {
        /*
            r1 = this;
            java.io.InputStream r0 = com.google.android.gms.internal.ads.i8.b(r2)
            r1.<init>(r0)
            r1.f5740e = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bb.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f5740e.disconnect();
    }
}
