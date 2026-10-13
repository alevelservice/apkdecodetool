package okhttp3.internal.platform;

import android.os.Build;
import android.util.Log;
import i.x;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidPlatform.java */
/* loaded from: classes2.dex */
public class a extends e {

    /* renamed from: c, reason: collision with root package name */
    private final d<Socket> f20169c;

    /* renamed from: d, reason: collision with root package name */
    private final d<Socket> f20170d;

    /* renamed from: e, reason: collision with root package name */
    private final d<Socket> f20171e;

    /* renamed from: f, reason: collision with root package name */
    private final d<Socket> f20172f;

    /* renamed from: g, reason: collision with root package name */
    private final c f20173g = c.a();

    /* compiled from: AndroidPlatform.java */
    /* renamed from: okhttp3.internal.platform.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0265a extends i.g0.k.c {

        /* renamed from: a, reason: collision with root package name */
        private final Object f20174a;

        /* renamed from: b, reason: collision with root package name */
        private final Method f20175b;

        C0265a(Object obj, Method method) {
            this.f20174a = obj;
            this.f20175b = method;
        }

        @Override // i.g0.k.c
        public List<Certificate> a(List<Certificate> list, String str) {
            try {
                return (List) this.f20175b.invoke(this.f20174a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                sSLPeerUnverifiedException.initCause(e3);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0265a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* compiled from: AndroidPlatform.java */
    /* loaded from: classes2.dex */
    static final class b implements i.g0.k.e {

        /* renamed from: a, reason: collision with root package name */
        private final X509TrustManager f20176a;

        /* renamed from: b, reason: collision with root package name */
        private final Method f20177b;

        b(X509TrustManager x509TrustManager, Method method) {
            this.f20177b = method;
            this.f20176a = x509TrustManager;
        }

        @Override // i.g0.k.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f20177b.invoke(this.f20176a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e2) {
                throw i.g0.c.a("unable to get issues and signature", (Exception) e2);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f20176a.equals(bVar.f20176a) && this.f20177b.equals(bVar.f20177b);
        }

        public int hashCode() {
            return this.f20176a.hashCode() + (this.f20177b.hashCode() * 31);
        }
    }

    a(Class<?> cls, d<Socket> dVar, d<Socket> dVar2, d<Socket> dVar3, d<Socket> dVar4) {
        this.f20169c = dVar;
        this.f20170d = dVar2;
        this.f20171e = dVar3;
        this.f20172f = dVar4;
    }

    private static boolean e() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // okhttp3.internal.platform.e
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) {
        try {
            socket.connect(inetSocketAddress, i2);
        } catch (AssertionError e2) {
            if (!i.g0.c.a(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (ClassCastException e3) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e3);
                throw iOException;
            }
            throw e3;
        } catch (SecurityException e4) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e4);
            throw iOException2;
        }
    }

    @Override // okhttp3.internal.platform.e
    @Nullable
    public String b(SSLSocket sSLSocket) {
        byte[] bArr;
        d<Socket> dVar = this.f20171e;
        if (dVar == null || !dVar.a((d<Socket>) sSLSocket) || (bArr = (byte[]) this.f20171e.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, i.g0.c.f18456i);
    }

    /* compiled from: AndroidPlatform.java */
    /* loaded from: classes2.dex */
    static final class c {

        /* renamed from: a, reason: collision with root package name */
        private final Method f20178a;

        /* renamed from: b, reason: collision with root package name */
        private final Method f20179b;

        /* renamed from: c, reason: collision with root package name */
        private final Method f20180c;

        c(Method method, Method method2, Method method3) {
            this.f20178a = method;
            this.f20179b = method2;
            this.f20180c = method3;
        }

        Object a(String str) {
            Method method = this.f20178a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    this.f20179b.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        boolean a(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.f20180c.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        static c a() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new c(method3, method2, method);
        }
    }

    @Override // okhttp3.internal.platform.e
    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return b(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw i.g0.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw i.g0.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e4) {
            e = e4;
            throw i.g0.c.a("unable to determine cleartext support", e);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return a(str, cls, obj);
        }
    }

    @Override // okhttp3.internal.platform.e
    public void a(SSLSocket sSLSocket, String str, List<x> list) {
        if (str != null) {
            this.f20169c.c(sSLSocket, true);
            this.f20170d.c(sSLSocket, str);
        }
        d<Socket> dVar = this.f20172f;
        if (dVar == null || !dVar.a((d<Socket>) sSLSocket)) {
            return;
        }
        this.f20172f.d(sSLSocket, e.b(list));
    }

    public static e b() {
        Class<?> cls;
        d dVar;
        d dVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            d dVar3 = new d(null, "setUseSessionTickets", Boolean.TYPE);
            d dVar4 = new d(null, "setHostname", String.class);
            if (e()) {
                d dVar5 = new d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                dVar2 = new d(null, "setAlpnProtocols", byte[].class);
                dVar = dVar5;
            } else {
                dVar = null;
                dVar2 = null;
            }
            return new a(cls2, dVar3, dVar4, dVar, dVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    @Override // okhttp3.internal.platform.e
    public void a(int i2, String str, @Nullable Throwable th) {
        int min;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int indexOf = str.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + 4000);
                str.substring(i3, min);
                if (min >= indexOf) {
                    break;
                } else {
                    i3 = min;
                }
            }
            i3 = min + 1;
        }
    }

    @Override // okhttp3.internal.platform.e
    public Object a(String str) {
        return this.f20173g.a(str);
    }

    @Override // okhttp3.internal.platform.e
    public void a(String str, Object obj) {
        if (this.f20173g.a(obj)) {
            return;
        }
        a(5, str, (Throwable) null);
    }

    @Override // okhttp3.internal.platform.e
    public i.g0.k.e b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    private boolean a(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    @Override // okhttp3.internal.platform.e
    public i.g0.k.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0265a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000b, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 22) goto L11;
     */
    @Override // okhttp3.internal.platform.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.net.ssl.SSLContext a() {
        /*
            r3 = this;
            r0 = 1
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.NoClassDefFoundError -> L10
            r2 = 16
            if (r1 < r2) goto Le
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.NoClassDefFoundError -> L10
            r2 = 22
            if (r1 >= r2) goto Le
            goto L11
        Le:
            r0 = 0
            goto L11
        L10:
        L11:
            if (r0 == 0) goto L1a
            java.lang.String r0 = "TLSv1.2"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: java.security.NoSuchAlgorithmException -> L1a
            return r0
        L1a:
            java.lang.String r0 = "TLS"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: java.security.NoSuchAlgorithmException -> L21
            return r0
        L21:
            r0 = move-exception
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "No TLS provider"
            r1.<init>(r2, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.a.a():javax.net.ssl.SSLContext");
    }
}
