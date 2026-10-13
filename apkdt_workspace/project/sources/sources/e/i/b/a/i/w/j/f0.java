package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.h0;

/* compiled from: SchemaManager.java */
/* loaded from: classes.dex */
final /* synthetic */ class f0 implements h0.a {

    /* renamed from: a, reason: collision with root package name */
    private static final f0 f17772a = new f0();

    private f0() {
    }

    public static h0.a a() {
        return f17772a;
    }

    @Override // e.i.b.a.i.w.j.h0.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
