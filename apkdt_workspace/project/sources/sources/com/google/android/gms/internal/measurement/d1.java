package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import androidx.annotation.GuardedBy;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class d1 implements h1 {

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("ConfigurationContentLoader.class")
    static final Map<Uri, d1> f11810f = new a.e.a();

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f11811g = {"key", HummerConstants.VALUE};

    /* renamed from: a, reason: collision with root package name */
    private final ContentResolver f11812a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f11813b;

    /* renamed from: d, reason: collision with root package name */
    private volatile Map<String, String> f11815d;

    /* renamed from: c, reason: collision with root package name */
    private final Object f11814c = new Object();

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final List<i1> f11816e = new ArrayList();

    private d1(ContentResolver contentResolver, Uri uri) {
        this.f11812a = contentResolver;
        this.f11813b = uri;
        this.f11812a.registerContentObserver(uri, false, new f1(this, null));
    }

    public static d1 a(ContentResolver contentResolver, Uri uri) {
        d1 d1Var;
        synchronized (d1.class) {
            d1Var = f11810f.get(uri);
            if (d1Var == null) {
                try {
                    d1 d1Var2 = new d1(contentResolver, uri);
                    try {
                        f11810f.put(uri, d1Var2);
                    } catch (SecurityException unused) {
                    }
                    d1Var = d1Var2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return d1Var;
    }

    private final Map<String, String> d() {
        try {
            return (Map) k1.a(new j1(this) { // from class: com.google.android.gms.internal.measurement.g1

                /* renamed from: a, reason: collision with root package name */
                private final d1 f11864a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11864a = this;
                }

                @Override // com.google.android.gms.internal.measurement.j1
                public final Object a() {
                    return this.f11864a.c();
                }
            });
        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
            return null;
        }
    }

    public final void b() {
        synchronized (this.f11814c) {
            this.f11815d = null;
            p1.c();
        }
        synchronized (this) {
            Iterator<i1> it = this.f11816e.iterator();
            while (it.hasNext()) {
                it.next().zzrk();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map c() {
        Map hashMap;
        Cursor query = this.f11812a.query(this.f11813b, f11811g, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                hashMap = new a.e.a(count);
            } else {
                hashMap = new HashMap(count, 1.0f);
            }
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    public final Map<String, String> a() {
        Map<String, String> map = this.f11815d;
        if (map == null) {
            synchronized (this.f11814c) {
                map = this.f11815d;
                if (map == null) {
                    map = d();
                    this.f11815d = map;
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.measurement.h1
    public final /* synthetic */ Object a(String str) {
        return a().get(str);
    }
}
