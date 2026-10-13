package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.b0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
final /* synthetic */ class y implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final String f17808a;

    private y(String str) {
        this.f17808a = str;
    }

    public static b0.b a(String str) {
        return new y(str);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return b0.a(this.f17808a, (SQLiteDatabase) obj);
    }
}
