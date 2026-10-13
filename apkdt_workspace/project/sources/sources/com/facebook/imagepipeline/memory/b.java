package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: BitmapCounter.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private int f3798a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private long f3799b;

    /* renamed from: c, reason: collision with root package name */
    private final int f3800c;

    /* renamed from: d, reason: collision with root package name */
    private final int f3801d;

    /* renamed from: e, reason: collision with root package name */
    private final e.f.c.g.c<Bitmap> f3802e;

    /* compiled from: BitmapCounter.java */
    /* loaded from: classes.dex */
    class a implements e.f.c.g.c<Bitmap> {
        a() {
        }

        @Override // e.f.c.g.c
        public void a(Bitmap bitmap) {
            try {
                b.this.a(bitmap);
            } finally {
                bitmap.recycle();
            }
        }
    }

    public b(int i2, int i3) {
        com.facebook.common.internal.h.a(i2 > 0);
        com.facebook.common.internal.h.a(i3 > 0);
        this.f3800c = i2;
        this.f3801d = i3;
        this.f3802e = new a();
    }

    public synchronized void a(Bitmap bitmap) {
        int a2 = com.facebook.imageutils.a.a(bitmap);
        com.facebook.common.internal.h.a(this.f3798a > 0, "No bitmaps registered.");
        long j2 = a2;
        com.facebook.common.internal.h.a(j2 <= this.f3799b, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(a2), Long.valueOf(this.f3799b));
        this.f3799b -= j2;
        this.f3798a--;
    }

    public synchronized boolean b(Bitmap bitmap) {
        int a2 = com.facebook.imageutils.a.a(bitmap);
        if (this.f3798a < this.f3800c) {
            long j2 = a2;
            if (this.f3799b + j2 <= this.f3801d) {
                this.f3798a++;
                this.f3799b += j2;
                return true;
            }
        }
        return false;
    }

    public synchronized int c() {
        return this.f3801d;
    }

    public e.f.c.g.c<Bitmap> d() {
        return this.f3802e;
    }

    public synchronized long e() {
        return this.f3799b;
    }

    public synchronized int b() {
        return this.f3800c;
    }

    public synchronized int a() {
        return this.f3798a;
    }
}
