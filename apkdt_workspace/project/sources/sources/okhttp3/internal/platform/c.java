package okhttp3.internal.platform;

import i.x;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Jdk9Platform.java */
/* loaded from: classes2.dex */
public final class c extends e {

    /* renamed from: c, reason: collision with root package name */
    final Method f20181c;

    /* renamed from: d, reason: collision with root package name */
    final Method f20182d;

    c(Method method, Method method2) {
        this.f20181c = method;
        this.f20182d = method2;
    }

    @Override // okhttp3.internal.platform.e
    public void a(SSLSocket sSLSocket, String str, List<x> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a2 = e.a(list);
            this.f20181c.invoke(sSLParameters, a2.toArray(new String[a2.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw i.g0.c.a("unable to set ssl parameters", (Exception) e2);
        }
    }

    @Override // okhttp3.internal.platform.e
    @Nullable
    public String b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f20182d.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw i.g0.c.a("unable to get selected protocols", (Exception) e2);
        }
    }

    public static c b() {
        try {
            return new c(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
