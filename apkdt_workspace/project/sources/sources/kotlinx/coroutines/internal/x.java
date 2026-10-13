package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ThreadContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\",\u0010\u0006\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\" \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\" \u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"ZERO", "Lkotlinx/coroutines/internal/Symbol;", "countAll", "Lkotlin/Function2;", "", "Lkotlin/coroutines/CoroutineContext$Element;", "findOne", "Lkotlinx/coroutines/ThreadContextElement;", "restoreState", "Lkotlinx/coroutines/internal/ThreadState;", "updateState", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "threadContextElements", "updateThreadContext", "countOrElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    private static final t f20094a = new t("ZERO");

    /* renamed from: b, reason: collision with root package name */
    private static final kotlin.jvm.c.c<Object, CoroutineContext.b, Object> f20095b = a.INSTANCE;

    /* renamed from: c, reason: collision with root package name */
    private static final kotlin.jvm.c.c<ThreadContextElement<?>, CoroutineContext.b, ThreadContextElement<?>> f20096c = b.INSTANCE;

    /* renamed from: d, reason: collision with root package name */
    private static final kotlin.jvm.c.c<a0, CoroutineContext.b, a0> f20097d = d.INSTANCE;

    /* renamed from: e, reason: collision with root package name */
    private static final kotlin.jvm.c.c<a0, CoroutineContext.b, a0> f20098e = c.INSTANCE;

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    static final class a extends kotlin.jvm.d.i implements kotlin.jvm.c.c<Object, CoroutineContext.b, Object> {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.c.c
        @Nullable
        public final Object invoke(@Nullable Object obj, @NotNull CoroutineContext.b bVar) {
            kotlin.jvm.d.h.b(bVar, "element");
            if (!(bVar instanceof ThreadContextElement)) {
                return obj;
            }
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            int intValue = num != null ? num.intValue() : 1;
            return intValue == 0 ? bVar : Integer.valueOf(intValue + 1);
        }
    }

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    static final class b extends kotlin.jvm.d.i implements kotlin.jvm.c.c<ThreadContextElement<?>, CoroutineContext.b, ThreadContextElement<?>> {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.c.c
        @Nullable
        public final ThreadContextElement<?> invoke(@Nullable ThreadContextElement<?> threadContextElement, @NotNull CoroutineContext.b bVar) {
            kotlin.jvm.d.h.b(bVar, "element");
            if (threadContextElement != null) {
                return threadContextElement;
            }
            if (!(bVar instanceof ThreadContextElement)) {
                bVar = null;
            }
            return (ThreadContextElement) bVar;
        }
    }

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    static final class c extends kotlin.jvm.d.i implements kotlin.jvm.c.c<a0, CoroutineContext.b, a0> {
        public static final c INSTANCE = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.c.c
        @NotNull
        public final a0 invoke(@NotNull a0 a0Var, @NotNull CoroutineContext.b bVar) {
            kotlin.jvm.d.h.b(a0Var, "state");
            kotlin.jvm.d.h.b(bVar, "element");
            if (bVar instanceof ThreadContextElement) {
                ((ThreadContextElement) bVar).a(a0Var.a(), a0Var.c());
            }
            return a0Var;
        }
    }

    /* compiled from: ThreadContext.kt */
    /* loaded from: classes2.dex */
    static final class d extends kotlin.jvm.d.i implements kotlin.jvm.c.c<a0, CoroutineContext.b, a0> {
        public static final d INSTANCE = new d();

        d() {
            super(2);
        }

        @Override // kotlin.jvm.c.c
        @NotNull
        public final a0 invoke(@NotNull a0 a0Var, @NotNull CoroutineContext.b bVar) {
            kotlin.jvm.d.h.b(a0Var, "state");
            kotlin.jvm.d.h.b(bVar, "element");
            if (bVar instanceof ThreadContextElement) {
                a0Var.a(((ThreadContextElement) bVar).a(a0Var.a()));
            }
            return a0Var;
        }
    }

    @NotNull
    public static final Object a(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        Object fold = coroutineContext.fold(0, f20095b);
        if (fold != null) {
            return fold;
        }
        kotlin.jvm.d.h.a();
        throw null;
    }

    @Nullable
    public static final Object b(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        if (obj == null) {
            obj = a(coroutineContext);
        }
        if (obj == 0) {
            return f20094a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new a0(coroutineContext, ((Number) obj).intValue()), f20097d);
        }
        if (obj != null) {
            return ((ThreadContextElement) obj).a(coroutineContext);
        }
        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
    }

    public static final void a(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        if (obj == f20094a) {
            return;
        }
        if (obj instanceof a0) {
            ((a0) obj).b();
            coroutineContext.fold(obj, f20098e);
        } else {
            Object fold = coroutineContext.fold(null, f20096c);
            if (fold != null) {
                ((ThreadContextElement) fold).a(coroutineContext, obj);
                return;
            }
            throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        }
    }
}
