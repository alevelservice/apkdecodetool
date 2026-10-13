package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.c.c;
import kotlin.jvm.d.h;
import kotlin.m;
import kotlin.r;
import kotlin.ranges.IntRange;
import kotlin.ranges.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Strings.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012:\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000e¢\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096\u0002RB\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lkotlin/text/DelimitedRangesSequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/ranges/IntRange;", "input", "", "startIndex", "", "limit", "getNextMatch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "currentIndex", "Lkotlin/Pair;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.b0.c, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class DelimitedRangesSequence implements kotlin.sequences.a<IntRange> {

    /* renamed from: a, reason: collision with root package name */
    private final CharSequence f19911a;

    /* renamed from: b, reason: collision with root package name */
    private final int f19912b;

    /* renamed from: c, reason: collision with root package name */
    private final int f19913c;

    /* renamed from: d, reason: collision with root package name */
    private final c<CharSequence, Integer, m<Integer, Integer>> f19914d;

    /* compiled from: Strings.kt */
    /* renamed from: kotlin.b0.c$a */
    /* loaded from: classes2.dex */
    public static final class a implements Iterator<IntRange>, kotlin.jvm.d.q.a {

        /* renamed from: e, reason: collision with root package name */
        private int f19915e = -1;

        /* renamed from: f, reason: collision with root package name */
        private int f19916f;

        /* renamed from: g, reason: collision with root package name */
        private int f19917g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        private IntRange f19918h;

        /* renamed from: i, reason: collision with root package name */
        private int f19919i;

        a() {
            int a2;
            a2 = q.a(DelimitedRangesSequence.this.f19912b, 0, DelimitedRangesSequence.this.f19911a.length());
            this.f19916f = a2;
            this.f19917g = this.f19916f;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        
            if (r6.f19919i < r6.f19920j.f19913c) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void a() {
            /*
                r6 = this;
                int r0 = r6.f19917g
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f19915e = r1
                r0 = 0
                r6.f19918h = r0
                goto La2
            Lc:
                kotlin.b0.c r0 = kotlin.text.DelimitedRangesSequence.this
                int r0 = kotlin.text.DelimitedRangesSequence.c(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L25
                int r0 = r6.f19919i
                int r0 = r0 + r3
                r6.f19919i = r0
                int r0 = r6.f19919i
                kotlin.b0.c r4 = kotlin.text.DelimitedRangesSequence.this
                int r4 = kotlin.text.DelimitedRangesSequence.c(r4)
                if (r0 >= r4) goto L33
            L25:
                int r0 = r6.f19917g
                kotlin.b0.c r4 = kotlin.text.DelimitedRangesSequence.this
                java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.b(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L49
            L33:
                int r0 = r6.f19916f
                kotlin.y.j r1 = new kotlin.y.j
                kotlin.b0.c r4 = kotlin.text.DelimitedRangesSequence.this
                java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.b(r4)
                int r4 = kotlin.text.m.a(r4)
                r1.<init>(r0, r4)
                r6.f19918h = r1
                r6.f19917g = r2
                goto La0
            L49:
                kotlin.b0.c r0 = kotlin.text.DelimitedRangesSequence.this
                kotlin.jvm.c.c r0 = kotlin.text.DelimitedRangesSequence.a(r0)
                kotlin.b0.c r4 = kotlin.text.DelimitedRangesSequence.this
                java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.b(r4)
                int r5 = r6.f19917g
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.invoke(r4, r5)
                kotlin.m r0 = (kotlin.m) r0
                if (r0 != 0) goto L79
                int r0 = r6.f19916f
                kotlin.y.j r1 = new kotlin.y.j
                kotlin.b0.c r4 = kotlin.text.DelimitedRangesSequence.this
                java.lang.CharSequence r4 = kotlin.text.DelimitedRangesSequence.b(r4)
                int r4 = kotlin.text.m.a(r4)
                r1.<init>(r0, r4)
                r6.f19918h = r1
                r6.f19917g = r2
                goto La0
            L79:
                java.lang.Object r2 = r0.component1()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.component2()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f19916f
                kotlin.y.j r4 = kotlin.ranges.n.d(r4, r2)
                r6.f19918h = r4
                int r2 = r2 + r0
                r6.f19916f = r2
                int r2 = r6.f19916f
                if (r0 != 0) goto L9d
                r1 = 1
            L9d:
                int r2 = r2 + r1
                r6.f19917g = r2
            La0:
                r6.f19915e = r3
            La2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.DelimitedRangesSequence.a.a():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f19915e == -1) {
                a();
            }
            return this.f19915e == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Iterator
        @NotNull
        public IntRange next() {
            if (this.f19915e == -1) {
                a();
            }
            if (this.f19915e != 0) {
                IntRange intRange = this.f19918h;
                if (intRange != null) {
                    this.f19918h = null;
                    this.f19915e = -1;
                    return intRange;
                }
                throw new r("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DelimitedRangesSequence(@NotNull CharSequence charSequence, int i2, int i3, @NotNull c<? super CharSequence, ? super Integer, m<Integer, Integer>> cVar) {
        h.b(charSequence, "input");
        h.b(cVar, "getNextMatch");
        this.f19911a = charSequence;
        this.f19912b = i2;
        this.f19913c = i3;
        this.f19914d = cVar;
    }

    @Override // kotlin.sequences.a
    @NotNull
    public Iterator<IntRange> iterator() {
        return new a();
    }
}
