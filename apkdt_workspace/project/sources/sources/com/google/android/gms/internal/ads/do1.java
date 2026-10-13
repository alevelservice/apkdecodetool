package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class do1 implements wn1 {
    private static final Pattern o = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> p = new AtomicReference<>();

    /* renamed from: a, reason: collision with root package name */
    private final boolean f6269a;

    /* renamed from: b, reason: collision with root package name */
    private final int f6270b;

    /* renamed from: c, reason: collision with root package name */
    private final int f6271c;

    /* renamed from: d, reason: collision with root package name */
    private final String f6272d;

    /* renamed from: e, reason: collision with root package name */
    private final eo1 f6273e;

    /* renamed from: f, reason: collision with root package name */
    private final ko1<? super do1> f6274f;

    /* renamed from: g, reason: collision with root package name */
    private bo1 f6275g;

    /* renamed from: h, reason: collision with root package name */
    private HttpURLConnection f6276h;

    /* renamed from: i, reason: collision with root package name */
    private InputStream f6277i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f6278j;

    /* renamed from: k, reason: collision with root package name */
    private long f6279k;

    /* renamed from: l, reason: collision with root package name */
    private long f6280l;
    private long m;
    private long n;

    public do1(String str, xo1<String> xo1Var, ko1<? super do1> ko1Var, int i2, int i3, boolean z, eo1 eo1Var) {
        no1.a(str);
        this.f6272d = str;
        this.f6274f = ko1Var;
        this.f6273e = new eo1();
        this.f6270b = i2;
        this.f6271c = i3;
        this.f6269a = true;
    }

    private final void b() {
        HttpURLConnection httpURLConnection = this.f6276h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused) {
            }
            this.f6276h = null;
        }
    }

    public final Map<String, List<String>> a() {
        HttpURLConnection httpURLConnection = this.f6276h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0038, code lost:
    
        if (r3 > 2048) goto L21;
     */
    @Override // com.google.android.gms.internal.ads.wn1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r9.f6277i     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L7b
            java.net.HttpURLConnection r2 = r9.f6276h     // Catch: java.lang.Throwable -> L8e
            long r3 = r9.f6280l     // Catch: java.lang.Throwable -> L8e
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L13
            long r3 = r9.f6280l     // Catch: java.lang.Throwable -> L8e
            goto L18
        L13:
            long r3 = r9.f6280l     // Catch: java.lang.Throwable -> L8e
            long r7 = r9.n     // Catch: java.lang.Throwable -> L8e
            long r3 = r3 - r7
        L18:
            int r7 = com.google.android.gms.internal.ads.cp1.f6080a     // Catch: java.lang.Throwable -> L8e
            r8 = 19
            if (r7 == r8) goto L24
            int r7 = com.google.android.gms.internal.ads.cp1.f6080a     // Catch: java.lang.Throwable -> L8e
            r8 = 20
            if (r7 != r8) goto L6b
        L24:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            int r3 = r2.read()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            r4 = -1
            if (r3 != r4) goto L3a
            goto L6b
        L34:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L6b
        L3a:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            if (r4 != 0) goto L52
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            if (r3 == 0) goto L6b
        L52:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
        L6b:
            java.io.InputStream r2 = r9.f6277i     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L8e
            r2.close()     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L8e
            goto L7b
        L71:
            r2 = move-exception
            com.google.android.gms.internal.ads.co1 r3 = new com.google.android.gms.internal.ads.co1     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.bo1 r4 = r9.f6275g     // Catch: java.lang.Throwable -> L8e
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L8e
            throw r3     // Catch: java.lang.Throwable -> L8e
        L7b:
            r9.f6277i = r0
            r9.b()
            boolean r0 = r9.f6278j
            if (r0 == 0) goto L8d
            r9.f6278j = r1
            com.google.android.gms.internal.ads.ko1<? super com.google.android.gms.internal.ads.do1> r0 = r9.f6274f
            if (r0 == 0) goto L8d
            r0.a(r9)
        L8d:
            return
        L8e:
            r2 = move-exception
            r9.f6277i = r0
            r9.b()
            boolean r0 = r9.f6278j
            if (r0 == 0) goto La1
            r9.f6278j = r1
            com.google.android.gms.internal.ads.ko1<? super com.google.android.gms.internal.ads.do1> r0 = r9.f6274f
            if (r0 == 0) goto La1
            r0.a(r9)
        La1:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.do1.close():void");
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.f6276h;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0094, code lost:
    
        if (r0 != 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0077, code lost:
    
        r0 = r1;
     */
    @Override // com.google.android.gms.internal.ads.wn1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.bo1 r25) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.do1.a(com.google.android.gms.internal.ads.bo1):long");
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final int a(byte[] bArr, int i2, int i3) {
        try {
            if (this.m != this.f6279k) {
                byte[] andSet = p.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (this.m != this.f6279k) {
                    int read = this.f6277i.read(andSet, 0, (int) Math.min(this.f6279k - this.m, andSet.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read != -1) {
                        this.m += read;
                        if (this.f6274f != null) {
                            this.f6274f.a((ko1<? super do1>) this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                p.set(andSet);
            }
            if (i3 == 0) {
                return 0;
            }
            if (this.f6280l != -1) {
                long j2 = this.f6280l - this.n;
                if (j2 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i3, j2);
            }
            int read2 = this.f6277i.read(bArr, i2, i3);
            if (read2 == -1) {
                if (this.f6280l == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.n += read2;
            if (this.f6274f != null) {
                this.f6274f.a((ko1<? super do1>) this, read2);
            }
            return read2;
        } catch (IOException e2) {
            throw new co1(e2, this.f6275g, 2);
        }
    }

    private final HttpURLConnection a(URL url, byte[] bArr, long j2, long j3, boolean z, boolean z2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f6270b);
        httpURLConnection.setReadTimeout(this.f6271c);
        for (Map.Entry<String, String> entry : this.f6273e.a().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (j2 != 0 || j3 != -1) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j2);
            sb.append("-");
            String sb2 = sb.toString();
            if (j3 != -1) {
                String valueOf = String.valueOf(sb2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb3.append(valueOf);
                sb3.append((j2 + j3) - 1);
                sb2 = sb3.toString();
            }
            httpURLConnection.setRequestProperty("Range", sb2);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f6272d);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length != 0) {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
                return httpURLConnection;
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.net.HttpURLConnection r9) {
        /*
            java.lang.String r0 = "Content-Length"
            java.lang.String r0 = r9.getHeaderField(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r2 = "]"
            if (r1 != 0) goto L30
            long r3 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> L13
            goto L32
        L13:
            java.lang.String r1 = java.lang.String.valueOf(r0)
            int r1 = r1.length()
            int r1 = r1 + 28
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            java.lang.String r1 = "Unexpected Content-Length ["
            r3.append(r1)
            r3.append(r0)
            r3.append(r2)
            r3.toString()
        L30:
            r3 = -1
        L32:
            java.lang.String r1 = "Content-Range"
            java.lang.String r9 = r9.getHeaderField(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 != 0) goto Lbd
            java.util.regex.Pattern r1 = com.google.android.gms.internal.ads.do1.o
            java.util.regex.Matcher r1 = r1.matcher(r9)
            boolean r5 = r1.find()
            if (r5 == 0) goto Lbd
            r5 = 2
            java.lang.String r5 = r1.group(r5)     // Catch: java.lang.NumberFormatException -> La0
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.NumberFormatException -> La0
            r7 = 1
            java.lang.String r1 = r1.group(r7)     // Catch: java.lang.NumberFormatException -> La0
            long r7 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> La0
            long r5 = r5 - r7
            r7 = 1
            long r5 = r5 + r7
            r7 = 0
            int r1 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r1 >= 0) goto L68
            r3 = r5
            goto Lbd
        L68:
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 == 0) goto Lbd
            java.lang.String r1 = java.lang.String.valueOf(r0)     // Catch: java.lang.NumberFormatException -> La0
            int r1 = r1.length()     // Catch: java.lang.NumberFormatException -> La0
            int r1 = r1 + 26
            java.lang.String r7 = java.lang.String.valueOf(r9)     // Catch: java.lang.NumberFormatException -> La0
            int r7 = r7.length()     // Catch: java.lang.NumberFormatException -> La0
            int r1 = r1 + r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La0
            r7.<init>(r1)     // Catch: java.lang.NumberFormatException -> La0
            java.lang.String r1 = "Inconsistent headers ["
            r7.append(r1)     // Catch: java.lang.NumberFormatException -> La0
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La0
            java.lang.String r0 = "] ["
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La0
            r7.append(r9)     // Catch: java.lang.NumberFormatException -> La0
            r7.append(r2)     // Catch: java.lang.NumberFormatException -> La0
            r7.toString()     // Catch: java.lang.NumberFormatException -> La0
            long r0 = java.lang.Math.max(r3, r5)     // Catch: java.lang.NumberFormatException -> La0
            r3 = r0
            goto Lbd
        La0:
            java.lang.String r0 = java.lang.String.valueOf(r9)
            int r0 = r0.length()
            int r0 = r0 + 27
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Unexpected Content-Range ["
            r1.append(r0)
            r1.append(r9)
            r1.append(r2)
            r1.toString()
        Lbd:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.do1.a(java.net.HttpURLConnection):long");
    }
}
