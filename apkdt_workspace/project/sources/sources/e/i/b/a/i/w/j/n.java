package e.i.b.a.i.w.j;

import android.database.Cursor;
import e.i.b.a.i.w.j.b0;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
public final /* synthetic */ class n implements b0.b {

    /* renamed from: a, reason: collision with root package name */
    private final b0 f17793a;

    /* renamed from: b, reason: collision with root package name */
    private final List f17794b;

    /* renamed from: c, reason: collision with root package name */
    private final e.i.b.a.i.m f17795c;

    private n(b0 b0Var, List list, e.i.b.a.i.m mVar) {
        this.f17793a = b0Var;
        this.f17794b = list;
        this.f17795c = mVar;
    }

    public static b0.b a(b0 b0Var, List list, e.i.b.a.i.m mVar) {
        return new n(b0Var, list, mVar);
    }

    @Override // e.i.b.a.i.w.j.b0.b
    public Object apply(Object obj) {
        return b0.a(this.f17793a, this.f17794b, this.f17795c, (Cursor) obj);
    }
}
