package kotlin.coroutines.h;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.g;
import kotlin.coroutines.jvm.internal.i;
import kotlin.jvm.d.h;
import kotlin.jvm.d.p;
import kotlin.o;
import kotlin.r;
import kotlin.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntrinsicsJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aF\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0083\b¢\u0006\u0002\b\b\u001aD\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\n\u001a]\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007\u001aA\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001aZ\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"createCoroutineFromSuspendFunction", "Lkotlin/coroutines/Continuation;", "", "T", "completion", "block", "Lkotlin/Function1;", "", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, xi = 1, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* loaded from: classes2.dex */
public class c {

    /* compiled from: IntrinsicsJvm.kt */
    /* loaded from: classes2.dex */
    public static final class a extends i {
        final /* synthetic */ kotlin.coroutines.c $completion;
        final /* synthetic */ kotlin.jvm.c.b $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlin.coroutines.c cVar, kotlin.coroutines.c cVar2, kotlin.jvm.c.b bVar) {
            super(cVar2);
            this.$completion = cVar;
            this.$this_createCoroutineUnintercepted$inlined = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 == 1) {
                    this.label = 2;
                    o.a(obj);
                    return obj;
                }
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 1;
            o.a(obj);
            kotlin.jvm.c.b bVar = this.$this_createCoroutineUnintercepted$inlined;
            if (bVar == null) {
                throw new r("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            p.a(bVar, 1);
            return bVar.invoke(this);
        }
    }

    /* compiled from: IntrinsicsJvm.kt */
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {
        final /* synthetic */ kotlin.coroutines.c $completion;
        final /* synthetic */ CoroutineContext $context;
        final /* synthetic */ kotlin.jvm.c.b $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.coroutines.c cVar, CoroutineContext coroutineContext, kotlin.coroutines.c cVar2, CoroutineContext coroutineContext2, kotlin.jvm.c.b bVar) {
            super(cVar2, coroutineContext2);
            this.$completion = cVar;
            this.$context = coroutineContext;
            this.$this_createCoroutineUnintercepted$inlined = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 == 1) {
                    this.label = 2;
                    o.a(obj);
                    return obj;
                }
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 1;
            o.a(obj);
            kotlin.jvm.c.b bVar = this.$this_createCoroutineUnintercepted$inlined;
            if (bVar == null) {
                throw new r("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            p.a(bVar, 1);
            return bVar.invoke(this);
        }
    }

    /* compiled from: IntrinsicsJvm.kt */
    /* renamed from: kotlin.coroutines.h.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0261c extends i {
        final /* synthetic */ kotlin.coroutines.c $completion;
        final /* synthetic */ Object $receiver$inlined;
        final /* synthetic */ kotlin.jvm.c.c $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0261c(kotlin.coroutines.c cVar, kotlin.coroutines.c cVar2, kotlin.jvm.c.c cVar3, Object obj) {
            super(cVar2);
            this.$completion = cVar;
            this.$this_createCoroutineUnintercepted$inlined = cVar3;
            this.$receiver$inlined = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 == 1) {
                    this.label = 2;
                    o.a(obj);
                    return obj;
                }
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 1;
            o.a(obj);
            kotlin.jvm.c.c cVar = this.$this_createCoroutineUnintercepted$inlined;
            if (cVar == null) {
                throw new r("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            p.a(cVar, 2);
            return cVar.invoke(this.$receiver$inlined, this);
        }
    }

    /* compiled from: IntrinsicsJvm.kt */
    /* loaded from: classes2.dex */
    public static final class d extends kotlin.coroutines.jvm.internal.d {
        final /* synthetic */ kotlin.coroutines.c $completion;
        final /* synthetic */ CoroutineContext $context;
        final /* synthetic */ Object $receiver$inlined;
        final /* synthetic */ kotlin.jvm.c.c $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlin.coroutines.c cVar, CoroutineContext coroutineContext, kotlin.coroutines.c cVar2, CoroutineContext coroutineContext2, kotlin.jvm.c.c cVar3, Object obj) {
            super(cVar2, coroutineContext2);
            this.$completion = cVar;
            this.$context = coroutineContext;
            this.$this_createCoroutineUnintercepted$inlined = cVar3;
            this.$receiver$inlined = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 == 1) {
                    this.label = 2;
                    o.a(obj);
                    return obj;
                }
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 1;
            o.a(obj);
            kotlin.jvm.c.c cVar = this.$this_createCoroutineUnintercepted$inlined;
            if (cVar == null) {
                throw new r("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            p.a(cVar, 2);
            return cVar.invoke(this.$receiver$inlined, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @NotNull
    public static <T> kotlin.coroutines.c<t> a(@NotNull kotlin.jvm.c.b<? super kotlin.coroutines.c<? super T>, ? extends Object> bVar, @NotNull kotlin.coroutines.c<? super T> cVar) {
        h.b(bVar, "$this$createCoroutineUnintercepted");
        h.b(cVar, "completion");
        g.a(cVar);
        if (bVar instanceof kotlin.coroutines.jvm.internal.a) {
            return ((kotlin.coroutines.jvm.internal.a) bVar).create(cVar);
        }
        CoroutineContext context = cVar.getContext();
        if (context == kotlin.coroutines.g.INSTANCE) {
            if (cVar != null) {
                return new a(cVar, cVar, bVar);
            }
            throw new r("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }
        if (cVar != null) {
            return new b(cVar, context, cVar, context, bVar);
        }
        throw new r("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @NotNull
    public static <R, T> kotlin.coroutines.c<t> a(@NotNull kotlin.jvm.c.c<? super R, ? super kotlin.coroutines.c<? super T>, ? extends Object> cVar, R r, @NotNull kotlin.coroutines.c<? super T> cVar2) {
        h.b(cVar, "$this$createCoroutineUnintercepted");
        h.b(cVar2, "completion");
        g.a(cVar2);
        if (cVar instanceof kotlin.coroutines.jvm.internal.a) {
            return ((kotlin.coroutines.jvm.internal.a) cVar).create(r, cVar2);
        }
        CoroutineContext context = cVar2.getContext();
        if (context == kotlin.coroutines.g.INSTANCE) {
            if (cVar2 != null) {
                return new C0261c(cVar2, cVar2, cVar, r);
            }
            throw new r("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }
        if (cVar2 != null) {
            return new d(cVar2, context, cVar2, context, cVar, r);
        }
        throw new r("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @NotNull
    public static <T> kotlin.coroutines.c<T> a(@NotNull kotlin.coroutines.c<? super T> cVar) {
        kotlin.coroutines.c<T> cVar2;
        h.b(cVar, "$this$intercepted");
        kotlin.coroutines.jvm.internal.d dVar = !(cVar instanceof kotlin.coroutines.jvm.internal.d) ? null : cVar;
        return (dVar == null || (cVar2 = (kotlin.coroutines.c<T>) dVar.intercepted()) == null) ? cVar : cVar2;
    }
}
