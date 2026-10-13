package kotlin.ranges;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.Metadata;
import kotlin.jvm.d.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Ranges.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0014B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\b¨\u0006\u0015"}, d2 = {"Lkotlin/ranges/IntRange;", "Lkotlin/ranges/IntProgression;", "Lkotlin/ranges/ClosedRange;", "", "start", "endInclusive", "(II)V", "getEndInclusive", "()Ljava/lang/Integer;", "getStart", "contains", "", HummerConstants.VALUE, "equals", "other", "", "hashCode", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.y.j, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class IntRange extends IntProgression implements g<Integer> {

    /* renamed from: j, reason: collision with root package name */
    public static final a f19969j = new a(null);

    /* renamed from: i, reason: collision with root package name */
    @NotNull
    private static final IntRange f19968i = new IntRange(1, 0);

    /* compiled from: Ranges.kt */
    /* renamed from: kotlin.y.j$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        @NotNull
        public final IntRange a() {
            return IntRange.f19968i;
        }

        public /* synthetic */ a(e eVar) {
            this();
        }
    }

    public IntRange(int i2, int i3) {
        super(i2, i3, 1);
    }

    @NotNull
    public Integer d() {
        return Integer.valueOf(getF19962f());
    }

    @NotNull
    public Integer e() {
        return Integer.valueOf(getF19961e());
    }

    @Override // kotlin.ranges.IntProgression
    public boolean equals(@Nullable Object other) {
        if (other instanceof IntRange) {
            if (!isEmpty() || !((IntRange) other).isEmpty()) {
                IntRange intRange = (IntRange) other;
                if (getF19961e() != intRange.getF19961e() || getF19962f() != intRange.getF19962f()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.IntProgression
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (getF19961e() * 31) + getF19962f();
    }

    @Override // kotlin.ranges.IntProgression
    public boolean isEmpty() {
        return getF19961e() > getF19962f();
    }

    @Override // kotlin.ranges.IntProgression
    @NotNull
    public String toString() {
        return getF19961e() + ".." + getF19962f();
    }
}
