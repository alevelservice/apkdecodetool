package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: BucketsBitmapPool.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public class h extends a<Bitmap> implements d {
    public h(e.f.c.f.c cVar, f0 f0Var, g0 g0Var) {
        super(cVar, f0Var, g0Var);
        a();
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int d(int i2) {
        return i2;
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int e(int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int c(Bitmap bitmap) {
        com.facebook.common.internal.h.a(bitmap);
        return bitmap.getAllocationByteCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public boolean d(Bitmap bitmap) {
        com.facebook.common.internal.h.a(bitmap);
        return !bitmap.isRecycled() && bitmap.isMutable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: a */
    public Bitmap a2(int i2) {
        double d2 = i2;
        Double.isNaN(d2);
        return Bitmap.createBitmap(1, (int) Math.ceil(d2 / 2.0d), Bitmap.Config.RGB_565);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(Bitmap bitmap) {
        com.facebook.common.internal.h.a(bitmap);
        bitmap.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.imagepipeline.memory.a
    @Nullable
    public Bitmap a(f<Bitmap> fVar) {
        Bitmap bitmap = (Bitmap) super.a((f) fVar);
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
        return bitmap;
    }
}
