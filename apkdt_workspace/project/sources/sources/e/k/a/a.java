package e.k.a;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import k.b.a.y.h;

/* compiled from: AndroidThreeTen.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f17998a = new AtomicBoolean();

    public static void a(Context context) {
        a(context, "org/threeten/bp/TZDB.dat");
    }

    public static void a(Context context, String str) {
        if (f17998a.getAndSet(true)) {
            return;
        }
        h.a(new b(context, str));
    }
}
