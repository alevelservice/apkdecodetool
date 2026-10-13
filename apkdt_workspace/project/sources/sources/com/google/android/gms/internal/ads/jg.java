package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class jg implements wn1 {
    private static final Pattern q = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> r = new AtomicReference<>();

    /* renamed from: b, reason: collision with root package name */
    private final int f7480b;

    /* renamed from: c, reason: collision with root package name */
    private final int f7481c;

    /* renamed from: d, reason: collision with root package name */
    private final String f7482d;

    /* renamed from: e, reason: collision with root package name */
    private final eo1 f7483e;

    /* renamed from: f, reason: collision with root package name */
    private final ko1<? super jg> f7484f;

    /* renamed from: g, reason: collision with root package name */
    private bo1 f7485g;

    /* renamed from: h, reason: collision with root package name */
    private HttpURLConnection f7486h;

    /* renamed from: i, reason: collision with root package name */
    private InputStream f7487i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f7488j;

    /* renamed from: k, reason: collision with root package name */
    private long f7489k;

    /* renamed from: l, reason: collision with root package name */
    private long f7490l;
    private long m;
    private long n;
    private int o;

    /* renamed from: a, reason: collision with root package name */
    private SSLSocketFactory f7479a = new ig(this);
    private Set<Socket> p = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public jg(String str, ko1<? super jg> ko1Var, int i2, int i3, int i4) {
        no1.a(str);
        this.f7482d = str;
        this.f7484f = ko1Var;
        this.f7483e = new eo1();
        this.f7480b = i2;
        this.f7481c = i3;
        this.o = i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x012d, code lost:
    
        r23.f7486h = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012f, code lost:
    
        r0 = r23.f7486h.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0137, code lost:
    
        if (r0 < 200) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x013b, code lost:
    
        if (r0 <= 299) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x013e, code lost:
    
        if (r0 != 200) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0140, code lost:
    
        r4 = r24.f5824d;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0146, code lost:
    
        if (r4 == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014b, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x014c, code lost:
    
        r23.f7489k = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0153, code lost:
    
        if (r24.a(1) != false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0155, code lost:
    
        r3 = r24.f5825e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015b, code lost:
    
        if (r3 == (-1)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x015d, code lost:
    
        r23.f7490l = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0176, code lost:
    
        r23.f7487i = r23.f7486h.getInputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017e, code lost:
    
        r23.f7488j = true;
        r0 = r23.f7484f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0183, code lost:
    
        if (r0 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0185, code lost:
    
        r0.a((com.google.android.gms.internal.ads.ko1<? super com.google.android.gms.internal.ads.jg>) r23, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018a, code lost:
    
        return r23.f7490l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018c, code lost:
    
        a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0195, code lost:
    
        throw new com.google.android.gms.internal.ads.co1(r0, r24, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0160, code lost:
    
        r3 = a(r23.f7486h);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0168, code lost:
    
        if (r3 == (-1)) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016a, code lost:
    
        r3 = r3 - r23.f7489k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016f, code lost:
    
        r23.f7490l = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x016e, code lost:
    
        r3 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0172, code lost:
    
        r23.f7490l = r24.f5825e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0149, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0196, code lost:
    
        r3 = r23.f7486h.getHeaderFields();
        a();
        r4 = new com.google.android.gms.internal.ads.fo1(r0, r3, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a6, code lost:
    
        if (r0 != 416) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01a8, code lost:
    
        r4.initCause(new com.google.android.gms.internal.ads.yn1(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01b1, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01b3, code lost:
    
        a();
        r5 = java.lang.String.valueOf(r24.f5821a.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c6, code lost:
    
        if (r5.length() != 0) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c8, code lost:
    
        r3 = "Unable to connect to ".concat(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01d7, code lost:
    
        throw new com.google.android.gms.internal.ads.co1(r3, r0, r24, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01cd, code lost:
    
        r3 = new java.lang.String("Unable to connect to ");
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0224 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00db A[Catch: IOException -> 0x0245, TryCatch #0 {IOException -> 0x0245, blocks: (B:3:0x000f, B:4:0x0027, B:6:0x002d, B:8:0x0037, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:20:0x00d2, B:22:0x00db, B:23:0x00e2, B:26:0x00eb, B:28:0x00f0, B:30:0x00f8, B:31:0x010d, B:46:0x012d, B:96:0x01dc, B:98:0x01e7, B:100:0x01f8, B:103:0x0200, B:105:0x020e, B:106:0x0218, B:107:0x021b, B:108:0x0213, B:113:0x0224, B:114:0x022b, B:115:0x010a, B:117:0x0087, B:119:0x00a3, B:120:0x00cd, B:123:0x022c, B:124:0x0244), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f0 A[Catch: IOException -> 0x0245, TryCatch #0 {IOException -> 0x0245, blocks: (B:3:0x000f, B:4:0x0027, B:6:0x002d, B:8:0x0037, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:20:0x00d2, B:22:0x00db, B:23:0x00e2, B:26:0x00eb, B:28:0x00f0, B:30:0x00f8, B:31:0x010d, B:46:0x012d, B:96:0x01dc, B:98:0x01e7, B:100:0x01f8, B:103:0x0200, B:105:0x020e, B:106:0x0218, B:107:0x021b, B:108:0x0213, B:113:0x0224, B:114:0x022b, B:115:0x010a, B:117:0x0087, B:119:0x00a3, B:120:0x00cd, B:123:0x022c, B:124:0x0244), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01e7 A[Catch: IOException -> 0x0245, TryCatch #0 {IOException -> 0x0245, blocks: (B:3:0x000f, B:4:0x0027, B:6:0x002d, B:8:0x0037, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:20:0x00d2, B:22:0x00db, B:23:0x00e2, B:26:0x00eb, B:28:0x00f0, B:30:0x00f8, B:31:0x010d, B:46:0x012d, B:96:0x01dc, B:98:0x01e7, B:100:0x01f8, B:103:0x0200, B:105:0x020e, B:106:0x0218, B:107:0x021b, B:108:0x0213, B:113:0x0224, B:114:0x022b, B:115:0x010a, B:117:0x0087, B:119:0x00a3, B:120:0x00cd, B:123:0x022c, B:124:0x0244), top: B:2:0x000f }] */
    @Override // com.google.android.gms.internal.ads.wn1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.bo1 r24) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jg.a(com.google.android.gms.internal.ads.bo1):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0038, code lost:
    
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
            java.io.InputStream r2 = r9.f7487i     // Catch: java.lang.Throwable -> L93
            if (r2 == 0) goto L7b
            java.net.HttpURLConnection r2 = r9.f7486h     // Catch: java.lang.Throwable -> L93
            long r3 = r9.f7490l     // Catch: java.lang.Throwable -> L93
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L13
            long r3 = r9.f7490l     // Catch: java.lang.Throwable -> L93
            goto L18
        L13:
            long r3 = r9.f7490l     // Catch: java.lang.Throwable -> L93
            long r7 = r9.n     // Catch: java.lang.Throwable -> L93
            long r3 = r3 - r7
        L18:
            int r7 = com.google.android.gms.internal.ads.cp1.f6080a     // Catch: java.lang.Throwable -> L93
            r8 = 19
            if (r7 == r8) goto L24
            int r7 = com.google.android.gms.internal.ads.cp1.f6080a     // Catch: java.lang.Throwable -> L93
            r8 = 20
            if (r7 != r8) goto L6b
        L24:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            int r3 = r2.read()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            r4 = -1
            if (r3 != r4) goto L3a
            goto L6b
        L34:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L6b
        L3a:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            if (r4 != 0) goto L52
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            if (r3 == 0) goto L6b
        L52:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
        L6b:
            java.io.InputStream r2 = r9.f7487i     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L93
            r2.close()     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L93
            goto L7b
        L71:
            r2 = move-exception
            com.google.android.gms.internal.ads.co1 r3 = new com.google.android.gms.internal.ads.co1     // Catch: java.lang.Throwable -> L93
            com.google.android.gms.internal.ads.bo1 r4 = r9.f7485g     // Catch: java.lang.Throwable -> L93
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L93
            throw r3     // Catch: java.lang.Throwable -> L93
        L7b:
            r9.f7487i = r0
            r9.a()
            boolean r0 = r9.f7488j
            if (r0 == 0) goto L8d
            r9.f7488j = r1
            com.google.android.gms.internal.ads.ko1<? super com.google.android.gms.internal.ads.jg> r0 = r9.f7484f
            if (r0 == 0) goto L8d
            r0.a(r9)
        L8d:
            java.util.Set<java.net.Socket> r0 = r9.p
            r0.clear()
            return
        L93:
            r2 = move-exception
            r9.f7487i = r0
            r9.a()
            boolean r0 = r9.f7488j
            if (r0 == 0) goto La6
            r9.f7488j = r1
            com.google.android.gms.internal.ads.ko1<? super com.google.android.gms.internal.ads.jg> r0 = r9.f7484f
            if (r0 == 0) goto La6
            r0.a(r9)
        La6:
            java.util.Set<java.net.Socket> r0 = r9.p
            r0.clear()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jg.close():void");
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.f7486h;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final int a(byte[] bArr, int i2, int i3) {
        try {
            if (this.m != this.f7489k) {
                byte[] andSet = r.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (this.m != this.f7489k) {
                    int read = this.f7487i.read(andSet, 0, (int) Math.min(this.f7489k - this.m, andSet.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read != -1) {
                        this.m += read;
                        if (this.f7484f != null) {
                            this.f7484f.a((ko1<? super jg>) this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                r.set(andSet);
            }
            if (i3 == 0) {
                return 0;
            }
            if (this.f7490l != -1) {
                long j2 = this.f7490l - this.n;
                if (j2 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i3, j2);
            }
            int read2 = this.f7487i.read(bArr, i2, i3);
            if (read2 == -1) {
                if (this.f7490l == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.n += read2;
            if (this.f7484f != null) {
                this.f7484f.a((ko1<? super jg>) this, read2);
            }
            return read2;
        } catch (IOException e2) {
            throw new co1(e2, this.f7485g, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2) {
        this.o = i2;
        for (Socket socket : this.p) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.o);
                } catch (SocketException e2) {
                    qd.c("Failed to update receive buffer size.", e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Socket socket) {
        this.p.add(socket);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0042  */
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
            if (r1 != 0) goto L34
            long r3 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> L13
            goto L36
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
            java.lang.String r1 = r3.toString()
            com.google.android.gms.internal.ads.qd.b(r1)
        L34:
            r3 = -1
        L36:
            java.lang.String r1 = "Content-Range"
            java.lang.String r9 = r9.getHeaderField(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 != 0) goto Lc9
            java.util.regex.Pattern r1 = com.google.android.gms.internal.ads.jg.q
            java.util.regex.Matcher r1 = r1.matcher(r9)
            boolean r5 = r1.find()
            if (r5 == 0) goto Lc9
            r5 = 2
            java.lang.String r5 = r1.group(r5)     // Catch: java.lang.NumberFormatException -> La8
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.NumberFormatException -> La8
            r7 = 1
            java.lang.String r1 = r1.group(r7)     // Catch: java.lang.NumberFormatException -> La8
            long r7 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> La8
            long r5 = r5 - r7
            r7 = 1
            long r5 = r5 + r7
            r7 = 0
            int r1 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r1 >= 0) goto L6c
            r3 = r5
            goto Lc9
        L6c:
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 == 0) goto Lc9
            java.lang.String r1 = java.lang.String.valueOf(r0)     // Catch: java.lang.NumberFormatException -> La8
            int r1 = r1.length()     // Catch: java.lang.NumberFormatException -> La8
            int r1 = r1 + 26
            java.lang.String r7 = java.lang.String.valueOf(r9)     // Catch: java.lang.NumberFormatException -> La8
            int r7 = r7.length()     // Catch: java.lang.NumberFormatException -> La8
            int r1 = r1 + r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La8
            r7.<init>(r1)     // Catch: java.lang.NumberFormatException -> La8
            java.lang.String r1 = "Inconsistent headers ["
            r7.append(r1)     // Catch: java.lang.NumberFormatException -> La8
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La8
            java.lang.String r0 = "] ["
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La8
            r7.append(r9)     // Catch: java.lang.NumberFormatException -> La8
            r7.append(r2)     // Catch: java.lang.NumberFormatException -> La8
            java.lang.String r0 = r7.toString()     // Catch: java.lang.NumberFormatException -> La8
            com.google.android.gms.internal.ads.qd.d(r0)     // Catch: java.lang.NumberFormatException -> La8
            long r0 = java.lang.Math.max(r3, r5)     // Catch: java.lang.NumberFormatException -> La8
            r3 = r0
            goto Lc9
        La8:
            java.lang.String r0 = java.lang.String.valueOf(r9)
            int r0 = r0.length()
            int r0 = r0 + 27
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Unexpected Content-Range ["
            r1.append(r0)
            r1.append(r9)
            r1.append(r2)
            java.lang.String r9 = r1.toString()
            com.google.android.gms.internal.ads.qd.b(r9)
        Lc9:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.jg.a(java.net.HttpURLConnection):long");
    }

    private final void a() {
        HttpURLConnection httpURLConnection = this.f7486h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                qd.b("Unexpected error while disconnecting", e2);
            }
            this.f7486h = null;
        }
    }
}
