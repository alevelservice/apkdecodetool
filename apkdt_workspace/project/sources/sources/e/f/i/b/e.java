package e.f.i.b;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Rect;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: HoneycombBitmapFactory.java */
@ThreadSafe
@TargetApi(11)
/* loaded from: classes.dex */
public class e extends f {

    /* renamed from: d, reason: collision with root package name */
    private static final String f17515d = "e";

    /* renamed from: a, reason: collision with root package name */
    private final b f17516a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.f f17517b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f17518c;

    public e(b bVar, com.facebook.imagepipeline.platform.f fVar) {
        this.f17516a = bVar;
        this.f17517b = fVar;
    }

    private static e.f.c.g.a<Bitmap> c(int i2, int i3, Bitmap.Config config) {
        return e.f.c.g.a.a(Bitmap.createBitmap(i2, i3, config), h.a());
    }

    @Override // e.f.i.b.f
    @TargetApi(12)
    public e.f.c.g.a<Bitmap> b(int i2, int i3, Bitmap.Config config) {
        if (this.f17518c) {
            return c(i2, i3, config);
        }
        e.f.c.g.a<e.f.c.f.g> a2 = this.f17516a.a((short) i2, (short) i3);
        try {
            e.f.i.g.e eVar = new e.f.i.g.e(a2);
            eVar.a(e.f.h.b.f17450a);
            try {
                e.f.c.g.a<Bitmap> a3 = this.f17517b.a(eVar, config, (Rect) null, a2.A().size());
                if (!a3.A().isMutable()) {
                    e.f.c.g.a.b(a3);
                    this.f17518c = true;
                    e.f.c.d.a.c(f17515d, "Immutable bitmap returned by decoder");
                    return c(i2, i3, config);
                }
                a3.A().setHasAlpha(true);
                a3.A().eraseColor(0);
                return a3;
            } finally {
                e.f.i.g.e.c(eVar);
            }
        } finally {
            a2.close();
        }
    }
}
