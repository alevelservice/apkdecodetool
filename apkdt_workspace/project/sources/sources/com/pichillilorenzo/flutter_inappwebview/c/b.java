package com.pichillilorenzo.flutter_inappwebview.c;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CredentialDao.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    d f16589a;

    /* renamed from: b, reason: collision with root package name */
    String[] f16590b = {"_id", "username", "password", "protection_space_id"};

    public b(d dVar) {
        this.f16589a = dVar;
    }

    public List<a> a(Long l2) {
        Cursor query = this.f16589a.getReadableDatabase().query("credential", this.f16590b, "protection_space_id = ?", new String[]{l2.toString()}, null, null, null);
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            arrayList.add(new a(Long.valueOf(query.getLong(query.getColumnIndexOrThrow("_id"))), query.getString(query.getColumnIndexOrThrow("username")), query.getString(query.getColumnIndexOrThrow("password")), l2));
        }
        query.close();
        return arrayList;
    }

    public long b(a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("username", aVar.f16586b);
        contentValues.put("password", aVar.f16587c);
        contentValues.put("protection_space_id", aVar.f16588d);
        return this.f16589a.getWritableDatabase().insert("credential", null, contentValues);
    }

    public long c(a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("username", aVar.f16586b);
        contentValues.put("password", aVar.f16587c);
        return this.f16589a.getWritableDatabase().update("credential", contentValues, "protection_space_id = ?", new String[]{aVar.f16588d.toString()});
    }

    public a a(String str, String str2, Long l2) {
        Cursor query = this.f16589a.getReadableDatabase().query("credential", this.f16590b, "username = ? AND password = ? AND protection_space_id = ?", new String[]{str, str2, l2.toString()}, null, null, null);
        a aVar = query.moveToNext() ? new a(Long.valueOf(query.getLong(query.getColumnIndexOrThrow("_id"))), query.getString(query.getColumnIndexOrThrow("username")), query.getString(query.getColumnIndexOrThrow("password")), l2) : null;
        query.close();
        return aVar;
    }

    public long a(a aVar) {
        return this.f16589a.getWritableDatabase().delete("credential", "_id = ?", new String[]{aVar.f16585a.toString()});
    }
}
