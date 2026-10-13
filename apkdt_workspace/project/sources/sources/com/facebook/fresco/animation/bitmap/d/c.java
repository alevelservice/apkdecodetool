package com.facebook.fresco.animation.bitmap.d;

import android.graphics.Bitmap;
import android.util.SparseArray;
import e.f.i.b.f;
import java.util.concurrent.ExecutorService;

/* compiled from: DefaultBitmapFramePreparer.java */
/* loaded from: classes.dex */
public class c implements b {

    /* renamed from: f, reason: collision with root package name */
    private static final Class<?> f3609f = c.class;

    /* renamed from: a, reason: collision with root package name */
    private final f f3610a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.b f3611b;

    /* renamed from: c, reason: collision with root package name */
    private final Bitmap.Config f3612c;

    /* renamed from: d, reason: collision with root package name */
    private final ExecutorService f3613d;

    /* renamed from: e, reason: collision with root package name */
    private final SparseArray<Runnable> f3614e = new SparseArray<>();

    public c(f fVar, com.facebook.fresco.animation.bitmap.b bVar, Bitmap.Config config, ExecutorService executorService) {
        this.f3610a = fVar;
        this.f3611b = bVar;
        this.f3612c = config;
        this.f3613d = executorService;
    }

    @Override // com.facebook.fresco.animation.bitmap.d.b
    public boolean a(com.facebook.fresco.animation.bitmap.a aVar, e.f.g.a.a.a aVar2, int i2) {
        int a2 = a(aVar2, i2);
        synchronized (this.f3614e) {
            if (this.f3614e.get(a2) != null) {
                e.f.c.d.a.b(f3609f, "Already scheduled decode job for frame %d", Integer.valueOf(i2));
                return true;
            }
            if (aVar.a(i2)) {
                e.f.c.d.a.b(f3609f, "Frame %d is cached already.", Integer.valueOf(i2));
                return true;
            }
            a aVar3 = new a(aVar2, aVar, i2, a2);
            this.f3614e.put(a2, aVar3);
            this.f3613d.execute(aVar3);
            return true;
        }
    }

    private static int a(e.f.g.a.a.a aVar, int i2) {
        return (aVar.hashCode() * 31) + i2;
    }

    /* compiled from: DefaultBitmapFramePreparer.java */
    /* loaded from: classes.dex */
    private class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final com.facebook.fresco.animation.bitmap.a f3615e;

        /* renamed from: f, reason: collision with root package name */
        private final e.f.g.a.a.a f3616f;

        /* renamed from: g, reason: collision with root package name */
        private final int f3617g;

        /* renamed from: h, reason: collision with root package name */
        private final int f3618h;

        public a(e.f.g.a.a.a aVar, com.facebook.fresco.animation.bitmap.a aVar2, int i2, int i3) {
            this.f3616f = aVar;
            this.f3615e = aVar2;
            this.f3617g = i2;
            this.f3618h = i3;
        }

        private boolean a(int i2, int i3) {
            e.f.c.g.a<Bitmap> a2;
            int i4 = 2;
            try {
                if (i3 == 1) {
                    a2 = this.f3615e.a(i2, this.f3616f.d(), this.f3616f.c());
                } else {
                    if (i3 != 2) {
                        return false;
                    }
                    a2 = c.this.f3610a.a(this.f3616f.d(), this.f3616f.c(), c.this.f3612c);
                    i4 = -1;
                }
                boolean a3 = a(i2, a2, i3);
                e.f.c.g.a.b(a2);
                return (a3 || i4 == -1) ? a3 : a(i2, i4);
            } catch (RuntimeException e2) {
                e.f.c.d.a.b((Class<?>) c.f3609f, "Failed to create frame bitmap", (Throwable) e2);
                return false;
            } finally {
                e.f.c.g.a.b(null);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f3615e.a(this.f3617g)) {
                    e.f.c.d.a.b((Class<?>) c.f3609f, "Frame %d is cached already.", Integer.valueOf(this.f3617g));
                    synchronized (c.this.f3614e) {
                        c.this.f3614e.remove(this.f3618h);
                    }
                    return;
                }
                if (a(this.f3617g, 1)) {
                    e.f.c.d.a.b((Class<?>) c.f3609f, "Prepared frame frame %d.", Integer.valueOf(this.f3617g));
                } else {
                    e.f.c.d.a.a((Class<?>) c.f3609f, "Could not prepare frame %d.", Integer.valueOf(this.f3617g));
                }
                synchronized (c.this.f3614e) {
                    c.this.f3614e.remove(this.f3618h);
                }
            } catch (Throwable th) {
                synchronized (c.this.f3614e) {
                    c.this.f3614e.remove(this.f3618h);
                    throw th;
                }
            }
        }

        private boolean a(int i2, e.f.c.g.a<Bitmap> aVar, int i3) {
            if (!e.f.c.g.a.c(aVar) || !c.this.f3611b.a(i2, aVar.A())) {
                return false;
            }
            e.f.c.d.a.b((Class<?>) c.f3609f, "Frame %d ready.", Integer.valueOf(this.f3617g));
            synchronized (c.this.f3614e) {
                this.f3615e.a(this.f3617g, aVar, i3);
            }
            return true;
        }
    }
}
