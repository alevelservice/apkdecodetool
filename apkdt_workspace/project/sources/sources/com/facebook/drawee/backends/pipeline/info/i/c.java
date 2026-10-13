package com.facebook.drawee.backends.pipeline.info.i;

import com.facebook.drawee.backends.pipeline.info.h;

/* compiled from: ImagePerfRequestListener.java */
/* loaded from: classes.dex */
public class c extends e.f.i.h.a {

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.common.time.b f3571a;

    /* renamed from: b, reason: collision with root package name */
    private final h f3572b;

    public c(com.facebook.common.time.b bVar, h hVar) {
        this.f3571a = bVar;
        this.f3572b = hVar;
    }

    @Override // e.f.i.h.a, e.f.i.h.c
    public void a(e.f.i.i.b bVar, Object obj, String str, boolean z) {
        this.f3572b.g(this.f3571a.now());
        this.f3572b.a(bVar);
        this.f3572b.a(obj);
        this.f3572b.b(str);
        this.f3572b.a(z);
    }

    @Override // e.f.i.h.a, e.f.i.h.c
    public void b(String str) {
        this.f3572b.f(this.f3571a.now());
        this.f3572b.b(str);
    }

    @Override // e.f.i.h.a, e.f.i.h.c
    public void a(e.f.i.i.b bVar, String str, boolean z) {
        this.f3572b.f(this.f3571a.now());
        this.f3572b.a(bVar);
        this.f3572b.b(str);
        this.f3572b.a(z);
    }

    @Override // e.f.i.h.a, e.f.i.h.c
    public void a(e.f.i.i.b bVar, String str, Throwable th, boolean z) {
        this.f3572b.f(this.f3571a.now());
        this.f3572b.a(bVar);
        this.f3572b.b(str);
        this.f3572b.a(z);
    }
}
