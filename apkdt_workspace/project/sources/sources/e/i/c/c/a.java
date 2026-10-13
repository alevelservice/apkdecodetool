package e.i.c.c;

import com.google.common.annotations.GwtCompatible;
import e.b.b.a.a.a.c;

/* compiled from: Ints.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class a {
    public static int a(long j2) {
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return j2 < -2147483648L ? c.ALL_INT : (int) j2;
    }
}
