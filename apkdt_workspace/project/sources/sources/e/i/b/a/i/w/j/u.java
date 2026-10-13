package e.i.b.a.i.w.j;

import android.database.Cursor;
import e.i.b.a.i.w.j.b0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
public final /* synthetic */ class u implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private static final u f17802a = new u();

    private u() {
    }

    public static b0.b a() {
        return f17802a;
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }
}
