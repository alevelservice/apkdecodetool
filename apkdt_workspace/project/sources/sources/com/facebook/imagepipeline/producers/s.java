package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.producers.e0;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: HttpUrlConnectionNetworkFetcher.java */
/* loaded from: classes.dex */
public class s extends c<r> {

    /* renamed from: a, reason: collision with root package name */
    private int f4076a;

    /* renamed from: b, reason: collision with root package name */
    private final ExecutorService f4077b;

    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ r f4078e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ e0.a f4079f;

        a(r rVar, e0.a aVar) {
            this.f4078e = rVar;
            this.f4079f = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.b(this.f4078e, this.f4079f);
        }
    }

    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Future f4081a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ e0.a f4082b;

        b(s sVar, Future future, e0.a aVar) {
            this.f4081a = future;
            this.f4082b = aVar;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            if (this.f4081a.cancel(false)) {
                this.f4082b.a();
            }
        }
    }

    public s(int i2) {
        this(Executors.newFixedThreadPool(3));
        this.f4076a = i2;
    }

    private static boolean a(int i2) {
        if (i2 == 307 || i2 == 308) {
            return true;
        }
        switch (i2) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    private static boolean b(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    @Override // com.facebook.imagepipeline.producers.e0
    public r a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        return new r(consumer, j0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.facebook.common.internal.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void b(com.facebook.imagepipeline.producers.r r3, com.facebook.imagepipeline.producers.e0.a r4) {
        /*
            r2 = this;
            r0 = 0
            android.net.Uri r3 = r3.h()     // Catch: java.lang.Throwable -> L21 java.io.IOException -> L24
            r1 = 5
            java.net.HttpURLConnection r3 = r2.a(r3, r1)     // Catch: java.lang.Throwable -> L21 java.io.IOException -> L24
            if (r3 == 0) goto L17
            java.io.InputStream r0 = r3.getInputStream()     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L36
            r1 = -1
            r4.a(r0, r1)     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L36
            goto L17
        L15:
            r1 = move-exception
            goto L26
        L17:
            if (r0 == 0) goto L1e
            r0.close()     // Catch: java.io.IOException -> L1d
            goto L1e
        L1d:
        L1e:
            if (r3 == 0) goto L35
            goto L32
        L21:
            r4 = move-exception
            r3 = r0
            goto L37
        L24:
            r1 = move-exception
            r3 = r0
        L26:
            r4.a(r1)     // Catch: java.lang.Throwable -> L36
            if (r0 == 0) goto L30
            r0.close()     // Catch: java.io.IOException -> L2f
            goto L30
        L2f:
        L30:
            if (r3 == 0) goto L35
        L32:
            r3.disconnect()
        L35:
            return
        L36:
            r4 = move-exception
        L37:
            if (r0 == 0) goto L3e
            r0.close()     // Catch: java.io.IOException -> L3d
            goto L3e
        L3d:
        L3e:
            if (r3 == 0) goto L43
            r3.disconnect()
        L43:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.s.b(com.facebook.imagepipeline.producers.r, com.facebook.imagepipeline.producers.e0$a):void");
    }

    @Override // com.facebook.imagepipeline.producers.e0
    public void a(r rVar, e0.a aVar) {
        rVar.b().a(new b(this, this.f4077b.submit(new a(rVar, aVar)), aVar));
    }

    @VisibleForTesting
    s(ExecutorService executorService) {
        this.f4077b = executorService;
    }

    private HttpURLConnection a(Uri uri, int i2) {
        HttpURLConnection a2 = a(uri);
        a2.setConnectTimeout(this.f4076a);
        int responseCode = a2.getResponseCode();
        if (b(responseCode)) {
            return a2;
        }
        if (a(responseCode)) {
            String headerField = a2.getHeaderField("Location");
            a2.disconnect();
            Uri parse = headerField == null ? null : Uri.parse(headerField);
            String scheme = uri.getScheme();
            if (i2 > 0 && parse != null && !parse.getScheme().equals(scheme)) {
                return a(parse, i2 - 1);
            }
            throw new IOException(i2 == 0 ? a("URL %s follows too many redirects", uri.toString()) : a("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
        }
        a2.disconnect();
        throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
    }

    @VisibleForTesting
    static HttpURLConnection a(Uri uri) {
        return (HttpURLConnection) e.f.c.j.f.k(uri).openConnection();
    }

    private static String a(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }
}
