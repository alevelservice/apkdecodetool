package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: LockFreeTaskQueue.kt */
/* loaded from: classes2.dex */
public class l<E> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f20078a = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_cur$internal");
    public volatile /* synthetic */ Object _cur$internal;

    public l(boolean z) {
        this._cur$internal = new LockFreeTaskQueueCore(8, z);
    }

    public final void a() {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur$internal;
            if (lockFreeTaskQueueCore.a()) {
                return;
            } else {
                f20078a.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.d());
            }
        }
    }

    public final int b() {
        return ((LockFreeTaskQueueCore) this._cur$internal).b();
    }

    @Nullable
    public final E c() {
        E e2;
        Object obj;
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur$internal;
            while (true) {
                long j2 = lockFreeTaskQueueCore._state$internal;
                e2 = null;
                if ((1152921504606846976L & j2) != 0) {
                    e2 = (E) LockFreeTaskQueueCore.f20081g;
                    break;
                }
                LockFreeTaskQueueCore.a aVar = LockFreeTaskQueueCore.f20082h;
                int i2 = (int) ((1073741823 & j2) >> 0);
                if ((lockFreeTaskQueueCore.f20083a & ((int) ((1152921503533105152L & j2) >> 30))) == (lockFreeTaskQueueCore.f20083a & i2)) {
                    break;
                }
                obj = lockFreeTaskQueueCore.f20084b.get(lockFreeTaskQueueCore.f20083a & i2);
                if (obj == null) {
                    if (lockFreeTaskQueueCore.f20086d) {
                        break;
                    }
                } else {
                    if (obj instanceof LockFreeTaskQueueCore.b) {
                        break;
                    }
                    int i3 = (i2 + 1) & 1073741823;
                    if (LockFreeTaskQueueCore.f20080f.compareAndSet(lockFreeTaskQueueCore, j2, LockFreeTaskQueueCore.f20082h.a(j2, i3))) {
                        lockFreeTaskQueueCore.f20084b.set(lockFreeTaskQueueCore.f20083a & i2, null);
                        break;
                    }
                    if (lockFreeTaskQueueCore.f20086d) {
                        LockFreeTaskQueueCore lockFreeTaskQueueCore2 = lockFreeTaskQueueCore;
                        do {
                            lockFreeTaskQueueCore2 = lockFreeTaskQueueCore2.a(i2, i3);
                        } while (lockFreeTaskQueueCore2 != null);
                    }
                }
            }
            e2 = (E) obj;
            if (e2 != LockFreeTaskQueueCore.f20081g) {
                return e2;
            }
            f20078a.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.d());
        }
    }

    public final boolean a(@NotNull E e2) {
        kotlin.jvm.d.h.b(e2, "element");
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur$internal;
            int a2 = lockFreeTaskQueueCore.a((LockFreeTaskQueueCore) e2);
            if (a2 == 0) {
                return true;
            }
            if (a2 == 1) {
                f20078a.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.d());
            } else if (a2 == 2) {
                return false;
            }
        }
    }
}
