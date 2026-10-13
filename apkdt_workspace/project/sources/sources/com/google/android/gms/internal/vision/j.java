package com.google.android.gms.internal.vision;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class j implements n {

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("ConfigurationContentLoader.class")
    private static final Map<Uri, j> f12399g = new a.e.a();

    /* renamed from: h, reason: collision with root package name */
    private static final String[] f12400h = {"key", HummerConstants.VALUE};

    /* renamed from: a, reason: collision with root package name */
    private final ContentResolver f12401a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f12402b;

    /* renamed from: e, reason: collision with root package name */
    private volatile Map<String, String> f12405e;

    /* renamed from: c, reason: collision with root package name */
    private final ContentObserver f12403c = new l(this, null);

    /* renamed from: d, reason: collision with root package name */
    private final Object f12404d = new Object();

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private final List<k> f12406f = new ArrayList();

    private j(ContentResolver contentResolver, Uri uri) {
        this.f12401a = contentResolver;
        this.f12402b = uri;
        contentResolver.registerContentObserver(uri, false, this.f12403c);
    }

    public static j a(ContentResolver contentResolver, Uri uri) {
        j jVar;
        synchronized (j.class) {
            jVar = f12399g.get(uri);
            if (jVar == null) {
                try {
                    j jVar2 = new j(contentResolver, uri);
                    try {
                        f12399g.put(uri, jVar2);
                    } catch (SecurityException unused) {
                    }
                    jVar = jVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return jVar;
    }

    private final Map<String, String> c() {
        Map<String, String> map = this.f12405e;
        if (map == null) {
            synchronized (this.f12404d) {
                map = this.f12405e;
                if (map == null) {
                    map = d();
                    this.f12405e = map;
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    private final Map<String, String> d() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Map<String, String> map = (Map) m.a(new p(this) { // from class: com.google.android.gms.internal.vision.i

                /* renamed from: a, reason: collision with root package name */
                private final j f12376a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12376a = this;
                }

                @Override // com.google.android.gms.internal.vision.p
                public final Object a() {
                    return this.f12376a.b();
                }
            });
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return map;
        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return null;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void e() {
        synchronized (j.class) {
            for (j jVar : f12399g.values()) {
                jVar.f12401a.unregisterContentObserver(jVar.f12403c);
            }
            f12399g.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map b() {
        Map hashMap;
        Cursor query = this.f12401a.query(this.f12402b, f12400h, null, null, null);
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

    @Override // com.google.android.gms.internal.vision.n
    public final /* synthetic */ Object zzb(String str) {
        return c().get(str);
    }

    public final void a() {
        synchronized (this.f12404d) {
            this.f12405e = null;
            x.c();
        }
        synchronized (this) {
            Iterator<k> it = this.f12406f.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }
}
