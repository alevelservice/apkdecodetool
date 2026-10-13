package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.c;
import kotlin.jvm.d.e;
import org.jetbrains.annotations.NotNull;

/* compiled from: Progressions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0016J\t\u0010\u0015\u001a\u00020\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\b\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lkotlin/ranges/CharProgression;", "", "", "start", "endInclusive", "step", "", "(CCI)V", "first", "getFirst", "()C", "last", "getLast", "getStep", "()I", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "Lkotlin/collections/CharIterator;", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.y.a, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public class CharProgression implements Iterable<Character>, kotlin.jvm.d.q.a {

    /* renamed from: e, reason: collision with root package name */
    private final char f19949e;

    /* renamed from: f, reason: collision with root package name */
    private final char f19950f;

    /* renamed from: g, reason: collision with root package name */
    private final int f19951g;

    /* compiled from: Progressions.kt */
    /* renamed from: kotlin.y.a$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(e eVar) {
            this();
        }
    }

    static {
        new a(null);
    }

    public CharProgression(char c2, char c3, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f19949e = c2;
            this.f19950f = (char) c.b((int) c2, (int) c3, i2);
            this.f19951g = i2;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }

    /* renamed from: a, reason: from getter */
    public final char getF19949e() {
        return this.f19949e;
    }

    /* renamed from: b, reason: from getter */
    public final char getF19950f() {
        return this.f19950f;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Character> iterator() {
        return new b(this.f19949e, this.f19950f, this.f19951g);
    }
}
