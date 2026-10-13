package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: LocalContentUriFetchProducer.java */
/* loaded from: classes.dex */
public class v extends y {

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f4112d = {"_id", "_data"};

    /* renamed from: c, reason: collision with root package name */
    private final ContentResolver f4113c;

    public v(Executor executor, e.f.c.f.h hVar, ContentResolver contentResolver) {
        super(executor, hVar);
        this.f4113c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        e.f.i.g.e a2;
        InputStream createInputStream;
        Uri p = bVar.p();
        if (!e.f.c.j.f.e(p)) {
            return (!e.f.c.j.f.d(p) || (a2 = a(p)) == null) ? b(this.f4113c.openInputStream(p), -1) : a2;
        }
        if (p.toString().endsWith("/photo")) {
            createInputStream = this.f4113c.openInputStream(p);
        } else if (p.toString().endsWith("/display_photo")) {
            try {
                createInputStream = this.f4113c.openAssetFileDescriptor(p, "r").createInputStream();
            } catch (IOException unused) {
                throw new IOException("Contact photo does not exist: " + p);
            }
        } else {
            InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.f4113c, p);
            if (openContactPhotoInputStream == null) {
                throw new IOException("Contact photo does not exist: " + p);
            }
            createInputStream = openContactPhotoInputStream;
        }
        return b(createInputStream, -1);
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "LocalContentUriFetchProducer";
    }

    @Nullable
    private e.f.i.g.e a(Uri uri) {
        Cursor query = this.f4113c.query(uri, f4112d, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            if (query.getCount() == 0) {
                return null;
            }
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("_data"));
            if (string != null) {
                return b(new FileInputStream(string), a(string));
            }
            return null;
        } finally {
            query.close();
        }
    }

    private static int a(String str) {
        if (str == null) {
            return -1;
        }
        return (int) new File(str).length();
    }
}
