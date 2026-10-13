package kotlin.ranges;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.Metadata;
import kotlin.jvm.d.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Ranges.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\b¨\u0006\u0016"}, d2 = {"Lkotlin/ranges/CharRange;", "Lkotlin/ranges/CharProgression;", "Lkotlin/ranges/ClosedRange;", "", "start", "endInclusive", "(CC)V", "getEndInclusive", "()Ljava/lang/Character;", "getStart", "contains", "", HummerConstants.VALUE, "equals", "other", "", "hashCode", "", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.y.c, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class CharRange extends CharProgression implements g<Character> {

    /* compiled from: Ranges.kt */
    /* renamed from: kotlin.y.c$a */
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
        new CharRange((char) 1, (char) 0);
    }

    public CharRange(char c2, char c3) {
        super(c2, c3, 1);
    }

    public boolean equals(@Nullable Object other) {
        if (other instanceof CharRange) {
            if (!isEmpty() || !((CharRange) other).isEmpty()) {
                CharRange charRange = (CharRange) other;
                if (getF19949e() != charRange.getF19949e() || getF19950f() != charRange.getF19950f()) {
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
        return (getF19949e() * 31) + getF19950f();
    }

    public boolean isEmpty() {
        return getF19949e() > getF19950f();
    }

    @NotNull
    public String toString() {
        return getF19949e() + ".." + getF19950f();
    }
}
