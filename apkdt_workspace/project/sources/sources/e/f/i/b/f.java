package e.f.i.b;

import android.graphics.Bitmap;
import javax.annotation.Nullable;

/* compiled from: PlatformBitmapFactory.java */
/* loaded from: classes.dex */
public abstract class f {
    public e.f.c.g.a<Bitmap> a(int i2, int i3, Bitmap.Config config) {
        return a(i2, i3, config, null);
    }

    public abstract e.f.c.g.a<Bitmap> b(int i2, int i3, Bitmap.Config config);

    public e.f.c.g.a<Bitmap> a(int i2, int i3, Bitmap.Config config, @Nullable Object obj) {
        return b(i2, i3, config);
    }
}
