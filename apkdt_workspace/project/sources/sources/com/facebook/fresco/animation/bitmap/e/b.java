package com.facebook.fresco.animation.bitmap.e;

import android.graphics.Bitmap;
import android.graphics.Rect;
import e.f.i.a.c.d;
import javax.annotation.Nullable;

/* compiled from: AnimatedDrawableBackendFrameRenderer.java */
/* loaded from: classes.dex */
public class b implements com.facebook.fresco.animation.bitmap.b {

    /* renamed from: e, reason: collision with root package name */
    private static final Class<?> f3623e = b.class;

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.a f3624a;

    /* renamed from: b, reason: collision with root package name */
    private e.f.i.a.a.a f3625b;

    /* renamed from: c, reason: collision with root package name */
    private d f3626c;

    /* renamed from: d, reason: collision with root package name */
    private final d.b f3627d = new a();

    /* compiled from: AnimatedDrawableBackendFrameRenderer.java */
    /* loaded from: classes.dex */
    class a implements d.b {
        a() {
        }

        @Override // e.f.i.a.c.d.b
        @Nullable
        public e.f.c.g.a<Bitmap> a(int i2) {
            return b.this.f3624a.b(i2);
        }

        @Override // e.f.i.a.c.d.b
        public void a(int i2, Bitmap bitmap) {
        }
    }

    public b(com.facebook.fresco.animation.bitmap.a aVar, e.f.i.a.a.a aVar2) {
        this.f3624a = aVar;
        this.f3625b = aVar2;
        this.f3626c = new d(this.f3625b, this.f3627d);
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public int c() {
        return this.f3625b.getHeight();
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public int d() {
        return this.f3625b.getWidth();
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public void a(@Nullable Rect rect) {
        e.f.i.a.a.a a2 = this.f3625b.a(rect);
        if (a2 != this.f3625b) {
            this.f3625b = a2;
            this.f3626c = new d(this.f3625b, this.f3627d);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.b
    public boolean a(int i2, Bitmap bitmap) {
        try {
            this.f3626c.a(i2, bitmap);
            return true;
        } catch (IllegalStateException e2) {
            e.f.c.d.a.a(f3623e, e2, "Rendering of frame unsuccessful. Frame number: %d", Integer.valueOf(i2));
            return false;
        }
    }
}
