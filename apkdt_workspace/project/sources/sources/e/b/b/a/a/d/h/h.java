package e.b.b.a.a.d.h;

import android.annotation.SuppressLint;
import android.content.Context;

/* compiled from: UserDiagnostician.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: b, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static h f17034b;

    /* renamed from: a, reason: collision with root package name */
    private String f17035a;

    private h(Context context) {
        context.getApplicationContext();
    }

    public static synchronized h a(Context context) {
        h hVar;
        synchronized (h.class) {
            if (f17034b == null) {
                f17034b = new h(context);
                f17034b.f17035a = e.a();
            }
            hVar = f17034b;
        }
        return hVar;
    }
}
