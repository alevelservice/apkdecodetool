package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Builders.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\r\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0010JH\u0010\u0011\u001a\u00020\u0012\"\u0004\b\u0001\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00152\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00130\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0017H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001aR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/DeferredCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlinx/coroutines/Deferred;", "Lkotlinx/coroutines/selects/SelectClause1;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "onAwait", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCompleted", "()Ljava/lang/Object;", "registerSelectClause1", "", "R", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.n0, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
class DeferredCoroutine<T> extends kotlinx.coroutines.a<T> implements m0<T>, kotlinx.coroutines.g2.b<T> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Builders.common.kt */
    @DebugMetadata(c = "kotlinx.coroutines.DeferredCoroutine", f = "Builders.common.kt", i = {0}, l = {98}, m = "await$suspendImpl", n = {"this"}, s = {"L$0"})
    /* renamed from: kotlinx.coroutines.n0$a */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= e.b.b.a.a.a.c.ALL_INT;
            return DeferredCoroutine.a(DeferredCoroutine.this, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredCoroutine(@NotNull CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, z);
        kotlin.jvm.d.h.b(coroutineContext, "parentContext");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object a(kotlinx.coroutines.DeferredCoroutine r4, kotlin.coroutines.c r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.DeferredCoroutine.a
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.n0$a r0 = (kotlinx.coroutines.DeferredCoroutine.a) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.n0$a r0 = new kotlinx.coroutines.n0$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.h.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.n0 r4 = (kotlinx.coroutines.DeferredCoroutine) r4
            kotlin.o.a(r5)
            goto L43
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.o.a(r5)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.b(r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DeferredCoroutine.a(kotlinx.coroutines.n0, kotlin.coroutines.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.m0
    @Nullable
    public Object a(@NotNull kotlin.coroutines.c<? super T> cVar) {
        return a(this, cVar);
    }
}
