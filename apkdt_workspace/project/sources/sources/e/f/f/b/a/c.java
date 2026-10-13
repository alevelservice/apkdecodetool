package e.f.f.b.a;

import android.content.Context;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.h;
import com.facebook.imagepipeline.core.j;
import com.facebook.soloader.SoLoader;
import java.io.IOException;
import javax.annotation.Nullable;

/* compiled from: Fresco.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f17234a = c.class;

    /* renamed from: b, reason: collision with root package name */
    private static f f17235b = null;

    /* renamed from: c, reason: collision with root package name */
    private static volatile boolean f17236c = false;

    private c() {
    }

    public static void a(Context context) {
        a(context, null, null);
    }

    public static void a(Context context, @Nullable h hVar, @Nullable b bVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("Fresco#initialize");
        }
        if (f17236c) {
            e.f.c.d.a.c(f17234a, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!");
        } else {
            f17236c = true;
        }
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("Fresco.initialize->SoLoader.init");
            }
            SoLoader.a(context, 0);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            Context applicationContext = context.getApplicationContext();
            if (hVar == null) {
                j.b(applicationContext);
            } else {
                j.a(hVar);
            }
            a(applicationContext, bVar);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        } catch (IOException e2) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            throw new RuntimeException("Could not initialize SoLoader", e2);
        }
    }

    private static void a(Context context, @Nullable b bVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("Fresco.initializeDrawee");
        }
        f17235b = new f(context, bVar);
        SimpleDraweeView.initialize(f17235b);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    public static e a() {
        return f17235b.get();
    }
}
