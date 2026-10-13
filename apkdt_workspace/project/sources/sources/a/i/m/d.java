package a.i.m;

import android.os.Build;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: ObjectsCompat.java */
/* loaded from: classes.dex */
public class d {
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int a(@Nullable Object... objArr) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.hash(objArr);
        }
        return Arrays.hashCode(objArr);
    }
}
