package e.b.b.a.a.e;

import android.content.Context;

/* compiled from: DeviceUtil.java */
/* loaded from: classes.dex */
public class f {
    public static int a() {
        return d.a();
    }

    public static int b() {
        int b2 = d.b();
        if (b2 == -1 || b2 <= 0) {
            return -1;
        }
        return b2 / 1000;
    }

    public static long a(Context context) {
        long a2 = d.a(context);
        if (a2 == -1 || a2 <= 0) {
            return -1L;
        }
        return a2 / 1048576;
    }
}
