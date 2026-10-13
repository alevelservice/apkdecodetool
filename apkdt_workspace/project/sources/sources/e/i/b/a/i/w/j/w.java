package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.b0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
final /* synthetic */ class w implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final b0 f17804a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.m f17805b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.i.h f17806c;

    private w(b0 b0Var, e.i.b.a.i.m mVar, e.i.b.a.i.h hVar) {
        this.f17804a = b0Var;
        this.f17805b = mVar;
        this.f17806c = hVar;
    }

    public static b0.b a(b0 b0Var, e.i.b.a.i.m mVar, e.i.b.a.i.h hVar) {
        return new w(b0Var, mVar, hVar);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return b0.a(this.f17804a, this.f17805b, this.f17806c, (SQLiteDatabase) obj);
    }
}
