package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes.dex */
public final class b3 extends z4 {

    /* renamed from: c, reason: collision with root package name */
    private final a3 f12779c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f12780d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b3(j4 j4Var) {
        super(j4Var);
        this.f12779c = new a3(this, getContext(), "google_app_measurement_local.db");
    }

    @VisibleForTesting
    @WorkerThread
    private final SQLiteDatabase B() {
        if (this.f12780d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f12779c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f12780d = true;
        return null;
    }

    @VisibleForTesting
    private final boolean C() {
        return getContext().getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v10 */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean a(int r18, byte[] r19) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b3.a(int, byte[]):boolean");
    }

    @WorkerThread
    public final boolean A() {
        g();
        e();
        if (this.f12780d || !C()) {
            return false;
        }
        int i2 = 5;
        for (int i3 = 0; i3 < 5; i3++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    SQLiteDatabase B = B();
                    if (B == null) {
                        this.f12780d = true;
                        if (B != null) {
                            B.close();
                        }
                        return false;
                    }
                    B.beginTransaction();
                    B.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    B.setTransactionSuccessful();
                    B.endTransaction();
                    if (B != null) {
                        B.close();
                    }
                    return true;
                } catch (SQLiteException e2) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    zzab().q().a("Error deleting app launch break from local database", e2);
                    this.f12780d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException unused) {
                SystemClock.sleep(i2);
                i2 += 20;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteFullException e3) {
                zzab().q().a("Error deleting app launch break from local database", e3);
                this.f12780d = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        zzab().t().a("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.z4
    protected final boolean w() {
        return false;
    }

    @WorkerThread
    public final void y() {
        e();
        g();
        try {
            int delete = B().delete("messages", null, null) + 0;
            if (delete > 0) {
                zzab().y().a("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            zzab().q().a("Error resetting local analytics data. error", e2);
        }
    }

    @WorkerThread
    public final boolean z() {
        return a(3, new byte[0]);
    }

    public final boolean a(zzai zzaiVar) {
        Parcel obtain = Parcel.obtain();
        zzaiVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzab().t().a("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return a(0, marshall);
    }

    public final boolean a(zzjn zzjnVar) {
        Parcel obtain = Parcel.obtain();
        zzjnVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzab().t().a("User property too long for local database. Sending directly to service");
            return false;
        }
        return a(1, marshall);
    }

    public final boolean a(zzq zzqVar) {
        j();
        byte[] a2 = r8.a((Parcelable) zzqVar);
        if (a2.length > 131072) {
            zzab().t().a("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return a(2, a2);
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0252 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0252 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0252 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0204 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x025e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> a(int r24) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.b3.a(int):java.util.List");
    }

    private static long a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (cursor.moveToFirst()) {
                return cursor.getLong(0);
            }
            if (cursor == null) {
                return -1L;
            }
            cursor.close();
            return -1L;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
