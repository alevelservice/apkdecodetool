package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.n0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.internal.measurement.r0;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e9 extends h8 {

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f12873f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f12874g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h, reason: collision with root package name */
    private static final String[] f12875h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"};

    /* renamed from: i, reason: collision with root package name */
    private static final String[] f12876i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: j, reason: collision with root package name */
    private static final String[] f12877j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: k, reason: collision with root package name */
    private static final String[] f12878k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: l, reason: collision with root package name */
    private static final String[] f12879l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: d, reason: collision with root package name */
    private final f9 f12880d;

    /* renamed from: e, reason: collision with root package name */
    private final d8 f12881e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e9(g8 g8Var) {
        super(g8Var);
        this.f12881e = new d8(a());
        this.f12880d = new f9(this, getContext(), "google_app_measurement.db");
    }

    private final boolean E() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }

    @WorkerThread
    private final long a(String str, String[] strArr, long j2) {
        Cursor cursor = null;
        try {
            try {
                cursor = u().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    return cursor.getLong(0);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return j2;
            } catch (SQLiteException e2) {
                zzab().q().a("Database error", str, e2);
                throw e2;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @WorkerThread
    private final long b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = u().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j2 = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j2;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e2) {
                zzab().q().a("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public final long A() {
        return a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final boolean B() {
        return b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean C() {
        return b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long D() {
        Cursor cursor = null;
        try {
            try {
                cursor = u().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return -1L;
                }
                long j2 = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j2;
            } catch (SQLiteException e2) {
                zzab().q().a("Error querying raw events", e2);
                if (cursor != null) {
                    cursor.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public final void c(String str, String str2) {
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.b(str2);
        g();
        q();
        try {
            zzab().y().a("Deleted user attribute rows", Integer.valueOf(u().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e2) {
            zzab().q().a("Error deleting user attribute. appId", f3.a(str), i().c(str2), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.o8 d(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            com.google.android.gms.common.internal.m.b(r19)
            com.google.android.gms.common.internal.m.b(r20)
            r18.g()
            r18.q()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.u()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L83
            java.lang.String r11 = "user_attributes"
            java.lang.String r0 = "set_timestamp"
            java.lang.String r1 = "value"
            java.lang.String r2 = "origin"
            java.lang.String[] r12 = new java.lang.String[]{r0, r1, r2}     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L83
            java.lang.String r13 = "app_id=? and name=?"
            r0 = 2
            java.lang.String[] r14 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L83
            r1 = 0
            r14[r1] = r19     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L83
            r2 = 1
            r14[r2] = r8     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L83
            r15 = 0
            r16 = 0
            r17 = 0
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L83
            boolean r3 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L76 android.database.sqlite.SQLiteException -> L7a
            if (r3 != 0) goto L3f
            if (r10 == 0) goto L3e
            r10.close()
        L3e:
            return r9
        L3f:
            long r5 = r10.getLong(r1)     // Catch: java.lang.Throwable -> L76 android.database.sqlite.SQLiteException -> L7a
            r11 = r18
            java.lang.Object r7 = r11.a(r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            java.lang.String r3 = r10.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            com.google.android.gms.measurement.internal.o8 r0 = new com.google.android.gms.measurement.internal.o8     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            boolean r1 = r10.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            if (r1 == 0) goto L6e
            com.google.android.gms.measurement.internal.f3 r1 = r18.zzab()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            com.google.android.gms.measurement.internal.h3 r1 = r1.q()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.f3.a(r19)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
            r1.a(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La6
        L6e:
            if (r10 == 0) goto L73
            r10.close()
        L73:
            return r0
        L74:
            r0 = move-exception
            goto L87
        L76:
            r0 = move-exception
            r11 = r18
            goto La7
        L7a:
            r0 = move-exception
            r11 = r18
            goto L87
        L7e:
            r0 = move-exception
            r11 = r18
            r10 = r9
            goto La7
        L83:
            r0 = move-exception
            r11 = r18
            r10 = r9
        L87:
            com.google.android.gms.measurement.internal.f3 r1 = r18.zzab()     // Catch: java.lang.Throwable -> La6
            com.google.android.gms.measurement.internal.h3 r1 = r1.q()     // Catch: java.lang.Throwable -> La6
            java.lang.String r2 = "Error querying user property. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.f3.a(r19)     // Catch: java.lang.Throwable -> La6
            com.google.android.gms.measurement.internal.d3 r4 = r18.i()     // Catch: java.lang.Throwable -> La6
            java.lang.String r4 = r4.c(r8)     // Catch: java.lang.Throwable -> La6
            r1.a(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> La6
            if (r10 == 0) goto La5
            r10.close()
        La5:
            return r9
        La6:
            r0 = move-exception
        La7:
            if (r10 == 0) goto Lac
            r10.close()
        Lac:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.d(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.o8");
    }

    @WorkerThread
    public final zzq e(String str, String str2) {
        Cursor cursor;
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.b(str2);
        g();
        q();
        try {
            try {
                cursor = u().query("conditional_properties", new String[]{"origin", HummerConstants.VALUE, "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                String string = cursor.getString(0);
                try {
                    Object a2 = a(cursor, 1);
                    boolean z = cursor.getInt(2) != 0;
                    zzq zzqVar = new zzq(str, string, new zzjn(str2, cursor.getLong(8), a2, string), cursor.getLong(6), z, cursor.getString(3), (zzai) k().a(cursor.getBlob(5), zzai.CREATOR), cursor.getLong(4), (zzai) k().a(cursor.getBlob(7), zzai.CREATOR), cursor.getLong(9), (zzai) k().a(cursor.getBlob(10), zzai.CREATOR));
                    if (cursor.moveToNext()) {
                        zzab().q().a("Got multiple records for conditional property, expected one", f3.a(str), i().c(str2));
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return zzqVar;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzab().q().a("Error querying conditional property", f3.a(str), i().c(str2), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (SQLiteException e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @WorkerThread
    public final int f(String str, String str2) {
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.b(str2);
        g();
        q();
        try {
            return u().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            zzab().q().a("Error deleting conditional property", f3.a(str), i().c(str2), e2);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.z>> g(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.q()
            r12.g()
            com.google.android.gms.common.internal.m.b(r13)
            com.google.android.gms.common.internal.m.b(r14)
            a.e.a r0 = new a.e.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.u()
            r9 = 0
            java.lang.String r2 = "event_filters"
            java.lang.String r3 = "audience_id"
            java.lang.String r4 = "data"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            java.lang.String r4 = "app_id=? AND event_name=?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            r10 = 0
            r5[r10] = r13     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            r11 = 1
            r5[r11] = r14     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r1 != 0) goto L42
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r14 == 0) goto L41
            r14.close()
        L41:
            return r13
        L42:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            com.google.android.gms.internal.measurement.o3 r2 = com.google.android.gms.internal.measurement.o3.d()     // Catch: java.io.IOException -> L6e android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            com.google.android.gms.internal.measurement.z r1 = com.google.android.gms.internal.measurement.z.a(r1, r2)     // Catch: java.io.IOException -> L6e android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            int r2 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r3 != 0) goto L6a
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            r0.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
        L6a:
            r3.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            goto L80
        L6e:
            r1 = move-exception
            com.google.android.gms.measurement.internal.f3 r2 = r12.zzab()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            com.google.android.gms.measurement.internal.h3 r2 = r2.q()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.f3.a(r13)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            r2.a(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
        L80:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r1 != 0) goto L42
            if (r14 == 0) goto L8b
            r14.close()
        L8b:
            return r0
        L8c:
            r0 = move-exception
            goto L93
        L8e:
            r13 = move-exception
            r14 = r9
            goto Lab
        L91:
            r0 = move-exception
            r14 = r9
        L93:
            com.google.android.gms.measurement.internal.f3 r1 = r12.zzab()     // Catch: java.lang.Throwable -> Laa
            com.google.android.gms.measurement.internal.h3 r1 = r1.q()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.f3.a(r13)     // Catch: java.lang.Throwable -> Laa
            r1.a(r2, r13, r0)     // Catch: java.lang.Throwable -> Laa
            if (r14 == 0) goto La9
            r14.close()
        La9:
            return r9
        Laa:
            r13 = move-exception
        Lab:
            if (r14 == 0) goto Lb0
            r14.close()
        Lb0:
            goto Lb2
        Lb1:
            throw r13
        Lb2:
            goto Lb1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.g(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.c0>> h(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.q()
            r12.g()
            com.google.android.gms.common.internal.m.b(r13)
            com.google.android.gms.common.internal.m.b(r14)
            a.e.a r0 = new a.e.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.u()
            r9 = 0
            java.lang.String r2 = "property_filters"
            java.lang.String r3 = "audience_id"
            java.lang.String r4 = "data"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            java.lang.String r4 = "app_id=? AND property_name=?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            r10 = 0
            r5[r10] = r13     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            r11 = 1
            r5[r11] = r14     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L8e android.database.sqlite.SQLiteException -> L91
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r1 != 0) goto L42
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r14 == 0) goto L41
            r14.close()
        L41:
            return r13
        L42:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            com.google.android.gms.internal.measurement.o3 r2 = com.google.android.gms.internal.measurement.o3.d()     // Catch: java.io.IOException -> L6e android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            com.google.android.gms.internal.measurement.c0 r1 = com.google.android.gms.internal.measurement.c0.a(r1, r2)     // Catch: java.io.IOException -> L6e android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            int r2 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r3 != 0) goto L6a
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            r0.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
        L6a:
            r3.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            goto L80
        L6e:
            r1 = move-exception
            com.google.android.gms.measurement.internal.f3 r2 = r12.zzab()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            com.google.android.gms.measurement.internal.h3 r2 = r2.q()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.f3.a(r13)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            r2.a(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
        L80:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L8c java.lang.Throwable -> Laa
            if (r1 != 0) goto L42
            if (r14 == 0) goto L8b
            r14.close()
        L8b:
            return r0
        L8c:
            r0 = move-exception
            goto L93
        L8e:
            r13 = move-exception
            r14 = r9
            goto Lab
        L91:
            r0 = move-exception
            r14 = r9
        L93:
            com.google.android.gms.measurement.internal.f3 r1 = r12.zzab()     // Catch: java.lang.Throwable -> Laa
            com.google.android.gms.measurement.internal.h3 r1 = r1.q()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.f3.a(r13)     // Catch: java.lang.Throwable -> Laa
            r1.a(r2, r13, r0)     // Catch: java.lang.Throwable -> Laa
            if (r14 == 0) goto La9
            r14.close()
        La9:
            return r9
        Laa:
            r13 = move-exception
        Lab:
            if (r14 == 0) goto Lb0
            r14.close()
        Lb0:
            goto Lb2
        Lb1:
            throw r13
        Lb2:
            goto Lb1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.h(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    public final long i(String str, String str2) {
        long j2;
        ContentValues contentValues;
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.b(str2);
        g();
        q();
        SQLiteDatabase u = u();
        u.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
            sb.append("select ");
            sb.append(str2);
            sb.append(" from app2 where app_id=?");
            try {
                try {
                    j2 = a(sb.toString(), new String[]{str}, -1L);
                    if (j2 == -1) {
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("app_id", str);
                        contentValues2.put("first_open_count", (Integer) 0);
                        contentValues2.put("previous_install_count", (Integer) 0);
                        if (u.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                            zzab().q().a("Failed to insert column (got -1). appId", f3.a(str), str2);
                            u.endTransaction();
                            return -1L;
                        }
                        j2 = 0;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    j2 = 0;
                    zzab().q().a("Error inserting column. appId", f3.a(str), str2, e);
                    u.endTransaction();
                    return j2;
                }
                try {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put(str2, Long.valueOf(1 + j2));
                } catch (SQLiteException e3) {
                    e = e3;
                    zzab().q().a("Error inserting column. appId", f3.a(str), str2, e);
                    u.endTransaction();
                    return j2;
                }
            } catch (Throwable th) {
                th = th;
                u.endTransaction();
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
        } catch (Throwable th2) {
            th = th2;
        }
        if (u.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
            zzab().q().a("Failed to update column (got 0). appId", f3.a(str), str2);
            u.endTransaction();
            return -1L;
        }
        u.setTransactionSuccessful();
        u.endTransaction();
        return j2;
    }

    @Override // com.google.android.gms.measurement.internal.h8
    protected final boolean r() {
        return false;
    }

    @WorkerThread
    public final void s() {
        q();
        u().beginTransaction();
    }

    @WorkerThread
    public final void t() {
        q();
        u().endTransaction();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    public final SQLiteDatabase u() {
        g();
        try {
            return this.f12880d.getWritableDatabase();
        } catch (SQLiteException e2) {
            zzab().t().a("Error opening database", e2);
            throw e2;
        }
    }

    @WorkerThread
    public final void v() {
        q();
        u().setTransactionSuccessful();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0041  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String w() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.u()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L24 android.database.sqlite.SQLiteException -> L29
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L22 java.lang.Throwable -> L3e
            if (r2 == 0) goto L1c
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L22 java.lang.Throwable -> L3e
            if (r0 == 0) goto L1b
            r0.close()
        L1b:
            return r1
        L1c:
            if (r0 == 0) goto L21
            r0.close()
        L21:
            return r1
        L22:
            r2 = move-exception
            goto L2b
        L24:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L3f
        L29:
            r2 = move-exception
            r0 = r1
        L2b:
            com.google.android.gms.measurement.internal.f3 r3 = r6.zzab()     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.a(r4, r2)     // Catch: java.lang.Throwable -> L3e
            if (r0 == 0) goto L3d
            r0.close()
        L3d:
            return r1
        L3e:
            r1 = move-exception
        L3f:
            if (r0 == 0) goto L44
            r0.close()
        L44:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.w():java.lang.String");
    }

    public final boolean x() {
        return b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void y() {
        int delete;
        g();
        q();
        if (E()) {
            long a2 = c().f13117h.a();
            long c2 = a().c();
            if (Math.abs(c2 - a2) > j.D.a(null).longValue()) {
                c().f13117h.a(c2);
                g();
                q();
                if (!E() || (delete = u().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(a().a()), String.valueOf(z8.t())})) <= 0) {
                    return;
                }
                zzab().y().a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }

    @WorkerThread
    public final long z() {
        return a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    @WorkerThread
    public final void a(f fVar) {
        com.google.android.gms.common.internal.m.a(fVar);
        g();
        q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", fVar.f12882a);
        contentValues.put("name", fVar.f12883b);
        contentValues.put("lifetime_count", Long.valueOf(fVar.f12884c));
        contentValues.put("current_bundle_count", Long.valueOf(fVar.f12885d));
        contentValues.put("last_fire_timestamp", Long.valueOf(fVar.f12887f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(fVar.f12888g));
        contentValues.put("last_bundled_day", fVar.f12889h);
        contentValues.put("last_sampled_complex_event_id", fVar.f12890i);
        contentValues.put("last_sampling_rate", fVar.f12891j);
        if (d().e(fVar.f12882a, j.y0)) {
            contentValues.put("current_session_count", Long.valueOf(fVar.f12886e));
        }
        Boolean bool = fVar.f12892k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (u().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzab().q().a("Failed to insert/update event aggregates (got -1). appId", f3.a(fVar.f12882a));
            }
        } catch (SQLiteException e2) {
            zzab().q().a("Error storing event aggregates. appId", f3.a(fVar.f12882a), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x015b  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.f b(java.lang.String r27, java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.b(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.f");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.t0> f(java.lang.String r12) {
        /*
            r11 = this;
            r11.q()
            r11.g()
            com.google.android.gms.common.internal.m.b(r12)
            android.database.sqlite.SQLiteDatabase r0 = r11.u()
            r8 = 0
            java.lang.String r1 = "audience_filter_values"
            java.lang.String r2 = "audience_id"
            java.lang.String r3 = "current_results"
            java.lang.String[] r2 = new java.lang.String[]{r2, r3}     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L77
            java.lang.String r3 = "app_id=?"
            r9 = 1
            java.lang.String[] r4 = new java.lang.String[r9]     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L77
            r10 = 0
            r4[r10] = r12     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L77
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L77
            boolean r1 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            if (r1 != 0) goto L33
            if (r0 == 0) goto L32
            r0.close()
        L32:
            return r8
        L33:
            a.e.a r1 = new a.e.a     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            r1.<init>()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
        L38:
            int r2 = r0.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            byte[] r3 = r0.getBlob(r9)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.o3 r4 = com.google.android.gms.internal.measurement.o3.d()     // Catch: java.io.IOException -> L50 android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.t0 r3 = com.google.android.gms.internal.measurement.t0.a(r3, r4)     // Catch: java.io.IOException -> L50 android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            r1.put(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            goto L66
        L50:
            r3 = move-exception
            com.google.android.gms.measurement.internal.f3 r4 = r11.zzab()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.h3 r4 = r4.q()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            java.lang.String r5 = "Failed to merge filter results. appId, audienceId, error"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.f3.a(r12)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            r4.a(r5, r6, r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
        L66:
            boolean r2 = r0.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L90
            if (r2 != 0) goto L38
            if (r0 == 0) goto L71
            r0.close()
        L71:
            return r1
        L72:
            r1 = move-exception
            goto L79
        L74:
            r12 = move-exception
            r0 = r8
            goto L91
        L77:
            r1 = move-exception
            r0 = r8
        L79:
            com.google.android.gms.measurement.internal.f3 r2 = r11.zzab()     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.h3 r2 = r2.q()     // Catch: java.lang.Throwable -> L90
            java.lang.String r3 = "Database error querying filter results. appId"
            java.lang.Object r12 = com.google.android.gms.measurement.internal.f3.a(r12)     // Catch: java.lang.Throwable -> L90
            r2.a(r3, r12, r1)     // Catch: java.lang.Throwable -> L90
            if (r0 == 0) goto L8f
            r0.close()
        L8f:
            return r8
        L90:
            r12 = move-exception
        L91:
            if (r0 == 0) goto L96
            r0.close()
        L96:
            goto L98
        L97:
            throw r12
        L98:
            goto L97
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.f(java.lang.String):java.util.Map");
    }

    public final long c(String str) {
        com.google.android.gms.common.internal.m.b(str);
        g();
        q();
        try {
            return u().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, d().b(str, j.u))))});
        } catch (SQLiteException e2) {
            zzab().q().a("Error deleting over the limit events. appId", f3.a(str), e2);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] d(java.lang.String r11) {
        /*
            r10 = this;
            com.google.android.gms.common.internal.m.b(r11)
            r10.g()
            r10.q()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r10.u()     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            java.lang.String r2 = "apps"
            java.lang.String r3 = "remote_config"
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            java.lang.String r4 = "app_id=?"
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r9 = 0
            r5[r9] = r11     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L57
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
            if (r2 != 0) goto L31
            if (r1 == 0) goto L30
            r1.close()
        L30:
            return r0
        L31:
            byte[] r2 = r1.getBlob(r9)     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
            boolean r3 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
            if (r3 == 0) goto L4c
            com.google.android.gms.measurement.internal.f3 r3 = r10.zzab()     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
            java.lang.String r4 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.f3.a(r11)     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
            r3.a(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L52 java.lang.Throwable -> L70
        L4c:
            if (r1 == 0) goto L51
            r1.close()
        L51:
            return r2
        L52:
            r2 = move-exception
            goto L59
        L54:
            r11 = move-exception
            r1 = r0
            goto L71
        L57:
            r2 = move-exception
            r1 = r0
        L59:
            com.google.android.gms.measurement.internal.f3 r3 = r10.zzab()     // Catch: java.lang.Throwable -> L70
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: java.lang.Throwable -> L70
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r11 = com.google.android.gms.measurement.internal.f3.a(r11)     // Catch: java.lang.Throwable -> L70
            r3.a(r4, r11, r2)     // Catch: java.lang.Throwable -> L70
            if (r1 == 0) goto L6f
            r1.close()
        L6f:
            return r0
        L70:
            r11 = move-exception
        L71:
            if (r1 == 0) goto L76
            r1.close()
        L76:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.d(java.lang.String):byte[]");
    }

    public final long g(String str) {
        com.google.android.gms.common.internal.m.b(str);
        return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> e(java.lang.String r8) {
        /*
            r7 = this;
            r7.q()
            r7.g()
            com.google.android.gms.common.internal.m.b(r8)
            a.e.a r0 = new a.e.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r7.u()
            r2 = 0
            java.lang.String r3 = "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            r5 = 0
            r4[r5] = r8     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            r6 = 1
            r4[r6] = r8     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            android.database.Cursor r1 = r1.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            boolean r3 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r3 != 0) goto L32
            java.util.Map r8 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r1 == 0) goto L31
            r1.close()
        L31:
            return r8
        L32:
            int r3 = r1.getInt(r5)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Object r4 = r0.get(r4)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.util.List r4 = (java.util.List) r4     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r4 != 0) goto L4e
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            r4.<init>()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            r0.put(r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
        L4e:
            int r3 = r1.getInt(r6)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            r4.add(r3)     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            boolean r3 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L65 java.lang.Throwable -> L83
            if (r3 != 0) goto L32
            if (r1 == 0) goto L64
            r1.close()
        L64:
            return r0
        L65:
            r0 = move-exception
            goto L6c
        L67:
            r8 = move-exception
            r1 = r2
            goto L84
        L6a:
            r0 = move-exception
            r1 = r2
        L6c:
            com.google.android.gms.measurement.internal.f3 r3 = r7.zzab()     // Catch: java.lang.Throwable -> L83
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: java.lang.Throwable -> L83
            java.lang.String r4 = "Database error querying scoped filters. appId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.f3.a(r8)     // Catch: java.lang.Throwable -> L83
            r3.a(r4, r8, r0)     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L82
            r1.close()
        L82:
            return r2
        L83:
            r8 = move-exception
        L84:
            if (r1 == 0) goto L89
            r1.close()
        L89:
            goto L8b
        L8a:
            throw r8
        L8b:
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.e(java.lang.String):java.util.Map");
    }

    @WorkerThread
    public final boolean a(o8 o8Var) {
        com.google.android.gms.common.internal.m.a(o8Var);
        g();
        q();
        if (d(o8Var.f13129a, o8Var.f13131c) == null) {
            if (r8.e(o8Var.f13131c)) {
                if (b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{o8Var.f13129a}) >= 25) {
                    return false;
                }
            } else if (d().e(o8Var.f13129a, j.j0)) {
                if (!"_npa".equals(o8Var.f13131c) && b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{o8Var.f13129a, o8Var.f13130b}) >= 25) {
                    return false;
                }
            } else if (b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{o8Var.f13129a, o8Var.f13130b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", o8Var.f13129a);
        contentValues.put("origin", o8Var.f13130b);
        contentValues.put("name", o8Var.f13131c);
        contentValues.put("set_timestamp", Long.valueOf(o8Var.f13132d));
        a(contentValues, HummerConstants.VALUE, o8Var.f13133e);
        try {
            if (u().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzab().q().a("Failed to insert/update user property (got -1). appId", f3.a(o8Var.f13129a));
            }
        } catch (SQLiteException e2) {
            zzab().q().a("Error storing user property. appId", f3.a(o8Var.f13129a), e2);
        }
        return true;
    }

    @WorkerThread
    public final List<zzq> b(String str, String str2, String str3) {
        com.google.android.gms.common.internal.m.b(str);
        g();
        q();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0179 A[Catch: SQLiteException -> 0x01d7, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:15:0x006d, B:17:0x00ce, B:21:0x00d8, B:24:0x0122, B:27:0x0159, B:29:0x0164, B:33:0x016e, B:35:0x0179, B:39:0x0181, B:42:0x019a, B:44:0x01a5, B:45:0x01b7, B:47:0x01c0, B:52:0x0196, B:54:0x0155, B:55:0x011d, B:58:0x01ea), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a5 A[Catch: SQLiteException -> 0x01d7, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:15:0x006d, B:17:0x00ce, B:21:0x00d8, B:24:0x0122, B:27:0x0159, B:29:0x0164, B:33:0x016e, B:35:0x0179, B:39:0x0181, B:42:0x019a, B:44:0x01a5, B:45:0x01b7, B:47:0x01c0, B:52:0x0196, B:54:0x0155, B:55:0x011d, B:58:0x01ea), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c0 A[Catch: SQLiteException -> 0x01d7, all -> 0x0201, TRY_LEAVE, TryCatch #0 {all -> 0x0201, blocks: (B:15:0x006d, B:17:0x00ce, B:21:0x00d8, B:24:0x0122, B:27:0x0159, B:29:0x0164, B:33:0x016e, B:35:0x0179, B:39:0x0181, B:42:0x019a, B:44:0x01a5, B:45:0x01b7, B:47:0x01c0, B:52:0x0196, B:54:0x0155, B:55:0x011d, B:58:0x01ea), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0196 A[Catch: SQLiteException -> 0x01d7, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:15:0x006d, B:17:0x00ce, B:21:0x00d8, B:24:0x0122, B:27:0x0159, B:29:0x0164, B:33:0x016e, B:35:0x0179, B:39:0x0181, B:42:0x019a, B:44:0x01a5, B:45:0x01b7, B:47:0x01c0, B:52:0x0196, B:54:0x0155, B:55:0x011d, B:58:0x01ea), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0155 A[Catch: SQLiteException -> 0x01d7, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:15:0x006d, B:17:0x00ce, B:21:0x00d8, B:24:0x0122, B:27:0x0159, B:29:0x0164, B:33:0x016e, B:35:0x0179, B:39:0x0181, B:42:0x019a, B:44:0x01a5, B:45:0x01b7, B:47:0x01c0, B:52:0x0196, B:54:0x0155, B:55:0x011d, B:58:0x01ea), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011d A[Catch: SQLiteException -> 0x01d7, all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:15:0x006d, B:17:0x00ce, B:21:0x00d8, B:24:0x0122, B:27:0x0159, B:29:0x0164, B:33:0x016e, B:35:0x0179, B:39:0x0181, B:42:0x019a, B:44:0x01a5, B:45:0x01b7, B:47:0x01c0, B:52:0x0196, B:54:0x0155, B:55:0x011d, B:58:0x01ea), top: B:2:0x000c }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.a4 b(java.lang.String r34) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.b(java.lang.String):com.google.android.gms.measurement.internal.a4");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a1  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.o8> a(java.lang.String r14) {
        /*
            r13 = this;
            com.google.android.gms.common.internal.m.b(r14)
            r13.g()
            r13.q()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r13.u()     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L85
            java.lang.String r3 = "user_attributes"
            java.lang.String r4 = "name"
            java.lang.String r5 = "origin"
            java.lang.String r6 = "set_timestamp"
            java.lang.String r7 = "value"
            java.lang.String[] r4 = new java.lang.String[]{r4, r5, r6, r7}     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L85
            java.lang.String r5 = "app_id=?"
            r11 = 1
            java.lang.String[] r6 = new java.lang.String[r11]     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L85
            r12 = 0
            r6[r12] = r14     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L85
            r7 = 0
            r8 = 0
            java.lang.String r9 = "rowid"
            java.lang.String r10 = "1000"
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteException -> L85
            boolean r3 = r2.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            if (r3 != 0) goto L3f
            if (r2 == 0) goto L3e
            r2.close()
        L3e:
            return r0
        L3f:
            java.lang.String r7 = r2.getString(r12)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            java.lang.String r3 = r2.getString(r11)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            if (r3 != 0) goto L4b
            java.lang.String r3 = ""
        L4b:
            r6 = r3
            r3 = 2
            long r8 = r2.getLong(r3)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            r3 = 3
            java.lang.Object r10 = r13.a(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            if (r10 != 0) goto L6a
            com.google.android.gms.measurement.internal.f3 r3 = r13.zzab()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            java.lang.String r4 = "Read invalid user property value, ignoring it. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.f3.a(r14)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            r3.a(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            goto L74
        L6a:
            com.google.android.gms.measurement.internal.o8 r3 = new com.google.android.gms.measurement.internal.o8     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            r4 = r3
            r5 = r14
            r4.<init>(r5, r6, r7, r8, r10)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            r0.add(r3)     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
        L74:
            boolean r3 = r2.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L80 java.lang.Throwable -> L9e
            if (r3 != 0) goto L3f
            if (r2 == 0) goto L7f
            r2.close()
        L7f:
            return r0
        L80:
            r0 = move-exception
            goto L87
        L82:
            r14 = move-exception
            r2 = r1
            goto L9f
        L85:
            r0 = move-exception
            r2 = r1
        L87:
            com.google.android.gms.measurement.internal.f3 r3 = r13.zzab()     // Catch: java.lang.Throwable -> L9e
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: java.lang.Throwable -> L9e
            java.lang.String r4 = "Error querying user properties. appId"
            java.lang.Object r14 = com.google.android.gms.measurement.internal.f3.a(r14)     // Catch: java.lang.Throwable -> L9e
            r3.a(r4, r14, r0)     // Catch: java.lang.Throwable -> L9e
            if (r2 == 0) goto L9d
            r2.close()
        L9d:
            return r1
        L9e:
            r14 = move-exception
        L9f:
            if (r2 == 0) goto La4
            r2.close()
        La4:
            goto La6
        La5:
            throw r14
        La6:
            goto La5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.a(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0090, code lost:
    
        zzab().q().a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0127  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.o8> a(java.lang.String r22, java.lang.String r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    @WorkerThread
    public final boolean a(zzq zzqVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        g();
        q();
        if (d(zzqVar.f13399e, zzqVar.f13401g.f13385f) == null && b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzqVar.f13399e}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzqVar.f13399e);
        contentValues.put("origin", zzqVar.f13400f);
        contentValues.put("name", zzqVar.f13401g.f13385f);
        a(contentValues, HummerConstants.VALUE, zzqVar.f13401g.j());
        contentValues.put("active", Boolean.valueOf(zzqVar.f13403i));
        contentValues.put("trigger_event_name", zzqVar.f13404j);
        contentValues.put("trigger_timeout", Long.valueOf(zzqVar.f13406l));
        j();
        contentValues.put("timed_out_event", r8.a((Parcelable) zzqVar.f13405k));
        contentValues.put("creation_timestamp", Long.valueOf(zzqVar.f13402h));
        j();
        contentValues.put("triggered_event", r8.a((Parcelable) zzqVar.m));
        contentValues.put("triggered_timestamp", Long.valueOf(zzqVar.f13401g.f13386g));
        contentValues.put("time_to_live", Long.valueOf(zzqVar.n));
        j();
        contentValues.put("expired_event", r8.a((Parcelable) zzqVar.o));
        try {
            if (u().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzab().q().a("Failed to insert/update conditional user property (got -1)", f3.a(zzqVar.f13399e));
            }
        } catch (SQLiteException e2) {
            zzab().q().a("Error storing conditional user property", f3.a(zzqVar.f13399e), e2);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        zzab().q().a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzq> a(java.lang.String r25, java.lang.String[] r26) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.a(java.lang.String, java.lang.String[]):java.util.List");
    }

    @WorkerThread
    public final void a(a4 a4Var) {
        com.google.android.gms.common.internal.m.a(a4Var);
        g();
        q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", a4Var.f());
        contentValues.put("app_instance_id", a4Var.a());
        contentValues.put("gmp_app_id", a4Var.c());
        contentValues.put("resettable_device_id_hash", a4Var.h());
        contentValues.put("last_bundle_index", Long.valueOf(a4Var.q()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(a4Var.i()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(a4Var.j()));
        contentValues.put("app_version", a4Var.k());
        contentValues.put("app_store", a4Var.m());
        contentValues.put("gmp_version", Long.valueOf(a4Var.n()));
        contentValues.put("dev_cert_hash", Long.valueOf(a4Var.o()));
        contentValues.put("measurement_enabled", Boolean.valueOf(a4Var.d()));
        contentValues.put("day", Long.valueOf(a4Var.u()));
        contentValues.put("daily_public_events_count", Long.valueOf(a4Var.v()));
        contentValues.put("daily_events_count", Long.valueOf(a4Var.w()));
        contentValues.put("daily_conversions_count", Long.valueOf(a4Var.x()));
        contentValues.put("config_fetched_time", Long.valueOf(a4Var.r()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(a4Var.s()));
        contentValues.put("app_version_int", Long.valueOf(a4Var.l()));
        contentValues.put("firebase_instance_id", a4Var.b());
        contentValues.put("daily_error_events_count", Long.valueOf(a4Var.z()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(a4Var.y()));
        contentValues.put("health_monitor_sample", a4Var.A());
        contentValues.put("android_id", Long.valueOf(a4Var.C()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(a4Var.D()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(a4Var.E()));
        contentValues.put("admob_app_id", a4Var.g());
        contentValues.put("dynamite_version", Long.valueOf(a4Var.p()));
        if (a4Var.G() != null) {
            if (a4Var.G().size() == 0) {
                zzab().t().a("Safelisted events should not be an empty list. appId", a4Var.f());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", a4Var.G()));
            }
        }
        try {
            SQLiteDatabase u = u();
            if (u.update("apps", contentValues, "app_id = ?", new String[]{a4Var.f()}) == 0 && u.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzab().q().a("Failed to insert/update app (got -1). appId", f3.a(a4Var.f()));
            }
        } catch (SQLiteException e2) {
            zzab().q().a("Error storing app. appId", f3.a(a4Var.f()), e2);
        }
    }

    @WorkerThread
    public final d9 a(long j2, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        com.google.android.gms.common.internal.m.b(str);
        g();
        q();
        String[] strArr = {str};
        d9 d9Var = new d9();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase u = u();
                Cursor query = u.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    zzab().t().a("Not updating daily counts, app is not known. appId", f3.a(str));
                    if (query != null) {
                        query.close();
                    }
                    return d9Var;
                }
                if (query.getLong(0) == j2) {
                    d9Var.f12845b = query.getLong(1);
                    d9Var.f12844a = query.getLong(2);
                    d9Var.f12846c = query.getLong(3);
                    d9Var.f12847d = query.getLong(4);
                    d9Var.f12848e = query.getLong(5);
                }
                if (z) {
                    d9Var.f12845b++;
                }
                if (z2) {
                    d9Var.f12844a++;
                }
                if (z3) {
                    d9Var.f12846c++;
                }
                if (z4) {
                    d9Var.f12847d++;
                }
                if (z5) {
                    d9Var.f12848e++;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j2));
                contentValues.put("daily_public_events_count", Long.valueOf(d9Var.f12844a));
                contentValues.put("daily_events_count", Long.valueOf(d9Var.f12845b));
                contentValues.put("daily_conversions_count", Long.valueOf(d9Var.f12846c));
                contentValues.put("daily_error_events_count", Long.valueOf(d9Var.f12847d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(d9Var.f12848e));
                u.update("apps", contentValues, "app_id=?", strArr);
                if (query != null) {
                    query.close();
                }
                return d9Var;
            } catch (SQLiteException e2) {
                zzab().q().a("Error updating daily counts. appId", f3.a(str), e2);
                if (0 != 0) {
                    cursor.close();
                }
                return d9Var;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public final boolean a(com.google.android.gms.internal.measurement.r0 r0Var, boolean z) {
        g();
        q();
        com.google.android.gms.common.internal.m.a(r0Var);
        com.google.android.gms.common.internal.m.b(r0Var.s());
        com.google.android.gms.common.internal.m.b(r0Var.M());
        y();
        long a2 = a().a();
        if (r0Var.G() < a2 - z8.t() || r0Var.G() > z8.t() + a2) {
            zzab().t().a("Storing bundle outside of the max uploading time span. appId, now, timestamp", f3.a(r0Var.s()), Long.valueOf(a2), Long.valueOf(r0Var.G()));
        }
        try {
            byte[] c2 = k().c(r0Var.e());
            zzab().y().a("Saving bundle, size", Integer.valueOf(c2.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", r0Var.s());
            contentValues.put("bundle_end_timestamp", Long.valueOf(r0Var.G()));
            contentValues.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, c2);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (r0Var.p0()) {
                contentValues.put("retry_count", Integer.valueOf(r0Var.q0()));
            }
            try {
                if (u().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzab().q().a("Failed to insert bundle (got -1). appId", f3.a(r0Var.s()));
                return false;
            } catch (SQLiteException e2) {
                zzab().q().a("Error storing bundle. appId", f3.a(r0Var.s()), e2);
                return false;
            }
        } catch (IOException e3) {
            zzab().q().a("Data loss. Failed to serialize bundle. appId", f3.a(r0Var.s()), e3);
            return false;
        }
    }

    @WorkerThread
    public final List<Pair<com.google.android.gms.internal.measurement.r0, Long>> a(String str, int i2, int i3) {
        byte[] b2;
        g();
        q();
        com.google.android.gms.common.internal.m.a(i2 > 0);
        com.google.android.gms.common.internal.m.a(i3 > 0);
        com.google.android.gms.common.internal.m.b(str);
        Cursor cursor = null;
        try {
            try {
                Cursor query = u().query("queue", new String[]{"rowid", Constants$ScionAnalytics$MessageType.DATA_MESSAGE, "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i2));
                if (!query.moveToFirst()) {
                    List<Pair<com.google.android.gms.internal.measurement.r0, Long>> emptyList = Collections.emptyList();
                    if (query != null) {
                        query.close();
                    }
                    return emptyList;
                }
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                do {
                    long j2 = query.getLong(0);
                    try {
                        b2 = k().b(query.getBlob(1));
                    } catch (IOException e2) {
                        zzab().q().a("Failed to unzip queued bundle. appId", f3.a(str), e2);
                    }
                    if (!arrayList.isEmpty() && b2.length + i4 > i3) {
                        break;
                    }
                    try {
                        r0.a B0 = com.google.android.gms.internal.measurement.r0.B0();
                        B0.a(b2, com.google.android.gms.internal.measurement.o3.d());
                        r0.a aVar = B0;
                        if (!query.isNull(2)) {
                            aVar.h(query.getInt(2));
                        }
                        i4 += b2.length;
                        arrayList.add(Pair.create((com.google.android.gms.internal.measurement.r0) ((com.google.android.gms.internal.measurement.b4) aVar.t()), Long.valueOf(j2)));
                    } catch (IOException e3) {
                        zzab().q().a("Failed to merge queued bundle. appId", f3.a(str), e3);
                    }
                    if (!query.moveToNext()) {
                        break;
                    }
                } while (i4 <= i3);
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e4) {
                zzab().q().a("Error querying bundles. appId", f3.a(str), e4);
                List<Pair<com.google.android.gms.internal.measurement.r0, Long>> emptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    public final void a(List<Long> list) {
        g();
        q();
        com.google.android.gms.common.internal.m.a(list);
        com.google.android.gms.common.internal.m.a(list.size());
        if (E()) {
            String join = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 80);
            sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb3.append(sb2);
            sb3.append(" AND retry_count =  2147483647 LIMIT 1");
            if (b(sb3.toString(), (String[]) null) > 0) {
                zzab().t().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase u = u();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                u.execSQL(sb4.toString());
            } catch (SQLiteException e2) {
                zzab().q().a("Error incrementing retry count. error", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(String str, com.google.android.gms.internal.measurement.y0[] y0VarArr) {
        boolean z;
        q();
        g();
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(y0VarArr);
        SQLiteDatabase u = u();
        u.beginTransaction();
        try {
            q();
            g();
            com.google.android.gms.common.internal.m.b(str);
            SQLiteDatabase u2 = u();
            u2.delete("property_filters", "app_id=?", new String[]{str});
            u2.delete("event_filters", "app_id=?", new String[]{str});
            for (com.google.android.gms.internal.measurement.y0 y0Var : y0VarArr) {
                q();
                g();
                com.google.android.gms.common.internal.m.b(str);
                com.google.android.gms.common.internal.m.a(y0Var);
                com.google.android.gms.common.internal.m.a(y0Var.f12213e);
                com.google.android.gms.common.internal.m.a(y0Var.f12212d);
                if (y0Var.f12211c == null) {
                    zzab().t().a("Audience with no ID. appId", f3.a(str));
                } else {
                    int intValue = y0Var.f12211c.intValue();
                    com.google.android.gms.internal.measurement.z[] zVarArr = y0Var.f12213e;
                    int length = zVarArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            if (!zVarArr[i2].q()) {
                                zzab().t().a("Event filter with no ID. Audience definition ignored. appId, audienceId", f3.a(str), y0Var.f12211c);
                                break;
                            }
                            i2++;
                        } else {
                            com.google.android.gms.internal.measurement.c0[] c0VarArr = y0Var.f12212d;
                            int length2 = c0VarArr.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 < length2) {
                                    if (!c0VarArr[i3].p()) {
                                        zzab().t().a("Property filter with no ID. Audience definition ignored. appId, audienceId", f3.a(str), y0Var.f12211c);
                                        break;
                                    }
                                    i3++;
                                } else {
                                    com.google.android.gms.internal.measurement.z[] zVarArr2 = y0Var.f12213e;
                                    int length3 = zVarArr2.length;
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= length3) {
                                            z = true;
                                            break;
                                        } else {
                                            if (!a(str, intValue, zVarArr2[i4])) {
                                                z = false;
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                    if (z) {
                                        com.google.android.gms.internal.measurement.c0[] c0VarArr2 = y0Var.f12212d;
                                        int length4 = c0VarArr2.length;
                                        int i5 = 0;
                                        while (true) {
                                            if (i5 >= length4) {
                                                break;
                                            }
                                            if (!a(str, intValue, c0VarArr2[i5])) {
                                                z = false;
                                                break;
                                            }
                                            i5++;
                                        }
                                    }
                                    if (!z) {
                                        q();
                                        g();
                                        com.google.android.gms.common.internal.m.b(str);
                                        SQLiteDatabase u3 = u();
                                        u3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                                        u3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.internal.measurement.y0 y0Var2 : y0VarArr) {
                arrayList.add(y0Var2.f12211c);
            }
            a(str, arrayList);
            u.setTransactionSuccessful();
        } finally {
            u.endTransaction();
        }
    }

    @WorkerThread
    private final boolean a(String str, int i2, com.google.android.gms.internal.measurement.z zVar) {
        q();
        g();
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(zVar);
        if (TextUtils.isEmpty(zVar.o())) {
            zzab().t().a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", f3.a(str), Integer.valueOf(i2), String.valueOf(zVar.q() ? Integer.valueOf(zVar.n()) : null));
            return false;
        }
        byte[] e2 = zVar.e();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", zVar.q() ? Integer.valueOf(zVar.n()) : null);
        contentValues.put("event_name", zVar.o());
        if (d().e(str, j.x0)) {
            contentValues.put("session_scoped", zVar.y() ? Boolean.valueOf(zVar.z()) : null);
        }
        contentValues.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, e2);
        try {
            if (u().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzab().q().a("Failed to insert event filter (got -1). appId", f3.a(str));
            return true;
        } catch (SQLiteException e3) {
            zzab().q().a("Error storing event filter. appId", f3.a(str), e3);
            return false;
        }
    }

    @WorkerThread
    private final boolean a(String str, int i2, com.google.android.gms.internal.measurement.c0 c0Var) {
        q();
        g();
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(c0Var);
        if (TextUtils.isEmpty(c0Var.o())) {
            zzab().t().a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", f3.a(str), Integer.valueOf(i2), String.valueOf(c0Var.p() ? Integer.valueOf(c0Var.n()) : null));
            return false;
        }
        byte[] e2 = c0Var.e();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", c0Var.p() ? Integer.valueOf(c0Var.n()) : null);
        contentValues.put("property_name", c0Var.o());
        if (d().e(str, j.x0)) {
            contentValues.put("session_scoped", c0Var.u() ? Boolean.valueOf(c0Var.v()) : null);
        }
        contentValues.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, e2);
        try {
            if (u().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzab().q().a("Failed to insert property filter (got -1). appId", f3.a(str));
            return false;
        } catch (SQLiteException e3) {
            zzab().q().a("Error storing property filter. appId", f3.a(str), e3);
            return false;
        }
    }

    private final boolean a(String str, List<Integer> list) {
        com.google.android.gms.common.internal.m.b(str);
        q();
        g();
        SQLiteDatabase u = u();
        try {
            long b2 = b("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, d().b(str, j.K)));
            if (b2 <= max) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                Integer num = list.get(i2);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String join = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 140);
            sb3.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb3.append(sb2);
            sb3.append(" order by rowid desc limit -1 offset ?)");
            return u.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e2) {
            zzab().q().a("Database error querying filters. appId", f3.a(str), e2);
            return false;
        }
    }

    @WorkerThread
    private static void a(ContentValues contentValues, String str, Object obj) {
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    @VisibleForTesting
    @WorkerThread
    private final Object a(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            zzab().q().a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            zzab().q().a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        zzab().q().a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    public final long a(com.google.android.gms.internal.measurement.r0 r0Var) {
        g();
        q();
        com.google.android.gms.common.internal.m.a(r0Var);
        com.google.android.gms.common.internal.m.b(r0Var.s());
        byte[] e2 = r0Var.e();
        long a2 = k().a(e2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", r0Var.s());
        contentValues.put("metadata_fingerprint", Long.valueOf(a2));
        contentValues.put("metadata", e2);
        try {
            u().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return a2;
        } catch (SQLiteException e3) {
            zzab().q().a("Error storing raw event metadata. appId", f3.a(r0Var.s()), e3);
            throw e3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(long r5) {
        /*
            r4 = this;
            r4.g()
            r4.q()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.u()     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L43
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r1 != 0) goto L34
            com.google.android.gms.measurement.internal.f3 r6 = r4.zzab()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.h3 r6 = r6.y()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.a(r1)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r5 == 0) goto L33
            r5.close()
        L33:
            return r0
        L34:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L58
            if (r5 == 0) goto L3d
            r5.close()
        L3d:
            return r6
        L3e:
            r6 = move-exception
            goto L45
        L40:
            r6 = move-exception
            r5 = r0
            goto L59
        L43:
            r6 = move-exception
            r5 = r0
        L45:
            com.google.android.gms.measurement.internal.f3 r1 = r4.zzab()     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.h3 r1 = r1.q()     // Catch: java.lang.Throwable -> L58
            java.lang.String r2 = "Error selecting expired configs"
            r1.a(r2, r6)     // Catch: java.lang.Throwable -> L58
            if (r5 == 0) goto L57
            r5.close()
        L57:
            return r0
        L58:
            r6 = move-exception
        L59:
            if (r5 == 0) goto L5e
            r5.close()
        L5e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.a(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.n0, java.lang.Long> a(java.lang.String r8, java.lang.Long r9) {
        /*
            r7 = this;
            r7.g()
            r7.q()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.u()     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L72
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L72
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L72
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L72
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L72
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L6f android.database.sqlite.SQLiteException -> L72
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            if (r2 != 0) goto L37
            com.google.android.gms.measurement.internal.f3 r8 = r7.zzab()     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.h3 r8 = r8.y()     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            java.lang.String r9 = "Main event not found"
            r8.a(r9)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            long r3 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            com.google.android.gms.internal.measurement.o3 r4 = com.google.android.gms.internal.measurement.o3.d()     // Catch: java.io.IOException -> L55 android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            com.google.android.gms.internal.measurement.n0 r8 = com.google.android.gms.internal.measurement.n0.a(r2, r4)     // Catch: java.io.IOException -> L55 android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            android.util.Pair r8 = android.util.Pair.create(r8, r3)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            if (r1 == 0) goto L54
            r1.close()
        L54:
            return r8
        L55:
            r2 = move-exception
            com.google.android.gms.measurement.internal.f3 r3 = r7.zzab()     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.h3 r3 = r3.q()     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.f3.a(r8)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            r3.a(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L6d java.lang.Throwable -> L87
            if (r1 == 0) goto L6c
            r1.close()
        L6c:
            return r0
        L6d:
            r8 = move-exception
            goto L74
        L6f:
            r8 = move-exception
            r1 = r0
            goto L88
        L72:
            r8 = move-exception
            r1 = r0
        L74:
            com.google.android.gms.measurement.internal.f3 r9 = r7.zzab()     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.h3 r9 = r9.q()     // Catch: java.lang.Throwable -> L87
            java.lang.String r2 = "Error selecting main event"
            r9.a(r2, r8)     // Catch: java.lang.Throwable -> L87
            if (r1 == 0) goto L86
            r1.close()
        L86:
            return r0
        L87:
            r8 = move-exception
        L88:
            if (r1 == 0) goto L8d
            r1.close()
        L8d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e9.a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final boolean a(String str, Long l2, long j2, com.google.android.gms.internal.measurement.n0 n0Var) {
        g();
        q();
        com.google.android.gms.common.internal.m.a(n0Var);
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.a(l2);
        byte[] e2 = n0Var.e();
        zzab().y().a("Saving complex main event, appId, data size", i().a(str), Integer.valueOf(e2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", e2);
        try {
            if (u().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzab().q().a("Failed to insert complex main event (got -1). appId", f3.a(str));
            return false;
        } catch (SQLiteException e3) {
            zzab().q().a("Error storing complex main event. appId", f3.a(str), e3);
            return false;
        }
    }

    public final boolean a(g gVar, long j2, boolean z) {
        g();
        q();
        com.google.android.gms.common.internal.m.a(gVar);
        com.google.android.gms.common.internal.m.b(gVar.f12920a);
        n0.a z2 = com.google.android.gms.internal.measurement.n0.z();
        z2.b(gVar.f12924e);
        Iterator<String> it = gVar.f12925f.iterator();
        while (it.hasNext()) {
            String next = it.next();
            p0.a z3 = com.google.android.gms.internal.measurement.p0.z();
            z3.a(next);
            k().a(z3, gVar.f12925f.b(next));
            z2.a(z3);
        }
        byte[] e2 = ((com.google.android.gms.internal.measurement.n0) z2.t()).e();
        zzab().y().a("Saving event, name, data size", i().a(gVar.f12921b), Integer.valueOf(e2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", gVar.f12920a);
        contentValues.put("name", gVar.f12921b);
        contentValues.put("timestamp", Long.valueOf(gVar.f12923d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j2));
        contentValues.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, e2);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (u().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzab().q().a("Failed to insert raw event (got -1). appId", f3.a(gVar.f12920a));
            return false;
        } catch (SQLiteException e3) {
            zzab().q().a("Error storing raw event. appId", f3.a(gVar.f12920a), e3);
            return false;
        }
    }
}
