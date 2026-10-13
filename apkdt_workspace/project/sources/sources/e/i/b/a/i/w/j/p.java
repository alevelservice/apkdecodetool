package e.i.b.a.i.w.j;

import android.database.Cursor;
import e.i.b.a.i.w.j.b0;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
public final /* synthetic */ class p implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final Map f17797a;

    private p(Map map) {
        this.f17797a = map;
    }

    public static b0.b a(Map map) {
        return new p(map);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return b0.a(this.f17797a, (Cursor) obj);
    }
}
