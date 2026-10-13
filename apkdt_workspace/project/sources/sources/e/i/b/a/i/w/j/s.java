package e.i.b.a.i.w.j;

import e.i.b.a.i.w.j.b0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
final /* synthetic */ class s implements b0.d {

    /* renamed from: a, reason: collision with root package name */
    private final h0 f17800a;

    private s(h0 h0Var) {
        this.f17800a = h0Var;
    }

    public static b0.d a(h0 h0Var) {
        return new s(h0Var);
    }

    @Override // e.i.b.a.i.w.j.b0.d
    public Object a() {
        return this.f17800a.getWritableDatabase();
    }
}
