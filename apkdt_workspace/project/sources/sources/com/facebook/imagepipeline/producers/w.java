package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: LocalContentUriThumbnailFetchProducer.java */
/* loaded from: classes.dex */
public class w extends y implements u0<e.f.i.g.e> {

    /* renamed from: d, reason: collision with root package name */
    private static final Class<?> f4114d = w.class;

    /* renamed from: e, reason: collision with root package name */
    private static final String[] f4115e = {"_id", "_data"};

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f4116f = {"_data"};

    /* renamed from: g, reason: collision with root package name */
    private static final Rect f4117g = new Rect(0, 0, 512, 384);

    /* renamed from: h, reason: collision with root package name */
    private static final Rect f4118h = new Rect(0, 0, 96, 96);

    /* renamed from: c, reason: collision with root package name */
    private final ContentResolver f4119c;

    public w(Executor executor, e.f.c.f.h hVar, ContentResolver contentResolver) {
        super(executor, hVar);
        this.f4119c = contentResolver;
    }

    private static int b(com.facebook.imagepipeline.common.e eVar) {
        if (v0.a(f4118h.width(), f4118h.height(), eVar)) {
            return 3;
        }
        return v0.a(f4117g.width(), f4117g.height(), eVar) ? 1 : 0;
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "LocalContentUriThumbnailFetchProducer";
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public boolean a(com.facebook.imagepipeline.common.e eVar) {
        return v0.a(f4117g.width(), f4117g.height(), eVar);
    }

    @Override // com.facebook.imagepipeline.producers.y
    @Nullable
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        e.f.i.g.e a2;
        Uri p = bVar.p();
        if (!e.f.c.j.f.d(p) || (a2 = a(p, bVar.l())) == null) {
            return null;
        }
        return a2;
    }

    @Nullable
    private e.f.i.g.e a(Uri uri, com.facebook.imagepipeline.common.e eVar) {
        e.f.i.g.e a2;
        Cursor query = this.f4119c.query(uri, f4115e, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            if (query.getCount() == 0) {
                return null;
            }
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("_data"));
            if (eVar == null || (a2 = a(eVar, query.getInt(query.getColumnIndex("_id")))) == null) {
                return null;
            }
            a2.g(b(string));
            return a2;
        } finally {
            query.close();
        }
    }

    private static int b(String str) {
        if (str != null) {
            try {
                return com.facebook.imageutils.c.a(new ExifInterface(str).getAttributeInt("Orientation", 1));
            } catch (IOException e2) {
                e.f.c.d.a.a(f4114d, e2, "Unable to retrieve thumbnail rotation for %s", str);
            }
        }
        return 0;
    }

    @Nullable
    private e.f.i.g.e a(com.facebook.imagepipeline.common.e eVar, int i2) {
        Cursor cursor;
        int b2 = b(eVar);
        if (b2 == 0) {
            return null;
        }
        try {
            cursor = MediaStore.Images.Thumbnails.queryMiniThumbnail(this.f4119c, i2, b2, f4116f);
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            try {
                cursor.moveToFirst();
                if (cursor.getCount() > 0) {
                    String string = cursor.getString(cursor.getColumnIndex("_data"));
                    if (new File(string).exists()) {
                        e.f.i.g.e b3 = b(new FileInputStream(string), a(string));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return b3;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private static int a(String str) {
        if (str == null) {
            return -1;
        }
        return (int) new File(str).length();
    }
}
