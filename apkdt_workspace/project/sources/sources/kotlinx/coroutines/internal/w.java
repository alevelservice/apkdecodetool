package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemProps.common.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class w {
    public static final boolean a(@NotNull String str, boolean z) {
        kotlin.jvm.d.h.b(str, "propertyName");
        String a2 = u.a(str);
        return a2 != null ? Boolean.parseBoolean(a2) : z;
    }

    public static /* synthetic */ int a(String str, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            i3 = 1;
        }
        if ((i5 & 8) != 0) {
            i4 = Integer.MAX_VALUE;
        }
        return u.a(str, i2, i3, i4);
    }

    public static final int a(@NotNull String str, int i2, int i3, int i4) {
        kotlin.jvm.d.h.b(str, "propertyName");
        return (int) u.a(str, i2, i3, i4);
    }

    public static /* synthetic */ long a(String str, long j2, long j3, long j4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            j3 = 1;
        }
        long j5 = j3;
        if ((i2 & 8) != 0) {
            j4 = Long.MAX_VALUE;
        }
        return u.a(str, j2, j5, j4);
    }

    public static final long a(@NotNull String str, long j2, long j3, long j4) {
        Long b2;
        kotlin.jvm.d.h.b(str, "propertyName");
        String a2 = u.a(str);
        if (a2 == null) {
            return j2;
        }
        b2 = kotlin.text.k.b(a2);
        if (b2 == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + a2 + '\'').toString());
        }
        long longValue = b2.longValue();
        if (j3 <= longValue && j4 >= longValue) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + longValue + '\'').toString());
    }
}
