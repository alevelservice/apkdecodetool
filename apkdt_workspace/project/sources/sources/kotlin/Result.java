package kotlin;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.Serializable;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Result.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087@\u0018\u0000 \u001e*\u0006\b\u0000\u0010\u0001 \u00012\u00060\u0002j\u0002`\u0003:\u0002\u001e\u001fB\u0016\b\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u0010\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00018\u0000H\u0087\b¢\u0006\u0004\b\u0017\u0010\u0007J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u000f\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u000fø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lkotlin/Result;", "T", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", HummerConstants.VALUE, "", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "isFailure", "", "isFailure-impl", "(Ljava/lang/Object;)Z", "isSuccess", "isSuccess-impl", "value$annotations", "()V", "equals", "other", "exceptionOrNull", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getOrNull", "getOrNull-impl", "hashCode", "", "toString", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "Companion", HummerConstants.EKYC_FAIL, "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.n, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class Result<T> implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private final Object value;

    /* compiled from: Result.kt */
    /* renamed from: kotlin.n$a, reason: from kotlin metadata */
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.d.e eVar) {
            this();
        }
    }

    /* compiled from: Result.kt */
    /* renamed from: kotlin.n$b */
    /* loaded from: classes2.dex */
    public static final class b implements Serializable {

        @JvmField
        @NotNull
        public final Throwable exception;

        public b(@NotNull Throwable th) {
            kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
            this.exception = th;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof b) && kotlin.jvm.d.h.a(this.exception, ((b) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    @PublishedApi
    private /* synthetic */ Result(@Nullable Object obj) {
        this.value = obj;
    }

    @NotNull
    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Result m22boximpl(@Nullable Object obj) {
        return new Result(obj);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static Object m23constructorimpl(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m24equalsimpl(Object obj, @Nullable Object obj2) {
        return (obj2 instanceof Result) && kotlin.jvm.d.h.a(obj, ((Result) obj2).getValue());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m25equalsimpl0(@Nullable Object obj, @Nullable Object obj2) {
        throw null;
    }

    @Nullable
    /* renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m26exceptionOrNullimpl(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).exception;
        }
        return null;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m27hashCodeimpl(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* renamed from: isFailure-impl, reason: not valid java name */
    public static final boolean m28isFailureimpl(Object obj) {
        return obj instanceof b;
    }

    /* renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m29isSuccessimpl(Object obj) {
        return !(obj instanceof b);
    }

    @NotNull
    /* renamed from: toString-impl, reason: not valid java name */
    public static String m30toStringimpl(Object obj) {
        if (obj instanceof b) {
            return obj.toString();
        }
        return "Success(" + obj + ')';
    }

    @PublishedApi
    public static /* synthetic */ void value$annotations() {
    }

    public boolean equals(Object other) {
        return m24equalsimpl(this.value, other);
    }

    public int hashCode() {
        return m27hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m30toStringimpl(this.value);
    }

    @Nullable
    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Object getValue() {
        return this.value;
    }
}
