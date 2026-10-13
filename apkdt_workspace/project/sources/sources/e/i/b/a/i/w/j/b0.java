package e.i.b.a.i.w.j;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import e.i.b.a.i.h;
import e.i.b.a.i.m;
import e.i.b.a.i.x.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

/* compiled from: SQLiteEventStore.java */
@Singleton
@WorkerThread
/* loaded from: classes.dex */
public class b0 implements e.i.b.a.i.w.j.c, e.i.b.a.i.x.b {

    /* renamed from: i, reason: collision with root package name */
    private static final e.i.b.a.b f17757i = e.i.b.a.b.a("proto");

    /* renamed from: e, reason: collision with root package name */
    private final h0 f17758e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f17759f;

    /* renamed from: g, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f17760g;

    /* renamed from: h, reason: collision with root package name */
    private final e.i.b.a.i.w.j.d f17761h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes.dex */
    public interface b<T, U> {
        U apply(T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        final String f17762a;

        /* renamed from: b, reason: collision with root package name */
        final String f17763b;

        private c(String str, String str2) {
            this.f17762a = str;
            this.f17763b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes.dex */
    public interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public b0(@WallTime com.google.android.datatransport.runtime.time.a aVar, @Monotonic com.google.android.datatransport.runtime.time.a aVar2, e.i.b.a.i.w.j.d dVar, h0 h0Var) {
        this.f17758e = h0Var;
        this.f17759f = aVar;
        this.f17760g = aVar2;
        this.f17761h = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ SQLiteDatabase b(Throwable th) {
        throw new e.i.b.a.i.x.a("Timed out while trying to open db.", th);
    }

    private static String c(Iterable<i> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<i> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ byte[] d(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i2 += blob.length;
        }
        byte[] bArr = new byte[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            byte[] bArr2 = (byte[]) arrayList.get(i4);
            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
            i3 += bArr2.length;
        }
        return bArr;
    }

    @VisibleForTesting
    SQLiteDatabase a() {
        h0 h0Var = this.f17758e;
        h0Var.getClass();
        return (SQLiteDatabase) a(s.a(h0Var), v.a());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f17758e.close();
    }

    @Override // e.i.b.a.i.w.j.c
    public int n() {
        return ((Integer) a(m.a(this.f17759f.a() - this.f17761h.b()))).intValue();
    }

    @Override // e.i.b.a.i.w.j.c
    public Iterable<e.i.b.a.i.m> y() {
        return (Iterable) a(l.a());
    }

    @Nullable
    private Long b(SQLiteDatabase sQLiteDatabase, e.i.b.a.i.m mVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(mVar.a(), String.valueOf(e.i.b.a.i.y.a.a(mVar.c()))));
        if (mVar.b() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(mVar.b(), 0));
        }
        return (Long) a(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), x.a());
    }

    @Override // e.i.b.a.i.w.j.c
    @Nullable
    public i a(e.i.b.a.i.m mVar, e.i.b.a.i.h hVar) {
        e.i.b.a.i.u.a.a("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", mVar.c(), hVar.f(), mVar.a());
        long longValue = ((Long) a(w.a(this, mVar, hVar))).longValue();
        if (longValue < 1) {
            return null;
        }
        return i.a(longValue, mVar, hVar);
    }

    @Override // e.i.b.a.i.w.j.c
    public boolean c(e.i.b.a.i.m mVar) {
        return ((Boolean) a(a0.a(this, mVar))).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List c(SQLiteDatabase sQLiteDatabase) {
        return (List) a(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), t.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long a(b0 b0Var, e.i.b.a.i.m mVar, e.i.b.a.i.h hVar, SQLiteDatabase sQLiteDatabase) {
        if (b0Var.d()) {
            return -1L;
        }
        long a2 = b0Var.a(sQLiteDatabase, mVar);
        int d2 = b0Var.f17761h.d();
        byte[] a3 = hVar.c().a();
        boolean z = a3.length <= d2;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(a2));
        contentValues.put("transport_name", hVar.f());
        contentValues.put("timestamp_ms", Long.valueOf(hVar.d()));
        contentValues.put("uptime_ms", Long.valueOf(hVar.g()));
        contentValues.put("payload_encoding", hVar.c().b().a());
        contentValues.put(HummerConstants.CODE, hVar.b());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put(HummerConstants.PAYLOAD, z ? a3 : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            double length = a3.length;
            double d3 = d2;
            Double.isNaN(length);
            Double.isNaN(d3);
            int ceil = (int) Math.ceil(length / d3);
            for (int i2 = 1; i2 <= ceil; i2++) {
                byte[] copyOfRange = Arrays.copyOfRange(a3, (i2 - 1) * d2, Math.min(i2 * d2, a3.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i2));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : hVar.e().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put(HummerConstants.VALUE, entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    private boolean d() {
        return b() * c() >= this.f17761h.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List c(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            m.a d2 = e.i.b.a.i.m.d();
            d2.a(cursor.getString(1));
            d2.a(e.i.b.a.i.y.a.a(cursor.getInt(2)));
            d2.a(a(cursor.getString(3)));
            arrayList.add(d2.a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long b(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    @Override // e.i.b.a.i.w.j.c
    public void b(Iterable<i> iterable) {
        if (iterable.iterator().hasNext()) {
            a(y.a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + c(iterable)));
        }
    }

    private List<i> c(SQLiteDatabase sQLiteDatabase, e.i.b.a.i.m mVar) {
        ArrayList arrayList = new ArrayList();
        Long b2 = b(sQLiteDatabase, mVar);
        if (b2 == null) {
            return arrayList;
        }
        a(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", HummerConstants.PAYLOAD, HummerConstants.CODE, "inline"}, "context_id = ?", new String[]{b2.toString()}, null, null, null, String.valueOf(this.f17761h.c())), n.a(this, arrayList, mVar));
        return arrayList;
    }

    @Override // e.i.b.a.i.w.j.c
    public long b(e.i.b.a.i.m mVar) {
        return ((Long) a(a().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{mVar.a(), String.valueOf(e.i.b.a.i.y.a.a(mVar.c()))}), z.a())).longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List b(b0 b0Var, e.i.b.a.i.m mVar, SQLiteDatabase sQLiteDatabase) {
        List<i> c2 = b0Var.c(sQLiteDatabase, mVar);
        b0Var.a(c2, b0Var.a(sQLiteDatabase, c2));
        return c2;
    }

    private long c() {
        return a().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private static e.i.b.a.b b(@Nullable String str) {
        if (str == null) {
            return f17757i;
        }
        return e.i.b.a.b.a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    private long b() {
        return a().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private long a(SQLiteDatabase sQLiteDatabase, e.i.b.a.i.m mVar) {
        Long b2 = b(sQLiteDatabase, mVar);
        if (b2 != null) {
            return b2.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", mVar.a());
        contentValues.put("priority", Integer.valueOf(e.i.b.a.i.y.a.a(mVar.c())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (mVar.b() != null) {
            contentValues.put("extras", Base64.encodeToString(mVar.b(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    @Override // e.i.b.a.i.w.j.c
    public void a(Iterable<i> iterable) {
        if (iterable.iterator().hasNext()) {
            a().compileStatement("DELETE FROM events WHERE _id in " + c(iterable)).execute();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long a(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Boolean a(b0 b0Var, e.i.b.a.i.m mVar, SQLiteDatabase sQLiteDatabase) {
        Long b2 = b0Var.b(sQLiteDatabase, mVar);
        if (b2 == null) {
            return false;
        }
        return (Boolean) a(b0Var.a().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{b2.toString()}), u.a());
    }

    @Override // e.i.b.a.i.w.j.c
    public void a(e.i.b.a.i.m mVar, long j2) {
        a(j.a(j2, mVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(long j2, e.i.b.a.i.m mVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j2));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{mVar.a(), String.valueOf(e.i.b.a.i.y.a.a(mVar.c()))}) < 1) {
            contentValues.put("backend_name", mVar.a());
            contentValues.put("priority", Integer.valueOf(e.i.b.a.i.y.a.a(mVar.c())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    @Override // e.i.b.a.i.w.j.c
    public Iterable<i> a(e.i.b.a.i.m mVar) {
        return (Iterable) a(k.a(this, mVar));
    }

    private static byte[] a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(b0 b0Var, List list, e.i.b.a.i.m mVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j2 = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            h.a i2 = e.i.b.a.i.h.i();
            i2.a(cursor.getString(1));
            i2.a(cursor.getLong(2));
            i2.b(cursor.getLong(3));
            if (z) {
                i2.a(new e.i.b.a.i.g(b(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                i2.a(new e.i.b.a.i.g(b(cursor.getString(4)), b0Var.a(j2)));
            }
            if (!cursor.isNull(6)) {
                i2.a(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(i.a(j2, mVar, i2.a()));
        }
        return null;
    }

    private byte[] a(long j2) {
        return (byte[]) a(a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j2)}, null, null, "sequence_num"), o.a());
    }

    private Map<Long, Set<c>> a(SQLiteDatabase sQLiteDatabase, List<i> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(list.get(i2).b());
            if (i2 < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        a(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", HummerConstants.VALUE}, sb.toString(), null, null, null, null), p.a(hashMap));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j2 = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j2));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j2), set);
            }
            set.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    private List<i> a(List<i> list, Map<Long, Set<c>> map) {
        ListIterator<i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.b()))) {
                h.a h2 = next.a().h();
                for (c cVar : map.get(Long.valueOf(next.b()))) {
                    h2.a(cVar.f17762a, cVar.f17763b);
                }
                listIterator.set(i.a(next.b(), next.c(), h2.a()));
            }
        }
        return list;
    }

    private <T> T a(d<T> dVar, b<Throwable, T> bVar) {
        long a2 = this.f17760g.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e2) {
                if (this.f17760g.a() >= this.f17761h.a() + a2) {
                    return bVar.apply(e2);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        a(q.a(sQLiteDatabase), r.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(Throwable th) {
        throw new e.i.b.a.i.x.a("Timed out while trying to acquire the lock.", th);
    }

    @Override // e.i.b.a.i.x.b
    public <T> T a(b.a<T> aVar) {
        SQLiteDatabase a2 = a();
        a(a2);
        try {
            T execute = aVar.execute();
            a2.setTransactionSuccessful();
            return execute;
        } finally {
            a2.endTransaction();
        }
    }

    private <T> T a(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase a2 = a();
        a2.beginTransaction();
        try {
            T apply = bVar.apply(a2);
            a2.setTransactionSuccessful();
            return apply;
        } finally {
            a2.endTransaction();
        }
    }

    private static <T> T a(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }
}
