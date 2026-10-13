package e.i.b.a.i.w;

import e.i.b.a.i.m;
import e.i.b.a.i.x.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultScheduler.java */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private final c f17723a;

    /* renamed from: b, reason: collision with root package name */
    private final m f17724b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.i.h f17725c;

    private b(c cVar, m mVar, e.i.b.a.i.h hVar) {
        this.f17723a = cVar;
        this.f17724b = mVar;
        this.f17725c = hVar;
    }

    public static b.a a(c cVar, m mVar, e.i.b.a.i.h hVar) {
        return new b(cVar, mVar, hVar);
    }

    @Override // e.i.b.a.i.x.b.a
    public Object execute() {
        return c.a(this.f17723a, this.f17724b, this.f17725c);
    }
}
