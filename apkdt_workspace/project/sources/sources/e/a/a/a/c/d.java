package e.a.a.a.c;

/* compiled from: NotConsumedEvent.java */
/* loaded from: classes.dex */
public class d extends a {

    /* renamed from: d, reason: collision with root package name */
    private final a f16804d;

    public d(a aVar) {
        this.f16804d = aVar;
        this.f16800a = d.class.getName();
    }

    public static boolean b(Object obj) {
        return obj instanceof d;
    }

    @Override // e.a.a.a.c.a
    public Object c() {
        a aVar = this.f16804d;
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }
}
