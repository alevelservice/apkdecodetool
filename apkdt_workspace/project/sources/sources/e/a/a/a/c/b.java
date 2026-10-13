package e.a.a.a.c;

import e.a.a.a.h;

/* compiled from: ExceptionEvent.java */
/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: d, reason: collision with root package name */
    private final a f16803d;

    public b(a aVar, h hVar, Throwable th) {
        this.f16803d = aVar;
        this.f16800a = b.class.getName();
    }

    public static boolean b(Object obj) {
        return obj instanceof b;
    }

    @Override // e.a.a.a.c.a
    public Object c() {
        a aVar = this.f16803d;
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }
}
