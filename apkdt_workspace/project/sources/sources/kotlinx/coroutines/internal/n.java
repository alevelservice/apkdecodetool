package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.r1;
import org.jetbrains.annotations.NotNull;

/* compiled from: MainDispatchers.kt */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final r1 f20088a = new n().a();

    private n() {
    }

    private final r1 a() {
        Object next;
        r1 a2;
        try {
            h hVar = h.f20071b;
            ClassLoader classLoader = MainDispatcherFactory.class.getClassLoader();
            kotlin.jvm.d.h.a((Object) classLoader, "clz.classLoader");
            List a3 = hVar.a(MainDispatcherFactory.class, classLoader);
            Iterator it = a3.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((MainDispatcherFactory) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) next;
            return (mainDispatcherFactory == null || (a2 = o.a(mainDispatcherFactory, a3)) == null) ? new p(null, null, 2, null) : a2;
        } catch (Throwable th) {
            return new p(th, null, 2, null);
        }
    }
}
