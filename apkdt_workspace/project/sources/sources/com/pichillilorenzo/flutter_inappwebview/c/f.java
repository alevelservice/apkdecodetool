package com.pichillilorenzo.flutter_inappwebview.c;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProtectionSpaceDao.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    d f16600a;

    /* renamed from: b, reason: collision with root package name */
    String[] f16601b = {"_id", "host", "protocol", "realm", "port"};

    public f(d dVar) {
        this.f16600a = dVar;
    }

    public List<e> a() {
        Cursor query = this.f16600a.getReadableDatabase().query("protection_space", this.f16601b, null, null, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            arrayList.add(new e(Long.valueOf(query.getLong(query.getColumnIndexOrThrow("_id"))), query.getString(query.getColumnIndexOrThrow("host")), query.getString(query.getColumnIndexOrThrow("protocol")), query.getString(query.getColumnIndexOrThrow("realm")), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("port")))));
        }
        query.close();
        return arrayList;
    }

    public long b(e eVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("host", eVar.f16596b);
        contentValues.put("protocol", eVar.f16597c);
        contentValues.put("realm", eVar.f16598d);
        contentValues.put("port", eVar.f16599e);
        return this.f16600a.getWritableDatabase().insert("protection_space", null, contentValues);
    }

    public e a(String str, String str2, String str3, Integer num) {
        Cursor query = this.f16600a.getReadableDatabase().query("protection_space", this.f16601b, "host = ? AND protocol = ? AND realm = ? AND port = ?", new String[]{str, str2, str3, num.toString()}, null, null, null);
        e eVar = query.moveToNext() ? new e(Long.valueOf(query.getLong(query.getColumnIndexOrThrow("_id"))), query.getString(query.getColumnIndexOrThrow("host")), query.getString(query.getColumnIndexOrThrow("protocol")), query.getString(query.getColumnIndexOrThrow("realm")), Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("port")))) : null;
        query.close();
        return eVar;
    }

    public long a(e eVar) {
        return this.f16600a.getWritableDatabase().delete("protection_space", "_id = ?", new String[]{eVar.f16595a.toString()});
    }
}
