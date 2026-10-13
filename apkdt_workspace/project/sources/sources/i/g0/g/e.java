package i.g0.g;

import i.b0;
import i.l;
import i.m;
import i.r;
import i.s;
import java.util.List;

/* compiled from: HttpHeaders.java */
/* loaded from: classes2.dex */
public final class e {
    static {
        j.f.encodeUtf8("\"\\");
        j.f.encodeUtf8("\t ,=");
    }

    public static long a(b0 b0Var) {
        return a(b0Var.m());
    }

    public static boolean b(b0 b0Var) {
        if (b0Var.t().e().equals("HEAD")) {
            return false;
        }
        int k2 = b0Var.k();
        return (((k2 >= 100 && k2 < 200) || k2 == 204 || k2 == 304) && a(b0Var) == -1 && !"chunked".equalsIgnoreCase(b0Var.b("Transfer-Encoding"))) ? false : true;
    }

    public static long a(r rVar) {
        return a(rVar.a("Content-Length"));
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static void a(m mVar, s sVar, r rVar) {
        if (mVar == m.f18763a) {
            return;
        }
        List<l> a2 = l.a(sVar, rVar);
        if (a2.isEmpty()) {
            return;
        }
        mVar.a(sVar, a2);
    }

    public static int b(String str, int i2) {
        char charAt;
        while (i2 < str.length() && ((charAt = str.charAt(i2)) == ' ' || charAt == '\t')) {
            i2++;
        }
        return i2;
    }

    public static int a(String str, int i2, String str2) {
        while (i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            i2++;
        }
        return i2;
    }

    public static int a(String str, int i2) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }
}
