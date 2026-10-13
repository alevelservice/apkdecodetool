package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.net.URL;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@WorkerThread
/* loaded from: classes.dex */
public final class m6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final URL f13085e;

    /* renamed from: f, reason: collision with root package name */
    private final j6 f13086f;

    /* renamed from: g, reason: collision with root package name */
    private final String f13087g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, String> f13088h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ k6 f13089i;

    public m6(k6 k6Var, String str, URL url, byte[] bArr, Map<String, String> map, j6 j6Var) {
        this.f13089i = k6Var;
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(url);
        com.google.android.gms.common.internal.m.a(j6Var);
        this.f13085e = url;
        this.f13086f = j6Var;
        this.f13087g = str;
        this.f13088h = null;
    }

    private final void b(final int i2, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f13089i.b().a(new Runnable(this, i2, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.l6

            /* renamed from: e, reason: collision with root package name */
            private final m6 f13060e;

            /* renamed from: f, reason: collision with root package name */
            private final int f13061f;

            /* renamed from: g, reason: collision with root package name */
            private final Exception f13062g;

            /* renamed from: h, reason: collision with root package name */
            private final byte[] f13063h;

            /* renamed from: i, reason: collision with root package name */
            private final Map f13064i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13060e = this;
                this.f13061f = i2;
                this.f13062g = exc;
                this.f13063h = bArr;
                this.f13064i = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13060e.a(this.f13061f, this.f13062g, this.f13063h, this.f13064i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i2, Exception exc, byte[] bArr, Map map) {
        this.f13086f.a(this.f13087g, i2, exc, bArr, map);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0070  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r7 = this;
            com.google.android.gms.measurement.internal.k6 r0 = r7.f13089i
            r0.f()
            r0 = 0
            r1 = 0
            com.google.android.gms.measurement.internal.k6 r2 = r7.f13089i     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L77
            java.net.URL r3 = r7.f13085e     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L77
            java.net.HttpURLConnection r2 = r2.a(r3)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L77
            java.util.Map<java.lang.String, java.lang.String> r3 = r7.f13088h     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            if (r3 == 0) goto L39
            java.util.Map<java.lang.String, java.lang.String> r3 = r7.f13088h     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.util.Set r3 = r3.entrySet()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
        L1d:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            if (r4 == 0) goto L39
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.lang.Object r5 = r4.getKey()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.lang.Object r4 = r4.getValue()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            r2.addRequestProperty(r5, r4)     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            goto L1d
        L39:
            int r1 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67
            java.util.Map r3 = r2.getHeaderFields()     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L60
            com.google.android.gms.measurement.internal.k6 r4 = r7.f13089i     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L56
            byte[] r4 = com.google.android.gms.measurement.internal.k6.a(r4, r2)     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L56
            if (r2 == 0) goto L4c
            r2.disconnect()
        L4c:
            r7.b(r1, r0, r4, r3)
            return
        L50:
            r4 = move-exception
            r6 = r4
            r4 = r1
            r1 = r3
            r3 = r6
            goto L6e
        L56:
            r4 = move-exception
            r6 = r4
            r4 = r1
            r1 = r3
            r3 = r6
            goto L7b
        L5c:
            r3 = move-exception
            r4 = r1
            r1 = r0
            goto L6e
        L60:
            r3 = move-exception
            r4 = r1
            r1 = r0
            goto L7b
        L64:
            r3 = move-exception
            r1 = r0
            goto L6d
        L67:
            r3 = move-exception
            r1 = r0
            goto L7a
        L6a:
            r3 = move-exception
            r1 = r0
            r2 = r1
        L6d:
            r4 = 0
        L6e:
            if (r2 == 0) goto L73
            r2.disconnect()
        L73:
            r7.b(r4, r0, r0, r1)
            throw r3
        L77:
            r3 = move-exception
            r1 = r0
            r2 = r1
        L7a:
            r4 = 0
        L7b:
            if (r2 == 0) goto L80
            r2.disconnect()
        L80:
            r7.b(r4, r3, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.m6.run():void");
    }
}
