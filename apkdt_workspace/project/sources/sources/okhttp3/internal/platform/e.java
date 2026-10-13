package okhttp3.internal.platform;

import i.w;
import i.x;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: Platform.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final e f20186a = b();

    /* renamed from: b, reason: collision with root package name */
    private static final Logger f20187b = Logger.getLogger(w.class.getName());

    private static e b() {
        b b2;
        e b3 = a.b();
        if (b3 != null) {
            return b3;
        }
        if (d() && (b2 = b.b()) != null) {
            return b2;
        }
        c b4 = c.b();
        if (b4 != null) {
            return b4;
        }
        e b5 = JdkWithJettyBootPlatform.b();
        return b5 != null ? b5 : new e();
    }

    public static e c() {
        return f20186a;
    }

    public static boolean d() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) {
        socket.connect(inetSocketAddress, i2);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void a(SSLSocket sSLSocket, @Nullable String str, List<x> list) {
    }

    public void a(SSLSocketFactory sSLSocketFactory) {
    }

    @Nullable
    public String b(SSLSocket sSLSocket) {
        return null;
    }

    public boolean b(String str) {
        return true;
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    public void a(int i2, String str, @Nullable Throwable th) {
        f20187b.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public Object a(String str) {
        if (f20187b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(List<x> list) {
        j.c cVar = new j.c();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            x xVar = list.get(i2);
            if (xVar != x.HTTP_1_0) {
                cVar.writeByte(xVar.toString().length());
                cVar.a(xVar.toString());
            }
        }
        return cVar.c();
    }

    public static List<String> a(List<x> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            x xVar = list.get(i2);
            if (xVar != x.HTTP_1_0) {
                arrayList.add(xVar.toString());
            }
        }
        return arrayList;
    }

    public i.g0.k.c a(X509TrustManager x509TrustManager) {
        return new i.g0.k.a(b(x509TrustManager));
    }

    public SSLContext a() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    public i.g0.k.e b(X509TrustManager x509TrustManager) {
        return new i.g0.k.b(x509TrustManager.getAcceptedIssuers());
    }
}
