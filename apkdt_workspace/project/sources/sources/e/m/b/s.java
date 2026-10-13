package e.m.b;

import android.content.Context;
import g.a.c.a.m;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MapboxMapFactory.java */
/* loaded from: classes2.dex */
public class s extends io.flutter.plugin.platform.g {

    /* renamed from: b, reason: collision with root package name */
    private final AtomicInteger f18099b;

    /* renamed from: c, reason: collision with root package name */
    private final m.d f18100c;

    public s(AtomicInteger atomicInteger, m.d dVar) {
        super(g.a.c.a.n.f18234a);
        this.f18099b = atomicInteger;
        this.f18100c = dVar;
    }

    @Override // io.flutter.plugin.platform.g
    public io.flutter.plugin.platform.f a(Context context, int i2, Object obj) {
        Map map = (Map) obj;
        q qVar = new q();
        i.a(map.get("options"), qVar);
        if (map.containsKey("initialCameraPosition")) {
            qVar.a(i.b(map.get("initialCameraPosition")));
        }
        return qVar.a(i2, context, this.f18099b, this.f18100c, (String) map.get("accessToken"));
    }
}
