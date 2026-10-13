package e.f.i.b;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: ArtBitmapFactory.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public class a extends f {

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.d f17511a;

    public a(com.facebook.imagepipeline.memory.d dVar) {
        this.f17511a = dVar;
    }

    @Override // e.f.i.b.f
    public e.f.c.g.a<Bitmap> b(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmap = this.f17511a.get(com.facebook.imageutils.a.a(i2, i3, config));
        com.facebook.common.internal.h.a(bitmap.getAllocationByteCount() >= (i2 * i3) * com.facebook.imageutils.a.a(config));
        bitmap.reconfigure(i2, i3, config);
        return e.f.c.g.a.a(bitmap, this.f17511a);
    }
}
