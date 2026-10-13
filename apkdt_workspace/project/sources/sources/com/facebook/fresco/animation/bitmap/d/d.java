package com.facebook.fresco.animation.bitmap.d;

/* compiled from: FixedNumberBitmapFramePreparationStrategy.java */
/* loaded from: classes.dex */
public class d implements a {

    /* renamed from: b, reason: collision with root package name */
    private static final Class<?> f3620b = d.class;

    /* renamed from: a, reason: collision with root package name */
    private final int f3621a;

    public d() {
        this(3);
    }

    @Override // com.facebook.fresco.animation.bitmap.d.a
    public void a(b bVar, com.facebook.fresco.animation.bitmap.a aVar, e.f.g.a.a.a aVar2, int i2) {
        for (int i3 = 1; i3 <= this.f3621a; i3++) {
            int a2 = (i2 + i3) % aVar2.a();
            if (e.f.c.d.a.a(2)) {
                e.f.c.d.a.a(f3620b, "Preparing frame %d, last drawn: %d", Integer.valueOf(a2), Integer.valueOf(i2));
            }
            if (!bVar.a(aVar, aVar2, a2)) {
                return;
            }
        }
    }

    public d(int i2) {
        this.f3621a = i2;
    }
}
