package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;

/* compiled from: DummyBitmapPool.java */
/* loaded from: classes.dex */
public class o implements d {
    @Override // e.f.c.f.e, e.f.c.g.c
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e.f.c.f.e
    public Bitmap get(int i2) {
        double d2 = i2;
        Double.isNaN(d2);
        return Bitmap.createBitmap(1, (int) Math.ceil(d2 / 2.0d), Bitmap.Config.RGB_565);
    }
}
