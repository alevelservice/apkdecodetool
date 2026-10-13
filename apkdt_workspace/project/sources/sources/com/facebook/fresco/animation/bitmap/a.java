package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import javax.annotation.Nullable;

/* compiled from: BitmapFrameCache.java */
/* loaded from: classes.dex */
public interface a {

    /* compiled from: BitmapFrameCache.java */
    /* renamed from: com.facebook.fresco.animation.bitmap.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0064a {
        void a(a aVar, int i2);

        void b(a aVar, int i2);
    }

    @Nullable
    e.f.c.g.a<Bitmap> a(int i2, int i3, int i4);

    void a(int i2, e.f.c.g.a<Bitmap> aVar, int i3);

    boolean a(int i2);

    @Nullable
    e.f.c.g.a<Bitmap> b(int i2);

    void b(int i2, e.f.c.g.a<Bitmap> aVar, int i3);

    @Nullable
    e.f.c.g.a<Bitmap> c(int i2);

    void clear();
}
