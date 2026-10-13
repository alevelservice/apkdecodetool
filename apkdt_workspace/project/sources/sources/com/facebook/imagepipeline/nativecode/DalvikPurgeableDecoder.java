package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import com.facebook.common.internal.l;
import e.f.c.f.g;
import java.util.Locale;
import javax.annotation.Nullable;

@DoNotStrip
/* loaded from: classes.dex */
public abstract class DalvikPurgeableDecoder implements com.facebook.imagepipeline.platform.f {

    /* renamed from: b, reason: collision with root package name */
    protected static final byte[] f3881b;

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.b f3882a = com.facebook.imagepipeline.memory.c.a();

    static {
        a.a();
        f3881b = new byte[]{-1, -39};
    }

    @DoNotStrip
    private static native void nativePinBitmap(Bitmap bitmap);

    protected abstract Bitmap a(e.f.c.g.a<g> aVar, int i2, BitmapFactory.Options options);

    protected abstract Bitmap a(e.f.c.g.a<g> aVar, BitmapFactory.Options options);

    @Override // com.facebook.imagepipeline.platform.f
    public e.f.c.g.a<Bitmap> a(e.f.i.g.e eVar, Bitmap.Config config, @Nullable Rect rect, int i2) {
        return a(eVar, config, rect, i2, false);
    }

    @Override // com.facebook.imagepipeline.platform.f
    public e.f.c.g.a<Bitmap> a(e.f.i.g.e eVar, Bitmap.Config config, @Nullable Rect rect, boolean z) {
        BitmapFactory.Options a2 = a(eVar.s(), config);
        e.f.c.g.a<g> j2 = eVar.j();
        h.a(j2);
        try {
            return a(a(j2, a2));
        } finally {
            e.f.c.g.a.b(j2);
        }
    }

    @Override // com.facebook.imagepipeline.platform.f
    public e.f.c.g.a<Bitmap> a(e.f.i.g.e eVar, Bitmap.Config config, @Nullable Rect rect, int i2, boolean z) {
        BitmapFactory.Options a2 = a(eVar.s(), config);
        e.f.c.g.a<g> j2 = eVar.j();
        h.a(j2);
        try {
            return a(a(j2, i2, a2));
        } finally {
            e.f.c.g.a.b(j2);
        }
    }

    @VisibleForTesting
    public static BitmapFactory.Options a(int i2, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i2;
        if (Build.VERSION.SDK_INT >= 11) {
            options.inMutable = true;
        }
        return options;
    }

    @VisibleForTesting
    public static boolean a(e.f.c.g.a<g> aVar, int i2) {
        g A = aVar.A();
        return i2 >= 2 && A.b(i2 + (-2)) == -1 && A.b(i2 - 1) == -39;
    }

    public e.f.c.g.a<Bitmap> a(Bitmap bitmap) {
        h.a(bitmap);
        try {
            nativePinBitmap(bitmap);
            if (this.f3882a.b(bitmap)) {
                return e.f.c.g.a.a(bitmap, this.f3882a.d());
            }
            int a2 = com.facebook.imageutils.a.a(bitmap);
            bitmap.recycle();
            throw new com.facebook.imagepipeline.common.f(String.format(Locale.US, "Attempted to pin a bitmap of size %d bytes. The current pool count is %d, the current pool size is %d bytes. The current pool max count is %d, the current pool max size is %d bytes.", Integer.valueOf(a2), Integer.valueOf(this.f3882a.a()), Long.valueOf(this.f3882a.e()), Integer.valueOf(this.f3882a.b()), Integer.valueOf(this.f3882a.c())));
        } catch (Exception e2) {
            bitmap.recycle();
            l.a(e2);
            throw null;
        }
    }
}
