package e.i.c.a;

import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Objects.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class h extends c {
    public static boolean a(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int a(@NullableDecl Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
