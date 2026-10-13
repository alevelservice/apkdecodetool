package e.f.i.b;

import android.os.Build;
import com.facebook.imagepipeline.memory.e0;

/* compiled from: PlatformBitmapFactoryProvider.java */
/* loaded from: classes.dex */
public class g {
    public static f a(e0 e0Var, com.facebook.imagepipeline.platform.f fVar) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return new a(e0Var.a());
        }
        if (i2 >= 11) {
            return new e(new b(e0Var.f()), fVar);
        }
        return new c();
    }
}
