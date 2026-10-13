package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.Nullable;

/* compiled from: Atomic.kt */
/* loaded from: classes2.dex */
public abstract class d<T> extends q {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20065a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_consensus");
    private volatile Object _consensus;

    public d() {
        Object obj;
        obj = c.f20064a;
        this._consensus = obj;
    }

    private final Object d(Object obj) {
        return c(obj) ? obj : this._consensus;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.q
    @Nullable
    public final Object a(@Nullable Object obj) {
        Object obj2;
        Object obj3 = this._consensus;
        obj2 = c.f20064a;
        if (obj3 == obj2) {
            obj3 = d(b(obj));
        }
        a(obj, obj3);
        return obj3;
    }

    public abstract void a(T t, @Nullable Object obj);

    @Nullable
    public abstract Object b(T t);

    public final boolean c(@Nullable Object obj) {
        Object obj2;
        Object obj3;
        obj2 = c.f20064a;
        if (obj != obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f20065a;
            obj3 = c.f20064a;
            return atomicReferenceFieldUpdater.compareAndSet(this, obj3, obj);
        }
        throw new IllegalStateException("Check failed.".toString());
    }
}
