package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.ContentObserver;
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
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: h, reason: collision with root package name */
    private static final ConcurrentHashMap<Uri, b> f11358h = new ConcurrentHashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private static final String[] f11359i = {"key", HummerConstants.VALUE};

    /* renamed from: a, reason: collision with root package name */
    private final ContentResolver f11360a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f11361b;

    /* renamed from: e, reason: collision with root package name */
    private volatile Map<String, String> f11364e;

    /* renamed from: d, reason: collision with root package name */
    private final Object f11363d = new Object();

    /* renamed from: f, reason: collision with root package name */
    private final Object f11365f = new Object();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("listenersLock")
    private final List<d> f11366g = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    private final ContentObserver f11362c = new c(this, null);

    private b(ContentResolver contentResolver, Uri uri) {
        this.f11360a = contentResolver;
        this.f11361b = uri;
    }

    public static b a(ContentResolver contentResolver, Uri uri) {
        b bVar = f11358h.get(uri);
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(contentResolver, uri);
        b putIfAbsent = f11358h.putIfAbsent(uri, bVar2);
        if (putIfAbsent != null) {
            return putIfAbsent;
        }
        bVar2.f11360a.registerContentObserver(bVar2.f11361b, false, bVar2.f11362c);
        return bVar2;
    }

    private final Map<String, String> c() {
        try {
            HashMap hashMap = new HashMap();
            Cursor query = this.f11360a.query(this.f11361b, f11359i, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        hashMap.put(query.getString(0), query.getString(1));
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
                query.close();
            }
            return hashMap;
        } catch (SQLiteException | SecurityException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        synchronized (this.f11365f) {
            Iterator<d> it = this.f11366g.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public final Map<String, String> a() {
        Map<String, String> c2 = e.a("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? c() : this.f11364e;
        if (c2 == null) {
            synchronized (this.f11363d) {
                c2 = this.f11364e;
                if (c2 == null) {
                    c2 = c();
                    this.f11364e = c2;
                }
            }
        }
        return c2 != null ? c2 : Collections.emptyMap();
    }

    public final void b() {
        synchronized (this.f11363d) {
            this.f11364e = null;
        }
    }
}
