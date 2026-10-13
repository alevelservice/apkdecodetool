package e.f.i.g;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: CloseableStaticBitmap.java */
@ThreadSafe
/* loaded from: classes.dex */
public class d extends b {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private e.f.c.g.a<Bitmap> f17596e;

    /* renamed from: f, reason: collision with root package name */
    private volatile Bitmap f17597f;

    /* renamed from: g, reason: collision with root package name */
    private final h f17598g;

    /* renamed from: h, reason: collision with root package name */
    private final int f17599h;

    /* renamed from: i, reason: collision with root package name */
    private final int f17600i;

    public d(Bitmap bitmap, e.f.c.g.c<Bitmap> cVar, h hVar, int i2) {
        this(bitmap, cVar, hVar, i2, 0);
    }

    private static int a(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    private static int b(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    private synchronized e.f.c.g.a<Bitmap> q() {
        e.f.c.g.a<Bitmap> aVar;
        aVar = this.f17596e;
        this.f17596e = null;
        this.f17597f = null;
        return aVar;
    }

    @Override // e.f.i.g.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        e.f.c.g.a<Bitmap> q = q();
        if (q != null) {
            q.close();
        }
    }

    @Override // e.f.i.g.f
    public int getHeight() {
        int i2;
        if (this.f17599h % 180 == 0 && (i2 = this.f17600i) != 5 && i2 != 7) {
            return a(this.f17597f);
        }
        return b(this.f17597f);
    }

    @Override // e.f.i.g.f
    public int getWidth() {
        int i2;
        if (this.f17599h % 180 == 0 && (i2 = this.f17600i) != 5 && i2 != 7) {
            return b(this.f17597f);
        }
        return a(this.f17597f);
    }

    @Override // e.f.i.g.c
    public h i() {
        return this.f17598g;
    }

    @Override // e.f.i.g.c
    public synchronized boolean isClosed() {
        return this.f17596e == null;
    }

    @Override // e.f.i.g.c
    public int j() {
        return com.facebook.imageutils.a.a(this.f17597f);
    }

    @Nullable
    public synchronized e.f.c.g.a<Bitmap> l() {
        return e.f.c.g.a.a((e.f.c.g.a) this.f17596e);
    }

    public int m() {
        return this.f17600i;
    }

    public int o() {
        return this.f17599h;
    }

    public Bitmap p() {
        return this.f17597f;
    }

    public d(Bitmap bitmap, e.f.c.g.c<Bitmap> cVar, h hVar, int i2, int i3) {
        com.facebook.common.internal.h.a(bitmap);
        this.f17597f = bitmap;
        Bitmap bitmap2 = this.f17597f;
        com.facebook.common.internal.h.a(cVar);
        this.f17596e = e.f.c.g.a.a(bitmap2, cVar);
        this.f17598g = hVar;
        this.f17599h = i2;
        this.f17600i = i3;
    }

    public d(e.f.c.g.a<Bitmap> aVar, h hVar, int i2) {
        this(aVar, hVar, i2, 0);
    }

    public d(e.f.c.g.a<Bitmap> aVar, h hVar, int i2, int i3) {
        e.f.c.g.a<Bitmap> z = aVar.z();
        com.facebook.common.internal.h.a(z);
        this.f17596e = z;
        this.f17597f = this.f17596e.A();
        this.f17598g = hVar;
        this.f17599h = i2;
        this.f17600i = i3;
    }
}
