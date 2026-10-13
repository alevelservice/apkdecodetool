package e.b.b.a.a.b.g;

import java.util.HashMap;
import java.util.Map;

/* compiled from: PerformanceID.java */
/* loaded from: classes.dex */
public enum a {
    MONITORPOINT_PERFORMANCE("performance"),
    MONITORPOINT_FOOTPRINT("footprint"),
    MONITORPOINT_KEYBIZTRACE("keybiztrace");


    /* renamed from: e, reason: collision with root package name */
    private static final Map<String, a> f16913e = new HashMap();
    private String desc;

    static {
        for (a aVar : values()) {
            f16913e.put(aVar.desc, aVar);
        }
    }

    a(String str) {
        this.desc = str;
    }

    public static a fromString(String str) {
        return f16913e.get(str);
    }

    public String getDes() {
        return this.desc;
    }
}
