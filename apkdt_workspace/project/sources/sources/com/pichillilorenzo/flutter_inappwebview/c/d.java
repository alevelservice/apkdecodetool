package com.pichillilorenzo.flutter_inappwebview.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: CredentialDatabaseHelper.java */
/* loaded from: classes2.dex */
public class d extends SQLiteOpenHelper {
    public d(Context context) {
        super(context, "CredentialDatabase.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS protection_space");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS credential");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE protection_space (_id INTEGER PRIMARY KEY,host TEXT NOT NULL,protocol TEXT,realm TEXT,port INTEGER,UNIQUE(host, protocol, realm, port));");
        sQLiteDatabase.execSQL("CREATE TABLE credential (_id INTEGER PRIMARY KEY,username TEXT NOT NULL,password TEXT NOT NULL,protection_space_id INTEGER NOT NULL,UNIQUE(username, password, protection_space_id),FOREIGN KEY (protection_space_id) REFERENCES protection_space (_id) ON DELETE CASCADE);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        onUpgrade(sQLiteDatabase, i2, i3);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS protection_space");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS credential");
        onCreate(sQLiteDatabase);
    }
}
