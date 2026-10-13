package kotlin.coroutines;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.h;
import kotlin.jvm.d.i;
import kotlin.jvm.d.m;
import kotlin.r;
import kotlin.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineContextImpl.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0000H\u0002J\u0013\u0010\f\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016¢\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\b\b\u0000\u0010\u0016*\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "left", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "contains", "", "containsAll", "context", "equals", "other", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "hashCode", "", "minusKey", "size", "toString", "", "writeReplace", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.coroutines.b, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class CombinedContext implements CoroutineContext, Serializable {
    private final CoroutineContext.b element;
    private final CoroutineContext left;

    /* compiled from: CoroutineContextImpl.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u0000 \f2\u00060\u0001j\u0002`\u0002:\u0001\fB\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0002R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "elements", "", "Lkotlin/coroutines/CoroutineContext;", "([Lkotlin/coroutines/CoroutineContext;)V", "getElements", "()[Lkotlin/coroutines/CoroutineContext;", "[Lkotlin/coroutines/CoroutineContext;", "readResolve", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
    /* renamed from: kotlin.coroutines.b$a */
    /* loaded from: classes2.dex */
    private static final class a implements Serializable {
        private static final long serialVersionUID = 0;

        @NotNull
        private final CoroutineContext[] elements;

        public a(@NotNull CoroutineContext[] coroutineContextArr) {
            h.b(coroutineContextArr, "elements");
            this.elements = coroutineContextArr;
        }

        private final Object readResolve() {
            CoroutineContext[] coroutineContextArr = this.elements;
            CoroutineContext coroutineContext = g.INSTANCE;
            for (CoroutineContext coroutineContext2 : coroutineContextArr) {
                coroutineContext = coroutineContext.plus(coroutineContext2);
            }
            return coroutineContext;
        }

        @NotNull
        public final CoroutineContext[] getElements() {
            return this.elements;
        }
    }

    /* compiled from: CoroutineContextImpl.kt */
    /* renamed from: kotlin.coroutines.b$b */
    /* loaded from: classes2.dex */
    static final class b extends i implements kotlin.jvm.c.c<String, CoroutineContext.b, String> {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.c.c
        @NotNull
        public final String invoke(@NotNull String str, @NotNull CoroutineContext.b bVar) {
            h.b(str, "acc");
            h.b(bVar, "element");
            if (str.length() == 0) {
                return bVar.toString();
            }
            return str + ", " + bVar;
        }
    }

    /* compiled from: CoroutineContextImpl.kt */
    /* renamed from: kotlin.coroutines.b$c */
    /* loaded from: classes2.dex */
    static final class c extends i implements kotlin.jvm.c.c<t, CoroutineContext.b, t> {
        final /* synthetic */ CoroutineContext[] $elements;
        final /* synthetic */ m $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CoroutineContext[] coroutineContextArr, m mVar) {
            super(2);
            this.$elements = coroutineContextArr;
            this.$index = mVar;
        }

        @Override // kotlin.jvm.c.c
        public /* bridge */ /* synthetic */ t invoke(t tVar, CoroutineContext.b bVar) {
            invoke2(tVar, bVar);
            return t.f19946a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull t tVar, @NotNull CoroutineContext.b bVar) {
            h.b(tVar, "<anonymous parameter 0>");
            h.b(bVar, "element");
            CoroutineContext[] coroutineContextArr = this.$elements;
            m mVar = this.$index;
            int i2 = mVar.element;
            mVar.element = i2 + 1;
            coroutineContextArr[i2] = bVar;
        }
    }

    public CombinedContext(@NotNull CoroutineContext coroutineContext, @NotNull CoroutineContext.b bVar) {
        h.b(coroutineContext, "left");
        h.b(bVar, "element");
        this.left = coroutineContext;
        this.element = bVar;
    }

    private final int a() {
        int i2 = 2;
        CombinedContext combinedContext = this;
        while (true) {
            CoroutineContext coroutineContext = combinedContext.left;
            if (!(coroutineContext instanceof CombinedContext)) {
                coroutineContext = null;
            }
            combinedContext = (CombinedContext) coroutineContext;
            if (combinedContext == null) {
                return i2;
            }
            i2++;
        }
    }

    private final Object writeReplace() {
        int a2 = a();
        CoroutineContext[] coroutineContextArr = new CoroutineContext[a2];
        m mVar = new m();
        mVar.element = 0;
        fold(t.f19946a, new c(coroutineContextArr, mVar));
        if (mVar.element == a2) {
            return new a(coroutineContextArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public boolean equals(@Nullable Object other) {
        if (this != other) {
            if (other instanceof CombinedContext) {
                CombinedContext combinedContext = (CombinedContext) other;
                if (combinedContext.a() != a() || !combinedContext.a(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull kotlin.jvm.c.c<? super R, ? super CoroutineContext.b, ? extends R> cVar) {
        h.b(cVar, "operation");
        return cVar.invoke((Object) this.left.fold(r, cVar), this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.b> E get(@NotNull CoroutineContext.c<E> cVar) {
        h.b(cVar, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e2 = (E) combinedContext.element.get(cVar);
            if (e2 != null) {
                return e2;
            }
            CoroutineContext coroutineContext = combinedContext.left;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else {
                return (E) coroutineContext.get(cVar);
            }
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.c<?> cVar) {
        h.b(cVar, "key");
        if (this.element.get(cVar) != null) {
            return this.left;
        }
        CoroutineContext minusKey = this.left.minusKey(cVar);
        return minusKey == this.left ? this : minusKey == g.INSTANCE ? this.element : new CombinedContext(minusKey, this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        h.b(coroutineContext, "context");
        return CoroutineContext.a.a(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        return "[" + ((String) fold("", b.INSTANCE)) + "]";
    }

    private final boolean a(CoroutineContext.b bVar) {
        return h.a(get(bVar.getKey()), bVar);
    }

    private final boolean a(CombinedContext combinedContext) {
        while (a(combinedContext.element)) {
            CoroutineContext coroutineContext = combinedContext.left;
            if (!(coroutineContext instanceof CombinedContext)) {
                if (coroutineContext != null) {
                    return a((CoroutineContext.b) coroutineContext);
                }
                throw new r("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
            }
            combinedContext = (CombinedContext) coroutineContext;
        }
        return false;
    }
}
