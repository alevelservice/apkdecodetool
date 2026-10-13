package i.g0.f;

import i.b0;
import i.t;
import i.w;
import i.z;

/* compiled from: ConnectInterceptor.java */
/* loaded from: classes2.dex */
public final class a implements t {

    /* renamed from: a, reason: collision with root package name */
    public final w f18481a;

    public a(w wVar) {
        this.f18481a = wVar;
    }

    @Override // i.t
    public b0 a(t.a aVar) {
        i.g0.g.g gVar = (i.g0.g.g) aVar;
        z v = gVar.v();
        g h2 = gVar.h();
        return gVar.a(v, h2, h2.a(this.f18481a, aVar, !v.e().equals("GET")), h2.c());
    }
}
