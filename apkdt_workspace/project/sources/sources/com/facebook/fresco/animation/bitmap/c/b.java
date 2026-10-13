package com.facebook.fresco.animation.bitmap.c;

import android.graphics.Bitmap;
import com.facebook.fresco.animation.bitmap.a;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: KeepLastFrameCache.java */
/* loaded from: classes.dex */
public class b implements com.facebook.fresco.animation.bitmap.a {

    /* renamed from: a, reason: collision with root package name */
    private int f3606a = -1;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private a.InterfaceC0064a f3607b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private e.f.c.g.a<Bitmap> f3608c;

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized e.f.c.g.a<Bitmap> a(int i2, int i3, int i4) {
        try {
        } finally {
            a();
        }
        return e.f.c.g.a.a((e.f.c.g.a) this.f3608c);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public void a(int i2, e.f.c.g.a<Bitmap> aVar, int i3) {
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized e.f.c.g.a<Bitmap> b(int i2) {
        if (this.f3606a != i2) {
            return null;
        }
        return e.f.c.g.a.a((e.f.c.g.a) this.f3608c);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized e.f.c.g.a<Bitmap> c(int i2) {
        return e.f.c.g.a.a((e.f.c.g.a) this.f3608c);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void clear() {
        a();
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void b(int i2, e.f.c.g.a<Bitmap> aVar, int i3) {
        if (aVar != null) {
            if (this.f3608c != null && aVar.A().equals(this.f3608c.A())) {
                return;
            }
        }
        e.f.c.g.a.b(this.f3608c);
        if (this.f3607b != null && this.f3606a != -1) {
            this.f3607b.a(this, this.f3606a);
        }
        this.f3608c = e.f.c.g.a.a((e.f.c.g.a) aVar);
        if (this.f3607b != null) {
            this.f3607b.b(this, i2);
        }
        this.f3606a = i2;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized boolean a(int i2) {
        boolean z;
        if (i2 == this.f3606a) {
            z = e.f.c.g.a.c(this.f3608c);
        }
        return z;
    }

    private synchronized void a() {
        if (this.f3607b != null && this.f3606a != -1) {
            this.f3607b.a(this, this.f3606a);
        }
        e.f.c.g.a.b(this.f3608c);
        this.f3608c = null;
        this.f3606a = -1;
    }
}
