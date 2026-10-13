package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.b0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
final /* synthetic */ class j implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final long f17787a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.m f17788b;

    private j(long j2, e.i.b.a.i.m mVar) {
        this.f17787a = j2;
        this.f17788b = mVar;
    }

    public static b0.b a(long j2, e.i.b.a.i.m mVar) {
        return new j(j2, mVar);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return b0.a(this.f17787a, this.f17788b, (SQLiteDatabase) obj);
    }
}
