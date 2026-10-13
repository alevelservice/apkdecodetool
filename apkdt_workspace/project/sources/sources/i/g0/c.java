package i.g0;

import i.a0;
import i.c0;
import i.r;
import i.s;
import i.u;
import j.e;
import j.f;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: Util.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f18448a = new byte[0];

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f18449b = new String[0];

    /* renamed from: c, reason: collision with root package name */
    public static final c0 f18450c = c0.a(null, f18448a);

    /* renamed from: d, reason: collision with root package name */
    private static final f f18451d;

    /* renamed from: e, reason: collision with root package name */
    private static final f f18452e;

    /* renamed from: f, reason: collision with root package name */
    private static final f f18453f;

    /* renamed from: g, reason: collision with root package name */
    private static final f f18454g;

    /* renamed from: h, reason: collision with root package name */
    private static final f f18455h;

    /* renamed from: i, reason: collision with root package name */
    public static final Charset f18456i;

    /* renamed from: j, reason: collision with root package name */
    private static final Charset f18457j;

    /* renamed from: k, reason: collision with root package name */
    private static final Charset f18458k;

    /* renamed from: l, reason: collision with root package name */
    private static final Charset f18459l;
    private static final Charset m;
    public static final TimeZone n;
    public static final Comparator<String> o;
    private static final Method p;
    private static final Pattern q;

    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    class b implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f18460e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f18461f;

        b(String str, boolean z) {
            this.f18460e = str;
            this.f18461f = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f18460e);
            thread.setDaemon(this.f18461f);
            return thread;
        }
    }

    static {
        Method method = null;
        a0.a((u) null, f18448a);
        f18451d = f.decodeHex("efbbbf");
        f18452e = f.decodeHex("feff");
        f18453f = f.decodeHex("fffe");
        f18454g = f.decodeHex("0000ffff");
        f18455h = f.decodeHex("ffff0000");
        f18456i = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        f18457j = Charset.forName("UTF-16BE");
        f18458k = Charset.forName("UTF-16LE");
        f18459l = Charset.forName("UTF-32BE");
        m = Charset.forName("UTF-32LE");
        n = TimeZone.getTimeZone("GMT");
        o = new a();
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        p = method;
        q = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public static void a(Throwable th, Throwable th2) {
        Method method = p;
        if (method != null) {
            try {
                method.invoke(th, th2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static boolean b(j.u uVar, int i2, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        long c2 = uVar.timeout().d() ? uVar.timeout().c() - nanoTime : Long.MAX_VALUE;
        uVar.timeout().a(Math.min(c2, timeUnit.toNanos(i2)) + nanoTime);
        try {
            j.c cVar = new j.c();
            while (uVar.b(cVar, 8192L) != -1) {
                cVar.n();
            }
            if (c2 == Long.MAX_VALUE) {
                uVar.timeout().a();
            } else {
                uVar.timeout().a(nanoTime + c2);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (c2 == Long.MAX_VALUE) {
                uVar.timeout().a();
            } else {
                uVar.timeout().a(nanoTime + c2);
            }
            return false;
        } catch (Throwable th) {
            if (c2 == Long.MAX_VALUE) {
                uVar.timeout().a();
            } else {
                uVar.timeout().a(nanoTime + c2);
            }
            throw th;
        }
    }

    public static int c(String str, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            char charAt = str.charAt(i4);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i4 + 1;
            }
        }
        return i2;
    }

    public static String d(String str, int i2, int i3) {
        int b2 = b(str, i2, i3);
        return str.substring(b2, c(str, b2, i3));
    }

    public static int c(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                return i2;
            }
        }
        return -1;
    }

    public static void a(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean d(String str) {
        return q.matcher(str).matches();
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!a(e2)) {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(j.u uVar, int i2, TimeUnit timeUnit) {
        try {
            return b(uVar, i2, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <K, V> Map<K, V> a(Map<K, V> map) {
        if (map.isEmpty()) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static boolean b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory a(String str, boolean z) {
        return new b(str, z);
    }

    public static String[] a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i2]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i2++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static int b(String str, int i2, int i3) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    private static boolean b(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static r b(List<i.g0.i.c> list) {
        r.a aVar = new r.a();
        for (i.g0.i.c cVar : list) {
            i.g0.a.f18446a.a(aVar, cVar.f18579a.utf8(), cVar.f18580b.utf8());
        }
        return aVar.a();
    }

    public static String a(s sVar, boolean z) {
        String g2;
        if (sVar.g().contains(":")) {
            g2 = "[" + sVar.g() + "]";
        } else {
            g2 = sVar.g();
        }
        if (!z && sVar.j() == s.c(sVar.n())) {
            return g2;
        }
        return g2 + ":" + sVar.j();
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static int a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], str) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static String[] a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static int a(String str, int i2, int i3, String str2) {
        while (i2 < i3) {
            if (str2.indexOf(str.charAt(i2)) != -1) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int a(String str, int i2, int i3, char c2) {
        while (i2 < i3) {
            if (str.charAt(i2) == c2) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static String a(String str) {
        InetAddress a2;
        if (str.contains(":")) {
            if (str.startsWith("[") && str.endsWith("]")) {
                a2 = a(str, 1, str.length() - 1);
            } else {
                a2 = a(str, 0, str.length());
            }
            if (a2 == null) {
                return null;
            }
            byte[] address = a2.getAddress();
            if (address.length == 16) {
                return a(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (b(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static Charset a(e eVar, Charset charset) {
        if (eVar.a(0L, f18451d)) {
            eVar.skip(f18451d.size());
            return f18456i;
        }
        if (eVar.a(0L, f18452e)) {
            eVar.skip(f18452e.size());
            return f18457j;
        }
        if (eVar.a(0L, f18453f)) {
            eVar.skip(f18453f.size());
            return f18458k;
        }
        if (eVar.a(0L, f18454g)) {
            eVar.skip(f18454g.size());
            return f18459l;
        }
        if (!eVar.a(0L, f18455h)) {
            return charset;
        }
        eVar.skip(f18455h.size());
        return m;
    }

    public static int a(String str, long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        if (timeUnit != null) {
            long millis = timeUnit.toMillis(j2);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            }
            if (millis != 0 || j2 <= 0) {
                return (int) millis;
            }
            throw new IllegalArgumentException(str + " too small.");
        }
        throw new NullPointerException("unit == null");
    }

    public static AssertionError a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress a(java.lang.String r10, int r11, int r12) {
        /*
            r0 = 16
            byte[] r0 = new byte[r0]
            r1 = -1
            r2 = 0
            r3 = 0
            r4 = -1
            r5 = -1
        L9:
            r6 = 0
            if (r11 >= r12) goto L7b
            int r7 = r0.length
            if (r3 != r7) goto L10
            return r6
        L10:
            int r7 = r11 + 2
            if (r7 > r12) goto L28
            r8 = 2
            java.lang.String r9 = "::"
            boolean r8 = r10.regionMatches(r11, r9, r2, r8)
            if (r8 == 0) goto L28
            if (r4 == r1) goto L20
            return r6
        L20:
            int r3 = r3 + 2
            r4 = r3
            if (r7 != r12) goto L26
            goto L7b
        L26:
            r5 = r7
            goto L4c
        L28:
            if (r3 == 0) goto L4b
            r7 = 1
            java.lang.String r8 = ":"
            boolean r8 = r10.regionMatches(r11, r8, r2, r7)
            if (r8 == 0) goto L36
            int r11 = r11 + 1
            goto L4b
        L36:
            java.lang.String r8 = "."
            boolean r11 = r10.regionMatches(r11, r8, r2, r7)
            if (r11 == 0) goto L4a
            int r11 = r3 + (-2)
            boolean r10 = a(r10, r5, r12, r0, r11)
            if (r10 != 0) goto L47
            return r6
        L47:
            int r3 = r3 + 2
            goto L7b
        L4a:
            return r6
        L4b:
            r5 = r11
        L4c:
            r11 = r5
            r7 = 0
        L4e:
            if (r11 >= r12) goto L61
            char r8 = r10.charAt(r11)
            int r8 = a(r8)
            if (r8 != r1) goto L5b
            goto L61
        L5b:
            int r7 = r7 << 4
            int r7 = r7 + r8
            int r11 = r11 + 1
            goto L4e
        L61:
            int r8 = r11 - r5
            if (r8 == 0) goto L7a
            r9 = 4
            if (r8 <= r9) goto L69
            goto L7a
        L69:
            int r6 = r3 + 1
            int r8 = r7 >>> 8
            r8 = r8 & 255(0xff, float:3.57E-43)
            byte r8 = (byte) r8
            r0[r3] = r8
            int r3 = r6 + 1
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r7 = (byte) r7
            r0[r6] = r7
            goto L9
        L7a:
            return r6
        L7b:
            int r10 = r0.length
            if (r3 == r10) goto L8e
            if (r4 != r1) goto L81
            return r6
        L81:
            int r10 = r0.length
            int r11 = r3 - r4
            int r10 = r10 - r11
            java.lang.System.arraycopy(r0, r4, r0, r10, r11)
            int r10 = r0.length
            int r10 = r10 - r3
            int r10 = r10 + r4
            java.util.Arrays.fill(r0, r4, r10, r2)
        L8e:
            java.net.InetAddress r10 = java.net.InetAddress.getByAddress(r0)     // Catch: java.net.UnknownHostException -> L93
            return r10
        L93:
            java.lang.AssertionError r10 = new java.lang.AssertionError
            r10.<init>()
            goto L9a
        L99:
            throw r10
        L9a:
            goto L99
        */
        throw new UnsupportedOperationException("Method not decompiled: i.g0.c.a(java.lang.String, int, int):java.net.InetAddress");
    }

    private static boolean a(String str, int i2, int i3, byte[] bArr, int i4) {
        int i5 = i4;
        while (i2 < i3) {
            if (i5 == bArr.length) {
                return false;
            }
            if (i5 != i4) {
                if (str.charAt(i2) != '.') {
                    return false;
                }
                i2++;
            }
            int i6 = i2;
            int i7 = 0;
            while (i6 < i3) {
                char charAt = str.charAt(i6);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                if ((i7 == 0 && i2 != i6) || (i7 = ((i7 * 10) + charAt) - 48) > 255) {
                    return false;
                }
                i6++;
            }
            if (i6 - i2 == 0) {
                return false;
            }
            bArr[i5] = (byte) i7;
            i5++;
            i2 = i6;
        }
        return i5 == i4 + 4;
    }

    private static String a(byte[] bArr) {
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i3 < bArr.length) {
            int i6 = i3;
            while (i6 < 16 && bArr[i6] == 0 && bArr[i6 + 1] == 0) {
                i6 += 2;
            }
            int i7 = i6 - i3;
            if (i7 > i5 && i7 >= 4) {
                i4 = i3;
                i5 = i7;
            }
            i3 = i6 + 2;
        }
        j.c cVar = new j.c();
        while (i2 < bArr.length) {
            if (i2 == i4) {
                cVar.writeByte(58);
                i2 += i5;
                if (i2 == 16) {
                    cVar.writeByte(58);
                }
            } else {
                if (i2 > 0) {
                    cVar.writeByte(58);
                }
                cVar.a(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                i2 += 2;
            }
        }
        return cVar.y();
    }

    public static X509TrustManager a() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e2) {
            throw a("No System TLS", (Exception) e2);
        }
    }
}
