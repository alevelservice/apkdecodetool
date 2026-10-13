package okhttp3.internal.platform;

import i.x;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class JdkWithJettyBootPlatform extends e {

    /* renamed from: c, reason: collision with root package name */
    private final Method f20161c;

    /* renamed from: d, reason: collision with root package name */
    private final Method f20162d;

    /* renamed from: e, reason: collision with root package name */
    private final Method f20163e;

    /* renamed from: f, reason: collision with root package name */
    private final Class<?> f20164f;

    /* renamed from: g, reason: collision with root package name */
    private final Class<?> f20165g;

    /* loaded from: classes2.dex */
    private static class JettyNegoProvider implements InvocationHandler {

        /* renamed from: e, reason: collision with root package name */
        private final List<String> f20166e;

        /* renamed from: f, reason: collision with root package name */
        boolean f20167f;

        /* renamed from: g, reason: collision with root package name */
        String f20168g;

        JettyNegoProvider(List<String> list) {
            this.f20166e = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = i.g0.c.f18449b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f20167f = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f20166e;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                List list = (List) objArr[0];
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (this.f20166e.contains(list.get(i2))) {
                        String str = (String) list.get(i2);
                        this.f20168g = str;
                        return str;
                    }
                }
                String str2 = this.f20166e.get(0);
                this.f20168g = str2;
                return str2;
            }
            if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
                this.f20168g = (String) objArr[0];
                return null;
            }
            return method.invoke(this, objArr);
        }
    }

    JdkWithJettyBootPlatform(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f20161c = method;
        this.f20162d = method2;
        this.f20163e = method3;
        this.f20164f = cls;
        this.f20165g = cls2;
    }

    @Override // okhttp3.internal.platform.e
    public void a(SSLSocket sSLSocket, String str, List<x> list) {
        try {
            this.f20161c.invoke(null, sSLSocket, Proxy.newProxyInstance(e.class.getClassLoader(), new Class[]{this.f20164f, this.f20165g}, new JettyNegoProvider(e.a(list))));
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw i.g0.c.a("unable to set alpn", (Exception) e2);
        }
    }

    @Override // okhttp3.internal.platform.e
    @Nullable
    public String b(SSLSocket sSLSocket) {
        try {
            JettyNegoProvider jettyNegoProvider = (JettyNegoProvider) Proxy.getInvocationHandler(this.f20162d.invoke(null, sSLSocket));
            if (!jettyNegoProvider.f20167f && jettyNegoProvider.f20168g == null) {
                e.c().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (jettyNegoProvider.f20167f) {
                return null;
            }
            return jettyNegoProvider.f20168g;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw i.g0.c.a("unable to get selected protocol", (Exception) e2);
        }
    }

    @Override // okhttp3.internal.platform.e
    public void a(SSLSocket sSLSocket) {
        try {
            this.f20163e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw i.g0.c.a("unable to remove alpn", (Exception) e2);
        }
    }

    public static e b() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new JdkWithJettyBootPlatform(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }
}
