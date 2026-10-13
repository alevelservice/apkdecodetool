package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.b0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
final /* synthetic */ class k implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final b0 f17789a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.m f17790b;

    private k(b0 b0Var, e.i.b.a.i.m mVar) {
        this.f17789a = b0Var;
        this.f17790b = mVar;
    }

    public static b0.b a(b0 b0Var, e.i.b.a.i.m mVar) {
        return new k(b0Var, mVar);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return b0.b(this.f17789a, this.f17790b, (SQLiteDatabase) obj);
    }
}
