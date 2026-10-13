package i.g0.g;

import i.s;
import i.z;
import java.net.Proxy;

/* compiled from: RequestLine.java */
/* loaded from: classes2.dex */
public final class i {
    public static String a(z zVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(zVar.e());
        sb.append(' ');
        if (b(zVar, type)) {
            sb.append(zVar.g());
        } else {
            sb.append(a(zVar.g()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(z zVar, Proxy.Type type) {
        return !zVar.d() && type == Proxy.Type.HTTP;
    }

    public static String a(s sVar) {
        String c2 = sVar.c();
        String e2 = sVar.e();
        if (e2 == null) {
            return c2;
        }
        return c2 + '?' + e2;
    }
}
