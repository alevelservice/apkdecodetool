package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.c.b;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;

/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u0003B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J3\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0003\"\u0004\b\u0002\u0010\t2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000b0\u0006H\u0000¢\u0006\u0002\b\fJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0096\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlin/sequences/TransformingSequence;", "T", "R", "Lkotlin/sequences/Sequence;", "sequence", "transformer", "Lkotlin/Function1;", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "flatten", "E", "iterator", "", "flatten$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.a0.h, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class TransformingSequence<T, R> implements kotlin.sequences.a<R> {

    /* renamed from: a, reason: collision with root package name */
    private final kotlin.sequences.a<T> f19905a;

    /* renamed from: b, reason: collision with root package name */
    private final b<T, R> f19906b;

    /* compiled from: Sequences.kt */
    /* renamed from: kotlin.a0.h$a */
    /* loaded from: classes2.dex */
    public static final class a implements Iterator<R>, kotlin.jvm.d.q.a {

        /* renamed from: e, reason: collision with root package name */
        @NotNull
        private final Iterator<T> f19907e;

        a() {
            this.f19907e = TransformingSequence.this.f19905a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19907e.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) TransformingSequence.this.f19906b.invoke(this.f19907e.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TransformingSequence(@NotNull kotlin.sequences.a<? extends T> aVar, @NotNull b<? super T, ? extends R> bVar) {
        h.b(aVar, "sequence");
        h.b(bVar, "transformer");
        this.f19905a = aVar;
        this.f19906b = bVar;
    }

    @Override // kotlin.sequences.a
    @NotNull
    public Iterator<R> iterator() {
        return new a();
    }
}
