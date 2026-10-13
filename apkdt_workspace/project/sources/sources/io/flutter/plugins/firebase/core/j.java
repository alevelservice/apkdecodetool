package io.flutter.plugins.firebase.core;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.firebase.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

/* compiled from: FlutterFirebaseCorePlugin.java */
/* loaded from: classes2.dex */
public class j implements io.flutter.embedding.engine.g.a, k.c {

    /* renamed from: e, reason: collision with root package name */
    private k f19415e;

    /* renamed from: f, reason: collision with root package name */
    private Context f19416f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f19417g = false;

    private e.i.b.b.d.h<Map<String, Object>> a(final com.google.firebase.c cVar) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.b(com.google.firebase.c.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Map b(com.google.firebase.c cVar) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        com.google.firebase.j d2 = cVar.d();
        hashMap2.put("apiKey", d2.a());
        hashMap2.put("appId", d2.b());
        if (d2.e() != null) {
            hashMap2.put("messagingSenderId", d2.e());
        }
        if (d2.f() != null) {
            hashMap2.put("projectId", d2.f());
        }
        if (d2.c() != null) {
            hashMap2.put("databaseURL", d2.c());
        }
        if (d2.g() != null) {
            hashMap2.put("storageBucket", d2.g());
        }
        if (d2.d() != null) {
            hashMap2.put("trackingId", d2.d());
        }
        hashMap.put("name", cVar.c());
        hashMap.put("options", hashMap2);
        hashMap.put("isAutomaticDataCollectionEnabled", Boolean.valueOf(cVar.f()));
        hashMap.put("pluginConstants", e.i.b.b.d.k.a((e.i.b.b.d.h) FlutterFirebasePluginRegistry.getPluginConstantsForFirebaseApp(cVar)));
        return hashMap;
    }

    private e.i.b.b.d.h<Map<String, Object>> c(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.this.a(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void d(Map map) {
        try {
            com.google.firebase.c.a((String) Objects.requireNonNull(map.get("appName"))).a();
            return null;
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void e(Map map) {
        String str = (String) Objects.requireNonNull(map.get("appName"));
        com.google.firebase.c.a(str).b(((Boolean) Objects.requireNonNull(map.get("enabled"))).booleanValue());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void f(Map map) {
        String str = (String) Objects.requireNonNull(map.get("appName"));
        com.google.firebase.c.a(str).a(((Boolean) Objects.requireNonNull(map.get("enabled"))).booleanValue());
        return null;
    }

    private e.i.b.b.d.h<Void> g(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.e(map);
            }
        });
    }

    private e.i.b.b.d.h<Void> h(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.f(map);
            }
        });
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        this.f19416f = bVar.a();
        this.f19415e = new k(bVar.b(), "plugins.flutter.io/firebase_core");
        this.f19415e.a(this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        this.f19415e.a((k.c) null);
        this.f19416f = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, @NonNull final k.d dVar) {
        char c2;
        e.i.b.b.d.h c3;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1428757205:
                if (str.equals("Firebase#initializeCore")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -746799097:
                if (str.equals("FirebaseApp#setAutomaticDataCollectionEnabled")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -738827499:
                if (str.equals("Firebase#initializeApp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 145005524:
                if (str.equals("FirebaseApp#delete")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1633364958:
                if (str.equals("FirebaseApp#setAutomaticResourceManagementEnabled")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            c3 = c((Map) jVar.a());
        } else if (c2 == 1) {
            c3 = b();
        } else if (c2 == 2) {
            c3 = g((Map) jVar.a());
        } else if (c2 == 3) {
            c3 = h((Map) jVar.a());
        } else {
            if (c2 != 4) {
                dVar.a();
                return;
            }
            c3 = b((Map<String, Object>) jVar.a());
        }
        c3.a(new e.i.b.b.d.c() { // from class: io.flutter.plugins.firebase.core.g
            @Override // e.i.b.b.d.c
            public final void a(e.i.b.b.d.h hVar) {
                j.a(k.d.this, hVar);
            }
        });
    }

    public /* synthetic */ Map a(Map map) {
        String str = (String) Objects.requireNonNull(map.get("appName"));
        Map map2 = (Map) Objects.requireNonNull(map.get("options"));
        j.b bVar = new j.b();
        bVar.a((String) Objects.requireNonNull(map2.get("apiKey")));
        bVar.b((String) Objects.requireNonNull(map2.get("appId")));
        bVar.c((String) map2.get("databaseURL"));
        bVar.e((String) map2.get("messagingSenderId"));
        bVar.f((String) map2.get("projectId"));
        bVar.g((String) map2.get("storageBucket"));
        bVar.d((String) map2.get("trackingId"));
        return (Map) e.i.b.b.d.k.a((e.i.b.b.d.h) a(com.google.firebase.c.a(this.f19416f, bVar.a(), str)));
    }

    public /* synthetic */ List a() {
        if (!this.f19417g) {
            this.f19417g = true;
        } else {
            e.i.b.b.d.k.a((e.i.b.b.d.h) FlutterFirebasePluginRegistry.didReinitializeFirebaseCore());
        }
        List<com.google.firebase.c> a2 = com.google.firebase.c.a(this.f19416f);
        ArrayList arrayList = new ArrayList(a2.size());
        Iterator<com.google.firebase.c> it = a2.iterator();
        while (it.hasNext()) {
            arrayList.add(e.i.b.b.d.k.a((e.i.b.b.d.h) a(it.next())));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(k.d dVar, e.i.b.b.d.h hVar) {
        if (hVar.e()) {
            dVar.a(hVar.b());
        } else {
            Exception a2 = hVar.a();
            dVar.a("firebase_core", a2 != null ? a2.getMessage() : null, null);
        }
    }

    private e.i.b.b.d.h<List<Map<String, Object>>> b() {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.this.a();
            }
        });
    }

    private e.i.b.b.d.h<Void> b(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.core.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return j.d(map);
            }
        });
    }
}
