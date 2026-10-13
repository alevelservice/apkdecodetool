package e.n.a;

import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Database.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    final boolean f18104a;

    /* renamed from: b, reason: collision with root package name */
    final String f18105b;

    /* renamed from: c, reason: collision with root package name */
    final int f18106c;

    /* renamed from: d, reason: collision with root package name */
    final int f18107d;

    /* renamed from: e, reason: collision with root package name */
    SQLiteDatabase f18108e;

    /* renamed from: f, reason: collision with root package name */
    boolean f18109f;

    /* compiled from: Database.java */
    /* renamed from: e.n.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0207a implements DatabaseErrorHandler {
        C0207a(a aVar) {
        }

        @Override // android.database.DatabaseErrorHandler
        public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, int i2, boolean z, int i3) {
        this.f18105b = str;
        this.f18104a = z;
        this.f18106c = i2;
        this.f18107d = i3;
    }

    public void a() {
        this.f18108e.close();
    }

    public SQLiteDatabase b() {
        return this.f18108e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return "[" + d() + "] ";
    }

    String d() {
        Thread currentThread = Thread.currentThread();
        return "" + this.f18106c + "," + currentThread.getName() + "(" + currentThread.getId() + ")";
    }

    public SQLiteDatabase e() {
        return this.f18108e;
    }

    public void f() {
        this.f18108e = SQLiteDatabase.openDatabase(this.f18105b, null, 268435456);
    }

    public void g() {
        this.f18108e = SQLiteDatabase.openDatabase(this.f18105b, null, 1, new C0207a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        SQLiteDatabase.deleteDatabase(new File(str));
    }
}
