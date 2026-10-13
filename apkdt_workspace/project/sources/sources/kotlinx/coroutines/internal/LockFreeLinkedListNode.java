package kotlinx.coroutines.internal;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: LockFreeLinkedList.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0012\b\u0017\u0018\u00002\u00020\u0001:\u0004NOPQB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u0004¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\f\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u000e\b\u0004\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0086\b¢\u0006\u0004\b\f\u0010\rJ4\u0010\u0010\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u0016\u0010\u000f\u001a\u0012\u0012\b\u0012\u00060\u0000j\u0002`\u0004\u0012\u0004\u0012\u00020\n0\u000eH\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011JD\u0010\u0012\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u0016\u0010\u000f\u001a\u0012\u0012\b\u0012\u00060\u0000j\u0002`\u0004\u0012\u0004\u0012\u00020\n0\u000e2\u000e\b\u0004\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0086\b¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0015\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0014\u001a\u00060\u0000j\u0002`\u0004H\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u0004¢\u0006\u0004\b\u0017\u0010\u0018J-\u0010\u001c\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00042\n\u0010\u0019\u001a\u00060\u0000j\u0002`\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001f\"\f\b\u0000\u0010\u001e*\u00060\u0000j\u0002`\u00042\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b \u0010!J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\f\u0012\b\u0012\u00060\u0000j\u0002`\u00040%¢\u0006\u0004\b&\u0010'J\u0013\u0010(\u001a\u00060\u0000j\u0002`\u0004H\u0002¢\u0006\u0004\b(\u0010)J\u001b\u0010*\u001a\u00020\u00062\n\u0010\u0014\u001a\u00060\u0000j\u0002`\u0004H\u0002¢\u0006\u0004\b*\u0010\bJ\u001b\u0010+\u001a\u00020\u00062\n\u0010\u0014\u001a\u00060\u0000j\u0002`\u0004H\u0002¢\u0006\u0004\b+\u0010\bJ\u000f\u0010,\u001a\u00020\u0006H\u0001¢\u0006\u0004\b,\u0010\u0003J\r\u0010-\u001a\u00020\u0006¢\u0006\u0004\b-\u0010\u0003J,\u0010/\u001a\u00020.2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u000e\b\u0004\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0081\b¢\u0006\u0004\b/\u00100J\u0013\u00101\u001a\u00060\u0000j\u0002`\u0004H\u0002¢\u0006\u0004\b1\u0010)J\u000f\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u00103J\u001a\u00104\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u001e\u0018\u0001H\u0086\b¢\u0006\u0004\b4\u00105J.\u00106\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u001e\u0018\u00012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\u000eH\u0086\b¢\u0006\u0004\b6\u00107J\u0015\u00108\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0004¢\u0006\u0004\b8\u0010)J\u000f\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b:\u0010;J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>J/\u0010A\u001a\u00020@2\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0014\u001a\u00060\u0000j\u0002`\u00042\u0006\u0010?\u001a\u00020.H\u0001¢\u0006\u0004\bA\u0010BJ'\u0010F\u001a\u00020\u00062\n\u0010C\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0014\u001a\u00060\u0000j\u0002`\u0004H\u0000¢\u0006\u0004\bD\u0010ER\u0013\u0010G\u001a\u00020\n8F@\u0006¢\u0006\u0006\u001a\u0004\bG\u00103R\u0013\u0010\u0014\u001a\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\bH\u00105R\u0017\u0010J\u001a\u00060\u0000j\u0002`\u00048F@\u0006¢\u0006\u0006\u001a\u0004\bI\u0010)R\u0013\u0010C\u001a\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\bK\u00105R\u0017\u0010M\u001a\u00060\u0000j\u0002`\u00048F@\u0006¢\u0006\u0006\u001a\u0004\bL\u0010)¨\u0006R"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "<init>", "()V", "Lkotlinx/coroutines/internal/Node;", "node", "", "addLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlin/Function0;", "", "condition", "addLastIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z", "Lkotlin/Function1;", "predicate", "addLastIfPrev", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z", "addLastIfPrevAndIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z", HummerConstants.HUMMER_NEXT, "addNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "addOneIfEmpty", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "_prev", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "correctPrev", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "T", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "describeAddLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/AtomicDesc;", "describeRemove", "()Lkotlinx/coroutines/internal/AtomicDesc;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "describeRemoveFirst", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "findHead", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "finishAdd", "finishRemove", "helpDelete", "helpRemove", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "makeCondAddOp", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "markPrev", "remove", "()Z", "removeFirstIfIsInstanceOf", "()Ljava/lang/Object;", "removeFirstIfIsInstanceOfOrPeekIf", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "removeFirstOrNull", "Lkotlinx/coroutines/internal/Removed;", "removed", "()Lkotlinx/coroutines/internal/Removed;", "", "toString", "()Ljava/lang/String;", "condAdd", "", "tryCondAddNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "isRemoved", "getNext", "getNextNode", "nextNode", "getPrev", "getPrevNode", "prevNode", "AbstractAtomicDesc", "AddLastDesc", "CondAddOp", "RemoveFirstDesc", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.internal.k, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public class LockFreeLinkedListNode {

    /* renamed from: e, reason: collision with root package name */
    static final AtomicReferenceFieldUpdater f20073e = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next");

    /* renamed from: f, reason: collision with root package name */
    static final AtomicReferenceFieldUpdater f20074f = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev");

    /* renamed from: g, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20075g = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef");
    volatile Object _next = this;
    volatile Object _prev = this;
    private volatile Object _removedRef = null;

    /* compiled from: LockFreeLinkedList.kt */
    @PublishedApi
    /* renamed from: kotlinx.coroutines.internal.k$a */
    /* loaded from: classes2.dex */
    public static abstract class a extends d<LockFreeLinkedListNode> {

        /* renamed from: b, reason: collision with root package name */
        @JvmField
        @Nullable
        public LockFreeLinkedListNode f20076b;

        /* renamed from: c, reason: collision with root package name */
        @JvmField
        @NotNull
        public final LockFreeLinkedListNode f20077c;

        public a(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            kotlin.jvm.d.h.b(lockFreeLinkedListNode, "newNode");
            this.f20077c = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.d
        public void a(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @Nullable Object obj) {
            kotlin.jvm.d.h.b(lockFreeLinkedListNode, "affected");
            boolean z = obj == null;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = z ? this.f20077c : this.f20076b;
            if (lockFreeLinkedListNode2 != null && LockFreeLinkedListNode.f20073e.compareAndSet(lockFreeLinkedListNode, this, lockFreeLinkedListNode2) && z) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = this.f20077c;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = this.f20076b;
                if (lockFreeLinkedListNode4 != null) {
                    lockFreeLinkedListNode3.b(lockFreeLinkedListNode4);
                } else {
                    kotlin.jvm.d.h.a();
                    throw null;
                }
            }
        }
    }

    private final LockFreeLinkedListNode j() {
        LockFreeLinkedListNode lockFreeLinkedListNode = this;
        while (!(lockFreeLinkedListNode instanceof i)) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.c();
            if (!(lockFreeLinkedListNode != this)) {
                throw new IllegalStateException("Cannot loop to this while looking for list head".toString());
            }
        }
        return lockFreeLinkedListNode;
    }

    private final LockFreeLinkedListNode k() {
        Object obj;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            obj = this._prev;
            if (obj instanceof r) {
                return ((r) obj).f20091a;
            }
            if (obj == this) {
                lockFreeLinkedListNode = j();
            } else {
                if (obj == null) {
                    throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                }
                lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
            }
        } while (!f20074f.compareAndSet(this, obj, lockFreeLinkedListNode.l()));
        return (LockFreeLinkedListNode) obj;
    }

    private final r l() {
        r rVar = (r) this._removedRef;
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(this);
        f20075g.lazySet(this, rVar2);
        return rVar2;
    }

    @NotNull
    public final Object b() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof q)) {
                return obj;
            }
            ((q) obj).a(this);
        }
    }

    @NotNull
    public final LockFreeLinkedListNode c() {
        return j.a(b());
    }

    @NotNull
    public final Object d() {
        while (true) {
            Object obj = this._prev;
            if (obj instanceof r) {
                return obj;
            }
            if (obj != null) {
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
                if (lockFreeLinkedListNode.b() == this) {
                    return obj;
                }
                a(lockFreeLinkedListNode, (q) null);
            } else {
                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
    }

    @NotNull
    public final LockFreeLinkedListNode e() {
        return j.a(d());
    }

    @PublishedApi
    public final void f() {
        Object b2;
        LockFreeLinkedListNode k2 = k();
        Object obj = this._next;
        if (obj == null) {
            throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Removed");
        }
        LockFreeLinkedListNode lockFreeLinkedListNode = ((r) obj).f20091a;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode2 = null;
            while (true) {
                Object b3 = lockFreeLinkedListNode.b();
                if (b3 instanceof r) {
                    lockFreeLinkedListNode.k();
                    lockFreeLinkedListNode = ((r) b3).f20091a;
                } else {
                    b2 = k2.b();
                    if (b2 instanceof r) {
                        if (lockFreeLinkedListNode2 != null) {
                            break;
                        } else {
                            k2 = j.a(k2._prev);
                        }
                    } else if (b2 != this) {
                        if (b2 == null) {
                            throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        }
                        LockFreeLinkedListNode lockFreeLinkedListNode3 = (LockFreeLinkedListNode) b2;
                        if (lockFreeLinkedListNode3 == lockFreeLinkedListNode) {
                            return;
                        }
                        lockFreeLinkedListNode2 = k2;
                        k2 = lockFreeLinkedListNode3;
                    } else if (f20073e.compareAndSet(k2, this, lockFreeLinkedListNode)) {
                        return;
                    }
                }
            }
            k2.k();
            f20073e.compareAndSet(lockFreeLinkedListNode2, k2, ((r) b2).f20091a);
            k2 = lockFreeLinkedListNode2;
        }
    }

    public final boolean g() {
        return b() instanceof r;
    }

    public boolean h() {
        Object b2;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            b2 = b();
            if ((b2 instanceof r) || b2 == this) {
                return false;
            }
            if (b2 != null) {
                lockFreeLinkedListNode = (LockFreeLinkedListNode) b2;
            } else {
                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (!f20073e.compareAndSet(this, b2, lockFreeLinkedListNode.l()));
        c(lockFreeLinkedListNode);
        return true;
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }

    private final void c(LockFreeLinkedListNode lockFreeLinkedListNode) {
        f();
        lockFreeLinkedListNode.a(j.a(this._prev), (q) null);
    }

    public final boolean a(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        kotlin.jvm.d.h.b(lockFreeLinkedListNode, "node");
        f20074f.lazySet(lockFreeLinkedListNode, this);
        f20073e.lazySet(lockFreeLinkedListNode, this);
        while (b() == this) {
            if (f20073e.compareAndSet(this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.b(this);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(LockFreeLinkedListNode lockFreeLinkedListNode) {
        Object obj;
        do {
            obj = lockFreeLinkedListNode._prev;
            if ((obj instanceof r) || b() != lockFreeLinkedListNode) {
                return;
            }
        } while (!f20074f.compareAndSet(lockFreeLinkedListNode, obj, this));
        if (b() instanceof r) {
            if (obj == null) {
                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
            lockFreeLinkedListNode.a((LockFreeLinkedListNode) obj, (q) null);
        }
    }

    @PublishedApi
    public final int a(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2, @NotNull a aVar) {
        kotlin.jvm.d.h.b(lockFreeLinkedListNode, "node");
        kotlin.jvm.d.h.b(lockFreeLinkedListNode2, HummerConstants.HUMMER_NEXT);
        kotlin.jvm.d.h.b(aVar, "condAdd");
        f20074f.lazySet(lockFreeLinkedListNode, this);
        f20073e.lazySet(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        aVar.f20076b = lockFreeLinkedListNode2;
        if (f20073e.compareAndSet(this, lockFreeLinkedListNode2, aVar)) {
            return aVar.a(this) == null ? 1 : 2;
        }
        return 0;
    }

    private final LockFreeLinkedListNode a(LockFreeLinkedListNode lockFreeLinkedListNode, q qVar) {
        Object obj;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode2 = null;
            while (true) {
                obj = lockFreeLinkedListNode._next;
                if (obj == qVar) {
                    return lockFreeLinkedListNode;
                }
                if (obj instanceof q) {
                    ((q) obj).a(lockFreeLinkedListNode);
                } else if (!(obj instanceof r)) {
                    Object obj2 = this._prev;
                    if (obj2 instanceof r) {
                        return null;
                    }
                    if (obj != this) {
                        if (obj == null) {
                            throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        }
                        lockFreeLinkedListNode2 = lockFreeLinkedListNode;
                        lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
                    } else {
                        if (obj2 == lockFreeLinkedListNode) {
                            return null;
                        }
                        if (f20074f.compareAndSet(this, obj2, lockFreeLinkedListNode) && !(lockFreeLinkedListNode._prev instanceof r)) {
                            return null;
                        }
                    }
                } else {
                    if (lockFreeLinkedListNode2 != null) {
                        break;
                    }
                    lockFreeLinkedListNode = j.a(lockFreeLinkedListNode._prev);
                }
            }
            lockFreeLinkedListNode.k();
            f20073e.compareAndSet(lockFreeLinkedListNode2, lockFreeLinkedListNode, ((r) obj).f20091a);
            lockFreeLinkedListNode = lockFreeLinkedListNode2;
        }
    }
}
