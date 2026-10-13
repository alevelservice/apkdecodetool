package k.b.a.v;

import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DateTimeTextProvider.java */
/* loaded from: classes2.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicReference<g> f19857a = new AtomicReference<>();

    /* compiled from: DateTimeTextProvider.java */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        static final g f19858a = a();

        static g a() {
            g.f19857a.compareAndSet(null, new k());
            return (g) g.f19857a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g b() {
        return a.f19858a;
    }

    public abstract String a(k.b.a.x.i iVar, long j2, l lVar, Locale locale);

    public abstract Iterator<Map.Entry<String, Long>> a(k.b.a.x.i iVar, l lVar, Locale locale);
}
