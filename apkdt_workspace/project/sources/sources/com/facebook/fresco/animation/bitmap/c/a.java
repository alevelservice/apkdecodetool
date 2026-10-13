package com.facebook.fresco.animation.bitmap.c;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import e.f.i.g.d;
import e.f.i.g.g;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: FrescoFrameCache.java */
/* loaded from: classes.dex */
public class a implements com.facebook.fresco.animation.bitmap.a {

    /* renamed from: e, reason: collision with root package name */
    private static final Class<?> f3601e = a.class;

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.a.c.c f3602a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f3603b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private final SparseArray<e.f.c.g.a<e.f.i.g.c>> f3604c = new SparseArray<>();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private e.f.c.g.a<e.f.i.g.c> f3605d;

    public a(e.f.i.a.c.c cVar, boolean z) {
        this.f3602a = cVar;
        this.f3603b = z;
    }

    private synchronized void d(int i2) {
        e.f.c.g.a<e.f.i.g.c> aVar = this.f3604c.get(i2);
        if (aVar != null) {
            this.f3604c.delete(i2);
            e.f.c.g.a.b(aVar);
            e.f.c.d.a.a(f3601e, "removePreparedReference(%d) removed. Pending frames: %s", Integer.valueOf(i2), this.f3604c);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized e.f.c.g.a<Bitmap> a(int i2, int i3, int i4) {
        if (!this.f3603b) {
            return null;
        }
        return a(this.f3602a.a());
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized e.f.c.g.a<Bitmap> b(int i2) {
        return a(this.f3602a.b(i2));
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized e.f.c.g.a<Bitmap> c(int i2) {
        return a((e.f.c.g.a<e.f.i.g.c>) e.f.c.g.a.a((e.f.c.g.a) this.f3605d));
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void clear() {
        e.f.c.g.a.b(this.f3605d);
        this.f3605d = null;
        for (int i2 = 0; i2 < this.f3604c.size(); i2++) {
            e.f.c.g.a.b(this.f3604c.valueAt(i2));
        }
        this.f3604c.clear();
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void b(int i2, e.f.c.g.a<Bitmap> aVar, int i3) {
        h.a(aVar);
        d(i2);
        e.f.c.g.a<e.f.i.g.c> aVar2 = null;
        try {
            aVar2 = b(aVar);
            if (aVar2 != null) {
                e.f.c.g.a.b(this.f3605d);
                this.f3605d = this.f3602a.a(i2, aVar2);
            }
        } finally {
            e.f.c.g.a.b(aVar2);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized boolean a(int i2) {
        return this.f3602a.a(i2);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void a(int i2, e.f.c.g.a<Bitmap> aVar, int i3) {
        h.a(aVar);
        try {
            e.f.c.g.a<e.f.i.g.c> b2 = b(aVar);
            if (b2 == null) {
                e.f.c.g.a.b(b2);
                return;
            }
            e.f.c.g.a<e.f.i.g.c> a2 = this.f3602a.a(i2, b2);
            if (e.f.c.g.a.c(a2)) {
                e.f.c.g.a.b(this.f3604c.get(i2));
                this.f3604c.put(i2, a2);
                e.f.c.d.a.a(f3601e, "cachePreparedFrame(%d) cached. Pending frames: %s", Integer.valueOf(i2), this.f3604c);
            }
            e.f.c.g.a.b(b2);
        } catch (Throwable th) {
            e.f.c.g.a.b(null);
            throw th;
        }
    }

    @Nullable
    private static e.f.c.g.a<e.f.i.g.c> b(e.f.c.g.a<Bitmap> aVar) {
        return e.f.c.g.a.a(new d(aVar, g.f17609d, 0));
    }

    @VisibleForTesting
    @Nullable
    static e.f.c.g.a<Bitmap> a(@Nullable e.f.c.g.a<e.f.i.g.c> aVar) {
        d dVar;
        try {
            if (e.f.c.g.a.c(aVar) && (aVar.A() instanceof d) && (dVar = (d) aVar.A()) != null) {
                return dVar.l();
            }
            return null;
        } finally {
            e.f.c.g.a.b(aVar);
        }
    }
}
