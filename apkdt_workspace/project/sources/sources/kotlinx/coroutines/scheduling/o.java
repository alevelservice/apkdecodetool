package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.d.h;
import kotlin.ranges.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: WorkQueue.kt */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20045b = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "lastScheduledTask");

    /* renamed from: c, reason: collision with root package name */
    static final AtomicIntegerFieldUpdater f20046c = AtomicIntegerFieldUpdater.newUpdater(o.class, "producerIndex");

    /* renamed from: d, reason: collision with root package name */
    static final AtomicIntegerFieldUpdater f20047d = AtomicIntegerFieldUpdater.newUpdater(o.class, "consumerIndex");

    /* renamed from: a, reason: collision with root package name */
    private final AtomicReferenceArray<i> f20048a = new AtomicReferenceArray<>(128);
    private volatile Object lastScheduledTask = null;
    volatile int producerIndex = 0;
    volatile int consumerIndex = 0;

    @Nullable
    public final i b() {
        i iVar = (i) f20045b.getAndSet(this, null);
        if (iVar != null) {
            return iVar;
        }
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                return null;
            }
            int i3 = i2 & 127;
            if (((i) this.f20048a.get(i3)) != null && f20047d.compareAndSet(this, i2, i2 + 1)) {
                return (i) this.f20048a.getAndSet(i3, null);
            }
        }
    }

    public final int c() {
        return this.lastScheduledTask != null ? a() + 1 : a();
    }

    public final int a() {
        return this.producerIndex - this.consumerIndex;
    }

    public final boolean a(@NotNull i iVar, @NotNull e eVar) {
        h.b(iVar, "task");
        h.b(eVar, "globalQueue");
        i iVar2 = (i) f20045b.getAndSet(this, iVar);
        if (iVar2 != null) {
            return b(iVar2, eVar);
        }
        return true;
    }

    public final boolean a(@NotNull o oVar, @NotNull e eVar) {
        int a2;
        i iVar;
        h.b(oVar, "victim");
        h.b(eVar, "globalQueue");
        long a3 = m.f20044f.a();
        int a4 = oVar.a();
        if (a4 == 0) {
            return a(a3, oVar, eVar);
        }
        a2 = q.a(a4 / 2, 1);
        int i2 = 0;
        boolean z = false;
        while (i2 < a2) {
            while (true) {
                int i3 = oVar.consumerIndex;
                iVar = null;
                if (i3 - oVar.producerIndex != 0) {
                    int i4 = i3 & 127;
                    i iVar2 = (i) oVar.f20048a.get(i4);
                    if (iVar2 != null) {
                        if (!(a3 - iVar2.f20035e >= m.f20039a || oVar.a() > m.f20040b)) {
                            break;
                        }
                        if (f20047d.compareAndSet(oVar, i3, i3 + 1)) {
                            iVar = (i) oVar.f20048a.getAndSet(i4, null);
                            break;
                        }
                    }
                } else {
                    break;
                }
            }
            if (iVar == null) {
                break;
            }
            a(iVar, eVar);
            i2++;
            z = true;
        }
        return z;
    }

    public final boolean b(@NotNull i iVar, @NotNull e eVar) {
        h.b(iVar, "task");
        h.b(eVar, "globalQueue");
        boolean z = true;
        while (!a(iVar)) {
            b(eVar);
            z = false;
        }
        return z;
    }

    private final void b(e eVar) {
        int a2;
        i iVar;
        a2 = q.a(a() / 2, 1);
        for (int i2 = 0; i2 < a2; i2++) {
            while (true) {
                int i3 = this.consumerIndex;
                iVar = null;
                if (i3 - this.producerIndex == 0) {
                    break;
                }
                int i4 = i3 & 127;
                if (((i) this.f20048a.get(i4)) != null && f20047d.compareAndSet(this, i3, i3 + 1)) {
                    iVar = (i) this.f20048a.getAndSet(i4, null);
                    break;
                }
            }
            if (iVar == null) {
                return;
            }
            a(eVar, iVar);
        }
    }

    private final boolean a(long j2, o oVar, e eVar) {
        i iVar = (i) oVar.lastScheduledTask;
        if (iVar == null || j2 - iVar.f20035e < m.f20039a || !f20045b.compareAndSet(oVar, iVar, null)) {
            return false;
        }
        a(iVar, eVar);
        return true;
    }

    private final void a(e eVar, i iVar) {
        if (!eVar.a((e) iVar)) {
            throw new IllegalStateException("GlobalQueue could not be closed yet".toString());
        }
    }

    public final void a(@NotNull e eVar) {
        i iVar;
        h.b(eVar, "globalQueue");
        i iVar2 = (i) f20045b.getAndSet(this, null);
        if (iVar2 != null) {
            a(eVar, iVar2);
        }
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                iVar = null;
            } else {
                int i3 = i2 & 127;
                if (((i) this.f20048a.get(i3)) != null && f20047d.compareAndSet(this, i2, i2 + 1)) {
                    iVar = (i) this.f20048a.getAndSet(i3, null);
                }
            }
            if (iVar == null) {
                return;
            } else {
                a(eVar, iVar);
            }
        }
    }

    private final boolean a(i iVar) {
        if (a() == 127) {
            return false;
        }
        int i2 = this.producerIndex & 127;
        if (this.f20048a.get(i2) != null) {
            return false;
        }
        this.f20048a.lazySet(i2, iVar);
        f20046c.incrementAndGet(this);
        return true;
    }
}
