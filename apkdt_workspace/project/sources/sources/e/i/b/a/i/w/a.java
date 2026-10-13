package e.i.b.a.i.w;

import e.i.b.a.i.m;

/* compiled from: DefaultScheduler.java */
/* loaded from: classes.dex */
final /* synthetic */ class a implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final c f17719e;

    /* renamed from: f, reason: collision with root package name */
    private final m f17720f;

    /* renamed from: g, reason: collision with root package name */
    private final e.i.b.a.h f17721g;

    /* renamed from: h, reason: collision with root package name */
    private final e.i.b.a.i.h f17722h;

    private a(c cVar, m mVar, e.i.b.a.h hVar, e.i.b.a.i.h hVar2) {
        this.f17719e = cVar;
        this.f17720f = mVar;
        this.f17721g = hVar;
        this.f17722h = hVar2;
    }

    public static Runnable a(c cVar, m mVar, e.i.b.a.h hVar, e.i.b.a.i.h hVar2) {
        return new a(cVar, mVar, hVar, hVar2);
    }

    @Override // java.lang.Runnable
    public void run() {
        c.a(this.f17719e, this.f17720f, this.f17721g, this.f17722h);
    }
}
