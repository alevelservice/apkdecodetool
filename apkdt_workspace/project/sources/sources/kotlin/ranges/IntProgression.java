package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.c;
import kotlin.jvm.d.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Progressions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lkotlin/ranges/IntProgression;", "", "", "start", "endInclusive", "step", "(III)V", "first", "getFirst", "()I", "last", "getLast", "getStep", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "Lkotlin/collections/IntIterator;", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.y.h, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public class IntProgression implements Iterable<Integer>, kotlin.jvm.d.q.a {

    /* renamed from: h, reason: collision with root package name */
    public static final a f19960h = new a(null);

    /* renamed from: e, reason: collision with root package name */
    private final int f19961e;

    /* renamed from: f, reason: collision with root package name */
    private final int f19962f;

    /* renamed from: g, reason: collision with root package name */
    private final int f19963g;

    /* compiled from: Progressions.kt */
    /* renamed from: kotlin.y.h$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        @NotNull
        public final IntProgression a(int i2, int i3, int i4) {
            return new IntProgression(i2, i3, i4);
        }

        public /* synthetic */ a(e eVar) {
            this();
        }
    }

    public IntProgression(int i2, int i3, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i4 != Integer.MIN_VALUE) {
            this.f19961e = i2;
            this.f19962f = c.b(i2, i3, i4);
            this.f19963g = i4;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }

    /* renamed from: a, reason: from getter */
    public final int getF19961e() {
        return this.f19961e;
    }

    /* renamed from: b, reason: from getter */
    public final int getF19962f() {
        return this.f19962f;
    }

    /* renamed from: c, reason: from getter */
    public final int getF19963g() {
        return this.f19963g;
    }

    public boolean equals(@Nullable Object other) {
        if (other instanceof IntProgression) {
            if (!isEmpty() || !((IntProgression) other).isEmpty()) {
                IntProgression intProgression = (IntProgression) other;
                if (this.f19961e != intProgression.f19961e || this.f19962f != intProgression.f19962f || this.f19963g != intProgression.f19963g) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f19961e * 31) + this.f19962f) * 31) + this.f19963g;
    }

    public boolean isEmpty() {
        if (this.f19963g > 0) {
            if (this.f19961e > this.f19962f) {
                return true;
            }
        } else if (this.f19961e < this.f19962f) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        StringBuilder sb;
        int i2;
        if (this.f19963g > 0) {
            sb = new StringBuilder();
            sb.append(this.f19961e);
            sb.append("..");
            sb.append(this.f19962f);
            sb.append(" step ");
            i2 = this.f19963g;
        } else {
            sb = new StringBuilder();
            sb.append(this.f19961e);
            sb.append(" downTo ");
            sb.append(this.f19962f);
            sb.append(" step ");
            i2 = -this.f19963g;
        }
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Integer> iterator() {
        return new i(this.f19961e, this.f19962f, this.f19963g);
    }
}
