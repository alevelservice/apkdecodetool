package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;

/* compiled from: BitmapPoolBackend.java */
/* loaded from: classes.dex */
public class e extends s<Bitmap> {
    @Override // com.facebook.imagepipeline.memory.s, com.facebook.imagepipeline.memory.c0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(Bitmap bitmap) {
        if (b(bitmap)) {
            super.b((e) bitmap);
        }
    }

    @Override // com.facebook.imagepipeline.memory.c0
    public int a(Bitmap bitmap) {
        return com.facebook.imageutils.a.a(bitmap);
    }

    protected boolean b(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        if (bitmap.isRecycled()) {
            e.f.c.d.a.d("BitmapPoolBackend", "Cannot reuse a recycled bitmap: %s", bitmap);
            return false;
        }
        if (bitmap.isMutable()) {
            return true;
        }
        e.f.c.d.a.d("BitmapPoolBackend", "Cannot reuse an immutable bitmap: %s", bitmap);
        return false;
    }

    @Override // com.facebook.imagepipeline.memory.s, com.facebook.imagepipeline.memory.c0
    @Nullable
    public Bitmap get(int i2) {
        Bitmap bitmap = (Bitmap) super.get(i2);
        if (bitmap == null || !b(bitmap)) {
            return null;
        }
        bitmap.eraseColor(0);
        return bitmap;
    }
}
