package kotlinx.coroutines.internal;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: LockFreeTaskQueue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u0000 5*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u000256B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J3\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000e2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u0013J-\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u001b\"\u0004\b\u0001\u0010\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0013\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\"\u0010#J&\u0010%\u001a\u0004\u0018\u00010\u00012\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0019H\u0086\b¢\u0006\u0004\b%\u0010&J3\u0010)\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000e2\u0006\u0010'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0003H\u0002¢\u0006\u0004\b)\u0010*R\u001e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010.R\u0013\u0010/\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b/\u0010\u0013R\u0016\u00100\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010.R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u00101R\u0013\u00104\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b2\u00103¨\u00067"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "", "E", "", "capacity", "", "singleConsumer", "<init>", "(IZ)V", "element", "addLast", "(Ljava/lang/Object;)I", "", "state", "Lkotlinx/coroutines/internal/Core;", "allocateNextCopy", "(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "allocateOrGetNextCopy", "close", "()Z", HummerConstants.INDEX, "fillPlaceholder", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "isClosed", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "markFrozen", "()J", HummerConstants.HUMMER_NEXT, "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "removeFirstOrNull", "()Ljava/lang/Object;", "predicate", "removeFirstOrNullIf", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "oldHead", "newHead", "removeSlowPath", "(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "array", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "I", "isEmpty", "mask", "Z", "getSize", "()I", "size", "Companion", "Placeholder", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.internal.m, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class LockFreeTaskQueueCore<E> {
    private volatile Object _next;
    public volatile /* synthetic */ long _state$internal;

    /* renamed from: a, reason: collision with root package name */
    private final int f20083a;

    /* renamed from: b, reason: collision with root package name */
    private final AtomicReferenceArray<Object> f20084b;

    /* renamed from: c, reason: collision with root package name */
    private final int f20085c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f20086d;

    /* renamed from: h, reason: collision with root package name */
    public static final a f20082h = new a(null);

    /* renamed from: g, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final t f20081g = new t("REMOVE_FROZEN");

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20079e = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, Object.class, "_next");

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f20080f = AtomicLongFieldUpdater.newUpdater(LockFreeTaskQueueCore.class, "_state$internal");

    /* compiled from: LockFreeTaskQueue.kt */
    /* renamed from: kotlinx.coroutines.internal.m$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public final int a(long j2) {
            return (j2 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long a(long j2, int i2) {
            return a(j2, 1073741823L) | (i2 << 0);
        }

        public final long a(long j2, long j3) {
            return j2 & (j3 ^ (-1));
        }

        public final long b(long j2, int i2) {
            return a(j2, 1152921503533105152L) | (i2 << 30);
        }

        public /* synthetic */ a(kotlin.jvm.d.e eVar) {
            this();
        }
    }

    /* compiled from: LockFreeTaskQueue.kt */
    /* renamed from: kotlinx.coroutines.internal.m$b */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        @JvmField
        public final int f20087a;

        public b(int i2) {
            this.f20087a = i2;
        }
    }

    public LockFreeTaskQueueCore(int i2, boolean z) {
        this.f20085c = i2;
        this.f20086d = z;
        int i3 = this.f20085c;
        this.f20083a = i3 - 1;
        this._next = null;
        this._state$internal = 0L;
        this.f20084b = new AtomicReferenceArray<>(i3);
        if (this.f20083a <= 1073741823) {
            if (!((this.f20085c & this.f20083a) == 0)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final long f() {
        long j2;
        long j3;
        do {
            j2 = this._state$internal;
            if ((j2 & 1152921504606846976L) != 0) {
                return j2;
            }
            j3 = j2 | 1152921504606846976L;
        } while (!f20080f.compareAndSet(this, j2, j3));
        return j3;
    }

    @NotNull
    public final LockFreeTaskQueueCore<E> d() {
        return b(f());
    }

    @Nullable
    public final Object e() {
        Object obj;
        while (true) {
            long j2 = this._state$internal;
            if ((1152921504606846976L & j2) == 0) {
                int i2 = (int) ((1073741823 & j2) >> 0);
                if ((this.f20083a & ((int) ((1152921503533105152L & j2) >> 30))) == (this.f20083a & i2)) {
                    return null;
                }
                obj = this.f20084b.get(this.f20083a & i2);
                if (obj == null) {
                    if (this.f20086d) {
                        return null;
                    }
                } else {
                    if (obj instanceof b) {
                        return null;
                    }
                    int i3 = (i2 + 1) & 1073741823;
                    if (f20080f.compareAndSet(this, j2, f20082h.a(j2, i3))) {
                        this.f20084b.set(this.f20083a & i2, null);
                        break;
                    }
                    if (this.f20086d) {
                        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = this;
                        do {
                            lockFreeTaskQueueCore = lockFreeTaskQueueCore.a(i2, i3);
                        } while (lockFreeTaskQueueCore != null);
                    }
                }
            } else {
                return f20081g;
            }
        }
        return obj;
    }

    public final int b() {
        long j2 = this._state$internal;
        return 1073741823 & (((int) ((j2 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j2) >> 0)));
    }

    public final boolean c() {
        long j2 = this._state$internal;
        return ((int) ((1073741823 & j2) >> 0)) == ((int) ((j2 & 1152921503533105152L) >> 30));
    }

    private final LockFreeTaskQueueCore<E> a(int i2, E e2) {
        Object obj = this.f20084b.get(this.f20083a & i2);
        if (!(obj instanceof b) || ((b) obj).f20087a != i2) {
            return null;
        }
        this.f20084b.set(i2 & this.f20083a, e2);
        return this;
    }

    private final LockFreeTaskQueueCore<E> b(long j2) {
        while (true) {
            LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._next;
            if (lockFreeTaskQueueCore != null) {
                return lockFreeTaskQueueCore;
            }
            f20079e.compareAndSet(this, null, a(j2));
        }
    }

    private final LockFreeTaskQueueCore<E> a(long j2) {
        LockFreeTaskQueueCore<E> lockFreeTaskQueueCore = new LockFreeTaskQueueCore<>(this.f20085c * 2, this.f20086d);
        int i2 = (int) ((1073741823 & j2) >> 0);
        int i3 = (int) ((1152921503533105152L & j2) >> 30);
        while (true) {
            int i4 = this.f20083a;
            if ((i2 & i4) != (i3 & i4)) {
                AtomicReferenceArray<Object> atomicReferenceArray = lockFreeTaskQueueCore.f20084b;
                int i5 = lockFreeTaskQueueCore.f20083a & i2;
                Object obj = this.f20084b.get(i4 & i2);
                if (obj == null) {
                    obj = new b(i2);
                }
                atomicReferenceArray.set(i5, obj);
                i2++;
            } else {
                lockFreeTaskQueueCore._state$internal = f20082h.a(j2, 1152921504606846976L);
                return lockFreeTaskQueueCore;
            }
        }
    }

    public final boolean a() {
        long j2;
        do {
            j2 = this._state$internal;
            if ((j2 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j2) != 0) {
                return false;
            }
        } while (!f20080f.compareAndSet(this, j2, j2 | 2305843009213693952L));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(@org.jetbrains.annotations.NotNull E r13) {
        /*
            r12 = this;
            java.lang.String r0 = "element"
            kotlin.jvm.d.h.b(r13, r0)
        L5:
            long r3 = r12._state$internal
            r0 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r0 = r0 & r3
            r7 = 0
            int r2 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r2 == 0) goto L17
            kotlinx.coroutines.internal.m$a r13 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.f20082h
            int r13 = r13.a(r3)
            return r13
        L17:
            r0 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r0 = r0 & r3
            r9 = 0
            long r0 = r0 >> r9
            int r1 = (int) r0
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r5 = r5 & r3
            r0 = 30
            long r5 = r5 >> r0
            int r0 = (int) r5
            int r10 = r12.f20083a
            int r2 = r0 + 2
            r2 = r2 & r10
            r5 = r1 & r10
            r6 = 1
            if (r2 != r5) goto L33
            return r6
        L33:
            boolean r2 = r12.f20086d
            r5 = 1073741823(0x3fffffff, float:1.9999999)
            if (r2 != 0) goto L51
            java.util.concurrent.atomic.AtomicReferenceArray<java.lang.Object> r2 = r12.f20084b
            r11 = r0 & r10
            java.lang.Object r2 = r2.get(r11)
            if (r2 == 0) goto L51
            int r2 = r12.f20085c
            r3 = 1024(0x400, float:1.435E-42)
            if (r2 < r3) goto L50
            int r0 = r0 - r1
            r0 = r0 & r5
            int r1 = r2 >> 1
            if (r0 <= r1) goto L5
        L50:
            return r6
        L51:
            int r1 = r0 + 1
            r1 = r1 & r5
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.f20080f
            kotlinx.coroutines.internal.m$a r5 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.f20082h
            long r5 = r5.b(r3, r1)
            r1 = r2
            r2 = r12
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            if (r1 == 0) goto L5
            java.util.concurrent.atomic.AtomicReferenceArray<java.lang.Object> r1 = r12.f20084b
            r2 = r0 & r10
            r1.set(r2, r13)
            r1 = r12
        L6c:
            long r2 = r1._state$internal
            r4 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r2 = r2 & r4
            int r4 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r4 != 0) goto L76
            goto L81
        L76:
            kotlinx.coroutines.internal.m r1 = r1.d()
            kotlinx.coroutines.internal.m r1 = r1.a(r0, r13)
            if (r1 == 0) goto L81
            goto L6c
        L81:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeTaskQueueCore.a(java.lang.Object):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LockFreeTaskQueueCore<E> a(int i2, int i3) {
        long j2;
        int i4;
        do {
            j2 = this._state$internal;
            i4 = (int) ((1073741823 & j2) >> 0);
            if (!(i4 == i2)) {
                throw new IllegalStateException("This queue can have only one consumer".toString());
            }
            if ((1152921504606846976L & j2) != 0) {
                return d();
            }
        } while (!f20080f.compareAndSet(this, j2, f20082h.a(j2, i3)));
        this.f20084b.set(this.f20083a & i4, null);
        return null;
    }
}
