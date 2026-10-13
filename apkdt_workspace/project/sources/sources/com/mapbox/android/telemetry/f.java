package com.mapbox.android.telemetry;

import i.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: CertificatePinnerFactory.java */
/* loaded from: classes2.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<o, Map<String, List<String>>> f15575a = new a();

    /* compiled from: CertificatePinnerFactory.java */
    /* loaded from: classes2.dex */
    static class a extends HashMap<o, Map<String, List<String>>> {
        a() {
            put(o.STAGING, e0.f15563a);
            put(o.COM, j.f15610a);
            put(o.CHINA, g.f15577a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i.g a(o oVar, e eVar) {
        g.a aVar = new g.a();
        Map<String, List<String>> a2 = a(oVar);
        a(a2, eVar);
        a(a2, aVar);
        return aVar.a();
    }

    Map<String, List<String>> a(o oVar) {
        return f15575a.get(oVar);
    }

    private void a(Map<String, List<String>> map, g.a aVar) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            Iterator<String> it = entry.getValue().iterator();
            while (it.hasNext()) {
                aVar.a(entry.getKey(), String.format("sha256/%s", it.next()));
            }
        }
    }

    private Map<String, List<String>> a(Map<String, List<String>> map, e eVar) {
        String a2 = a(map);
        List<String> list = map.get(a2);
        if (list != null) {
            a(eVar, list);
            map.put(a2, list);
        }
        return map;
    }

    private String a(Map<String, List<String>> map) {
        return map.keySet().iterator().next();
    }

    private List<String> a(e eVar, List<String> list) {
        for (String str : list) {
            if (eVar.b(str)) {
                list.remove(str);
            }
        }
        return list;
    }
}
