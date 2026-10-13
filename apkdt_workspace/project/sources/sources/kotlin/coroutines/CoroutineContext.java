package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.d.h;
import kotlin.jvm.d.i;
import kotlin.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineContext.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001:\u0002\u0011\u0012J5\u0010\u0002\u001a\u0002H\u0003\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00030\u0006H&¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u0004\u0018\u0001H\n\"\b\b\u0000\u0010\n*\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fH¦\u0002¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u00002\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH&J\u0011\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000H\u0096\u0002¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "plus", "context", "Element", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.coroutines.f, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public interface CoroutineContext {

    /* compiled from: CoroutineContext.kt */
    /* renamed from: kotlin.coroutines.f$a */
    /* loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CoroutineContext.kt */
        /* renamed from: kotlin.coroutines.f$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0260a extends i implements kotlin.jvm.c.c<CoroutineContext, b, CoroutineContext> {
            public static final C0260a INSTANCE = new C0260a();

            C0260a() {
                super(2);
            }

            @Override // kotlin.jvm.c.c
            @NotNull
            public final CoroutineContext invoke(@NotNull CoroutineContext coroutineContext, @NotNull b bVar) {
                h.b(coroutineContext, "acc");
                h.b(bVar, "element");
                CoroutineContext minusKey = coroutineContext.minusKey(bVar.getKey());
                if (minusKey == g.INSTANCE) {
                    return bVar;
                }
                ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) minusKey.get(ContinuationInterceptor.f19921b);
                if (continuationInterceptor == null) {
                    return new CombinedContext(minusKey, bVar);
                }
                CoroutineContext minusKey2 = minusKey.minusKey(ContinuationInterceptor.f19921b);
                return minusKey2 == g.INSTANCE ? new CombinedContext(bVar, continuationInterceptor) : new CombinedContext(new CombinedContext(minusKey2, bVar), continuationInterceptor);
            }
        }

        @NotNull
        public static CoroutineContext a(CoroutineContext coroutineContext, @NotNull CoroutineContext coroutineContext2) {
            h.b(coroutineContext2, "context");
            return coroutineContext2 == g.INSTANCE ? coroutineContext : (CoroutineContext) coroutineContext2.fold(coroutineContext, C0260a.INSTANCE);
        }
    }

    /* compiled from: CoroutineContext.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J5\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00072\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u00070\nH\u0016¢\u0006\u0002\u0010\u000bJ(\u0010\f\u001a\u0004\u0018\u0001H\r\"\b\b\u0000\u0010\r*\u00020\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\r0\u0003H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016R\u0016\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
    /* renamed from: kotlin.coroutines.f$b */
    /* loaded from: classes.dex */
    public interface b extends CoroutineContext {

        /* compiled from: CoroutineContext.kt */
        /* renamed from: kotlin.coroutines.f$b$a */
        /* loaded from: classes2.dex */
        public static final class a {
            /* JADX WARN: Multi-variable type inference failed */
            @Nullable
            public static <E extends b> E a(b bVar, @NotNull c<E> cVar) {
                h.b(cVar, "key");
                if (!h.a(bVar.getKey(), cVar)) {
                    return null;
                }
                if (bVar != 0) {
                    return bVar;
                }
                throw new r("null cannot be cast to non-null type E");
            }

            @NotNull
            public static CoroutineContext a(b bVar, @NotNull CoroutineContext coroutineContext) {
                h.b(coroutineContext, "context");
                return a.a(bVar, coroutineContext);
            }

            @NotNull
            public static CoroutineContext b(b bVar, @NotNull c<?> cVar) {
                h.b(cVar, "key");
                return h.a(bVar.getKey(), cVar) ? g.INSTANCE : bVar;
            }

            public static <R> R a(b bVar, R r, @NotNull kotlin.jvm.c.c<? super R, ? super b, ? extends R> cVar) {
                h.b(cVar, "operation");
                return cVar.invoke(r, bVar);
            }
        }

        @Override // kotlin.coroutines.CoroutineContext
        @Nullable
        <E extends b> E get(@NotNull c<E> cVar);

        @NotNull
        c<?> getKey();
    }

    /* compiled from: CoroutineContext.kt */
    /* renamed from: kotlin.coroutines.f$c */
    /* loaded from: classes2.dex */
    public interface c<E extends b> {
    }

    <R> R fold(R r, @NotNull kotlin.jvm.c.c<? super R, ? super b, ? extends R> cVar);

    @Nullable
    <E extends b> E get(@NotNull c<E> cVar);

    @NotNull
    CoroutineContext minusKey(@NotNull c<?> cVar);

    @NotNull
    CoroutineContext plus(@NotNull CoroutineContext coroutineContext);
}
