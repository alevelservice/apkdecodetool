package k.b.a.y;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ZoneRulesProvider.java */
/* loaded from: classes2.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    private static final CopyOnWriteArrayList<i> f19901a = new CopyOnWriteArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    private static final ConcurrentMap<String, i> f19902b = new ConcurrentHashMap(512, 0.75f, 2);

    static {
        h.b();
    }

    private static i a(String str) {
        i iVar = f19902b.get(str);
        if (iVar != null) {
            return iVar;
        }
        if (f19902b.isEmpty()) {
            throw new g("No time-zone data files registered");
        }
        throw new g("Unknown time-zone ID: " + str);
    }

    public static Set<String> b() {
        return Collections.unmodifiableSet(f19902b.keySet());
    }

    protected abstract Set<String> a();

    protected abstract f a(String str, boolean z);

    public static f b(String str, boolean z) {
        k.b.a.w.d.a(str, "zoneId");
        return a(str).a(str, z);
    }

    private static void b(i iVar) {
        for (String str : iVar.a()) {
            k.b.a.w.d.a(str, "zoneId");
            if (f19902b.putIfAbsent(str, iVar) != null) {
                throw new g("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + iVar);
            }
        }
    }

    public static void a(i iVar) {
        k.b.a.w.d.a(iVar, "provider");
        b(iVar);
        f19901a.add(iVar);
    }
}
