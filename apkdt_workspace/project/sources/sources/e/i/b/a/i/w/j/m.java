package e.i.b.a.i.w.j;

import android.database.sqlite.SQLiteDatabase;
import e.i.b.a.i.w.j.b0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
final /* synthetic */ class m implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final long f17792a;

    private m(long j2) {
        this.f17792a = j2;
    }

    public static b0.b a(long j2) {
        return new m(j2);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        Integer valueOf;
        valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete("events", "timestamp_ms < ?", new String[]{String.valueOf(this.f17792a)}));
        return valueOf;
    }
}
