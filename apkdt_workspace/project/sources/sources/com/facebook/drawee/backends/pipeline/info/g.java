package com.facebook.drawee.backends.pipeline.info;

import android.graphics.Rect;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: ImagePerfMonitor.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.f.b.a.d f3544a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.common.time.b f3545b;

    /* renamed from: c, reason: collision with root package name */
    private final h f3546c = new h();

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private c f3547d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private b f3548e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.backends.pipeline.info.i.c f3549f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.backends.pipeline.info.i.a f3550g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private e.f.i.h.b f3551h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private List<f> f3552i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f3553j;

    public g(com.facebook.common.time.b bVar, e.f.f.b.a.d dVar) {
        this.f3545b = bVar;
        this.f3544a = dVar;
    }

    private void d() {
        if (this.f3550g == null) {
            this.f3550g = new com.facebook.drawee.backends.pipeline.info.i.a(this.f3545b, this.f3546c, this);
        }
        if (this.f3549f == null) {
            this.f3549f = new com.facebook.drawee.backends.pipeline.info.i.c(this.f3545b, this.f3546c);
        }
        if (this.f3548e == null) {
            this.f3548e = new com.facebook.drawee.backends.pipeline.info.i.b(this.f3546c, this);
        }
        c cVar = this.f3547d;
        if (cVar == null) {
            this.f3547d = new c(this.f3544a.l(), this.f3548e);
        } else {
            cVar.c(this.f3544a.l());
        }
        if (this.f3551h == null) {
            this.f3551h = new e.f.i.h.b(this.f3549f, this.f3547d);
        }
    }

    public void a(boolean z) {
        this.f3553j = z;
        if (z) {
            d();
            b bVar = this.f3548e;
            if (bVar != null) {
                this.f3544a.a(bVar);
            }
            com.facebook.drawee.backends.pipeline.info.i.a aVar = this.f3550g;
            if (aVar != null) {
                this.f3544a.a((e.f.f.d.d) aVar);
            }
            e.f.i.h.b bVar2 = this.f3551h;
            if (bVar2 != null) {
                this.f3544a.a((e.f.i.h.c) bVar2);
                return;
            }
            return;
        }
        b bVar3 = this.f3548e;
        if (bVar3 != null) {
            this.f3544a.b(bVar3);
        }
        com.facebook.drawee.backends.pipeline.info.i.a aVar2 = this.f3550g;
        if (aVar2 != null) {
            this.f3544a.b((e.f.f.d.d) aVar2);
        }
        e.f.i.h.b bVar4 = this.f3551h;
        if (bVar4 != null) {
            this.f3544a.b((e.f.i.h.c) bVar4);
        }
    }

    public void b() {
        List<f> list = this.f3552i;
        if (list != null) {
            list.clear();
        }
    }

    public void c() {
        b();
        a(false);
        this.f3546c.b();
    }

    public void b(h hVar, int i2) {
        List<f> list;
        hVar.a(i2);
        if (!this.f3553j || (list = this.f3552i) == null || list.isEmpty()) {
            return;
        }
        if (i2 == 3) {
            a();
        }
        e c2 = hVar.c();
        Iterator<f> it = this.f3552i.iterator();
        while (it.hasNext()) {
            it.next().a(c2, i2);
        }
    }

    public void a(@Nullable f fVar) {
        if (fVar == null) {
            return;
        }
        if (this.f3552i == null) {
            this.f3552i = new LinkedList();
        }
        this.f3552i.add(fVar);
    }

    public void a(h hVar, int i2) {
        List<f> list;
        if (!this.f3553j || (list = this.f3552i) == null || list.isEmpty()) {
            return;
        }
        e c2 = hVar.c();
        Iterator<f> it = this.f3552i.iterator();
        while (it.hasNext()) {
            it.next().b(c2, i2);
        }
    }

    public void a() {
        e.f.f.i.b c2 = this.f3544a.c();
        if (c2 == null || c2.b() == null) {
            return;
        }
        Rect bounds = c2.b().getBounds();
        this.f3546c.d(bounds.width());
        this.f3546c.c(bounds.height());
    }
}
