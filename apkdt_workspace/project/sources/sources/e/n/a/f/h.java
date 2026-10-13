package e.n.a.f;

import java.util.HashMap;
import java.util.Map;

/* compiled from: SqlErrorInfo.java */
/* loaded from: classes2.dex */
public class h {
    public static Map<String, Object> a(f fVar) {
        e.n.a.d a2 = fVar.a();
        if (a2 == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("sql", a2.c());
        hashMap.put("arguments", a2.b());
        return hashMap;
    }
}
