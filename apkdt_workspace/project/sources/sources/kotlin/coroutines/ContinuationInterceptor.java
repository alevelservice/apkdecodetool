package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.h;
import kotlin.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ContinuationInterceptor.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ(\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\b\b\u0000\u0010\u0003*\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0096\u0002¢\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0004\b\u0000\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\bH&J\u0014\u0010\u000b\u001a\u00020\f2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0016J\u0014\u0010\r\u001a\u00020\u000e2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/CoroutineContext$Element;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "interceptContinuation", "Lkotlin/coroutines/Continuation;", "T", "continuation", "minusKey", "Lkotlin/coroutines/CoroutineContext;", "releaseInterceptedContinuation", "", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.coroutines.d, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public interface ContinuationInterceptor extends CoroutineContext.b {

    /* renamed from: b, reason: collision with root package name */
    public static final b f19921b = b.f19922a;

    /* compiled from: ContinuationInterceptor.kt */
    /* renamed from: kotlin.coroutines.d$a */
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable
        public static <E extends CoroutineContext.b> E a(ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext.c<E> cVar) {
            h.b(cVar, "key");
            if (cVar != ContinuationInterceptor.f19921b) {
                return null;
            }
            if (continuationInterceptor != null) {
                return continuationInterceptor;
            }
            throw new r("null cannot be cast to non-null type E");
        }

        public static void a(ContinuationInterceptor continuationInterceptor, @NotNull c<?> cVar) {
            h.b(cVar, "continuation");
        }

        @NotNull
        public static CoroutineContext b(ContinuationInterceptor continuationInterceptor, @NotNull CoroutineContext.c<?> cVar) {
            h.b(cVar, "key");
            return cVar == ContinuationInterceptor.f19921b ? g.INSTANCE : continuationInterceptor;
        }
    }

    /* compiled from: ContinuationInterceptor.kt */
    /* renamed from: kotlin.coroutines.d$b */
    /* loaded from: classes2.dex */
    public static final class b implements CoroutineContext.c<ContinuationInterceptor> {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ b f19922a = new b();

        private b() {
        }
    }

    void b(@NotNull c<?> cVar);

    @NotNull
    <T> c<T> c(@NotNull c<? super T> cVar);
}
