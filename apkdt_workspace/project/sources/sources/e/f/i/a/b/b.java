package e.f.i.a.b;

import e.f.i.b.f;
import e.f.i.c.h;

/* compiled from: AnimatedFactoryProvider.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f17482a;

    /* renamed from: b, reason: collision with root package name */
    private static a f17483b;

    public static a a(f fVar, com.facebook.imagepipeline.core.e eVar, h<e.f.b.a.d, e.f.i.g.c> hVar, boolean z) {
        if (!f17482a) {
            try {
                f17483b = (a) Class.forName("com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl").getConstructor(f.class, com.facebook.imagepipeline.core.e.class, h.class, Boolean.TYPE).newInstance(fVar, eVar, hVar, Boolean.valueOf(z));
            } catch (Throwable unused) {
            }
            if (f17483b != null) {
                f17482a = true;
            }
        }
        return f17483b;
    }
}
