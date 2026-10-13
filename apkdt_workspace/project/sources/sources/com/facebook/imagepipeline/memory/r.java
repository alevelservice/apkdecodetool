package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.facebook.common.internal.VisibleForTesting;

/* compiled from: LruBitmapPool.java */
/* loaded from: classes.dex */
public class r implements d {

    /* renamed from: a, reason: collision with root package name */
    protected final c0<Bitmap> f3866a = new e();

    /* renamed from: b, reason: collision with root package name */
    private final int f3867b;

    /* renamed from: c, reason: collision with root package name */
    private int f3868c;

    /* renamed from: d, reason: collision with root package name */
    private final g0 f3869d;

    /* renamed from: e, reason: collision with root package name */
    private int f3870e;

    public r(int i2, int i3, g0 g0Var, @Nullable e.f.c.f.c cVar) {
        this.f3867b = i2;
        this.f3868c = i3;
        this.f3869d = g0Var;
        if (cVar != null) {
            cVar.a(this);
        }
    }

    private synchronized void b(int i2) {
        Bitmap a2;
        while (this.f3870e > i2 && (a2 = this.f3866a.a()) != null) {
            int a3 = this.f3866a.a(a2);
            this.f3870e -= a3;
            this.f3869d.c(a3);
        }
    }

    @VisibleForTesting
    private Bitmap a(int i2) {
        this.f3869d.a(i2);
        return Bitmap.createBitmap(1, i2, Bitmap.Config.ALPHA_8);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e.f.c.f.e
    public synchronized Bitmap get(int i2) {
        if (this.f3870e > this.f3867b) {
            b(this.f3867b);
        }
        Bitmap bitmap = this.f3866a.get(i2);
        if (bitmap != null) {
            int a2 = this.f3866a.a(bitmap);
            this.f3870e -= a2;
            this.f3869d.b(a2);
            return bitmap;
        }
        return a(i2);
    }

    @Override // e.f.c.f.e, e.f.c.g.c
    public void a(Bitmap bitmap) {
        int a2 = this.f3866a.a(bitmap);
        if (a2 <= this.f3868c) {
            this.f3869d.d(a2);
            this.f3866a.b(bitmap);
            synchronized (this) {
                this.f3870e += a2;
            }
        }
    }
}
