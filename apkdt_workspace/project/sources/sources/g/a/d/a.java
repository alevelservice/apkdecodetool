package g.a.d;

import android.content.Context;
import android.os.Build;

/* compiled from: PathUtils.java */
/* loaded from: classes2.dex */
public final class a {
    public static String a(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return context.getCodeCacheDir().getPath();
        }
        return context.getCacheDir().getPath();
    }

    public static String b(Context context) {
        return context.getDir("flutter", 0).getPath();
    }

    public static String c(Context context) {
        return context.getFilesDir().getPath();
    }
}
