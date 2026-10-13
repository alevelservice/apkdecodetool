package e.f.b.a;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CacheKeyUtil.java */
/* loaded from: classes.dex */
public final class e {
    public static String a(d dVar) {
        try {
            if (dVar instanceof f) {
                return c(((f) dVar).b().get(0));
            }
            return c(dVar);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static List<String> b(d dVar) {
        try {
            if (dVar instanceof f) {
                List<d> b2 = ((f) dVar).b();
                ArrayList arrayList = new ArrayList(b2.size());
                for (int i2 = 0; i2 < b2.size(); i2++) {
                    arrayList.add(c(b2.get(i2)));
                }
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(c(dVar));
            return arrayList2;
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static String c(d dVar) {
        return e.f.c.j.c.a(dVar.a().getBytes("UTF-8"));
    }
}
