package com.facebook.fresco.animation.factory;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.internal.j;
import com.facebook.fresco.animation.bitmap.BitmapAnimationBackend;
import e.f.b.a.d;
import e.f.i.a.a.e;
import e.f.i.a.c.b;
import e.f.i.b.f;
import e.f.i.c.h;
import e.f.i.g.c;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: ExperimentalBitmapAnimationDrawableFactory.java */
/* loaded from: classes.dex */
public class a implements e.f.i.f.a {

    /* renamed from: a, reason: collision with root package name */
    private final b f3643a;

    /* renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f3644b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f3645c;

    /* renamed from: d, reason: collision with root package name */
    private final com.facebook.common.time.b f3646d;

    /* renamed from: e, reason: collision with root package name */
    private final f f3647e;

    /* renamed from: f, reason: collision with root package name */
    private final h<d, c> f3648f;

    /* renamed from: g, reason: collision with root package name */
    private final j<Integer> f3649g;

    /* renamed from: h, reason: collision with root package name */
    private final j<Integer> f3650h;

    /* compiled from: ExperimentalBitmapAnimationDrawableFactory.java */
    /* renamed from: com.facebook.fresco.animation.factory.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0065a implements d {

        /* renamed from: a, reason: collision with root package name */
        private final String f3651a;

        public C0065a(int i2) {
            this.f3651a = "anim://" + i2;
        }

        @Override // e.f.b.a.d
        public String a() {
            return this.f3651a;
        }
    }

    public a(b bVar, ScheduledExecutorService scheduledExecutorService, ExecutorService executorService, com.facebook.common.time.b bVar2, f fVar, h<d, c> hVar, j<Integer> jVar, j<Integer> jVar2) {
        this.f3643a = bVar;
        this.f3644b = scheduledExecutorService;
        this.f3645c = executorService;
        this.f3646d = bVar2;
        this.f3647e = fVar;
        this.f3648f = hVar;
        this.f3649g = jVar;
        this.f3650h = jVar2;
    }

    private e.f.g.a.a.a c(e eVar) {
        com.facebook.fresco.animation.bitmap.d.d dVar;
        com.facebook.fresco.animation.bitmap.d.b bVar;
        e.f.i.a.a.a a2 = a(eVar);
        com.facebook.fresco.animation.bitmap.a d2 = d(eVar);
        com.facebook.fresco.animation.bitmap.e.b bVar2 = new com.facebook.fresco.animation.bitmap.e.b(d2, a2);
        int intValue = this.f3650h.get().intValue();
        if (intValue > 0) {
            com.facebook.fresco.animation.bitmap.d.d dVar2 = new com.facebook.fresco.animation.bitmap.d.d(intValue);
            bVar = a(bVar2);
            dVar = dVar2;
        } else {
            dVar = null;
            bVar = null;
        }
        return e.f.g.a.a.c.a(new BitmapAnimationBackend(this.f3647e, d2, new com.facebook.fresco.animation.bitmap.e.a(a2), bVar2, dVar, bVar), this.f3646d, this.f3644b);
    }

    private com.facebook.fresco.animation.bitmap.a d(e eVar) {
        int intValue = this.f3649g.get().intValue();
        if (intValue == 1) {
            return new com.facebook.fresco.animation.bitmap.c.a(b(eVar), true);
        }
        if (intValue == 2) {
            return new com.facebook.fresco.animation.bitmap.c.a(b(eVar), false);
        }
        if (intValue != 3) {
            return new com.facebook.fresco.animation.bitmap.c.c();
        }
        return new com.facebook.fresco.animation.bitmap.c.b();
    }

    @Override // e.f.i.f.a
    public boolean a(c cVar) {
        return cVar instanceof e.f.i.g.a;
    }

    private com.facebook.fresco.animation.bitmap.d.b a(com.facebook.fresco.animation.bitmap.b bVar) {
        return new com.facebook.fresco.animation.bitmap.d.c(this.f3647e, bVar, Bitmap.Config.ARGB_8888, this.f3645c);
    }

    @Override // e.f.i.f.a
    public e.f.g.a.b.a b(c cVar) {
        return new e.f.g.a.b.a(c(((e.f.i.g.a) cVar).l()));
    }

    private e.f.i.a.a.a a(e eVar) {
        e.f.i.a.a.c b2 = eVar.b();
        return this.f3643a.a(eVar, new Rect(0, 0, b2.getWidth(), b2.getHeight()));
    }

    private e.f.i.a.c.c b(e eVar) {
        return new e.f.i.a.c.c(new C0065a(eVar.hashCode()), this.f3648f);
    }
}
