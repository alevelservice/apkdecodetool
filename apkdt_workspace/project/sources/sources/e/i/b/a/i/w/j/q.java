package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.b0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements b0.d {

    /* renamed from: a, reason: collision with root package name */
    private final SQLiteDatabase f17798a;

    private q(SQLiteDatabase sQLiteDatabase) {
        this.f17798a = sQLiteDatabase;
    }

    public static b0.d a(SQLiteDatabase sQLiteDatabase) {
        return new q(sQLiteDatabase);
    }

    @Override // e.i.b.a.i.w.j.b0.d
    public Object a() {
        return b0.b(this.f17798a);
    }
}
