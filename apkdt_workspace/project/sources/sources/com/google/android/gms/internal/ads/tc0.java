package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.internal.ads.us1;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tc0 {
    public static ArrayList<us1.a> a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<us1.a> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(us1.a.a(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (o91 e2) {
                qd.b("Unable to deserialize proto from offline signals database:");
                qd.b(e2.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    public static long b(SQLiteDatabase sQLiteDatabase, int i2) {
        Cursor c2 = c(sQLiteDatabase, 2);
        long j2 = 0;
        if (c2.getCount() > 0) {
            c2.moveToNext();
            j2 = 0 + c2.getLong(c2.getColumnIndexOrThrow(HummerConstants.VALUE));
        }
        c2.close();
        return j2;
    }

    private static Cursor c(SQLiteDatabase sQLiteDatabase, int i2) {
        String[] strArr = {HummerConstants.VALUE};
        String[] strArr2 = new String[1];
        if (i2 == 0) {
            strArr2[0] = "failed_requests";
        } else if (i2 == 1) {
            strArr2[0] = "total_requests";
        } else if (i2 == 2) {
            strArr2[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    public static int a(SQLiteDatabase sQLiteDatabase, int i2) {
        int i3 = 0;
        if (i2 == 2) {
            return 0;
        }
        Cursor c2 = c(sQLiteDatabase, i2);
        if (c2.getCount() > 0) {
            c2.moveToNext();
            i3 = 0 + c2.getInt(c2.getColumnIndexOrThrow(HummerConstants.VALUE));
        }
        c2.close();
        return i3;
    }
}
