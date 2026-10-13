package io.flutter.plugins.firebase.crashlytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import io.flutter.plugins.firebase.core.FlutterFirebasePlugin;
import io.flutter.plugins.firebase.core.FlutterFirebasePluginRegistry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

/* compiled from: FlutterFirebaseCrashlyticsPlugin.java */
/* loaded from: classes2.dex */
public class r implements FlutterFirebasePlugin, io.flutter.embedding.engine.g.a, k.c {

    /* renamed from: e, reason: collision with root package name */
    private g.a.c.a.k f19433e;

    private StackTraceElement c(Map<String, String> map) {
        try {
            String str = map.get("file");
            String str2 = map.get("line");
            String str3 = map.get("class");
            String str4 = map.get("method");
            if (str3 == null) {
                str3 = "";
            }
            return new StackTraceElement(str3, str4, str, Integer.parseInt((String) Objects.requireNonNull(str2)));
        } catch (Exception unused) {
            return null;
        }
    }

    private e.i.b.b.d.h<Map<String, Object>> d() {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.this.a();
            }
        });
    }

    private void e() {
        new Handler().postDelayed(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.d
            @Override // java.lang.Runnable
            public final void run() {
                r.h();
                throw null;
            }
        }, 50L);
    }

    private e.i.b.b.d.h<Void> f() {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.i();
            }
        });
    }

    private e.i.b.b.d.h<Map<String, Object>> g() {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h() {
        throw new FirebaseCrashlyticsTestCrash();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void i() {
        com.google.firebase.crashlytics.c.e().b();
        return null;
    }

    private e.i.b.b.d.h<Void> j(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.e(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void j() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void k() {
        com.google.firebase.crashlytics.c.e().d();
        return null;
    }

    private e.i.b.b.d.h<Void> l() {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.k();
            }
        });
    }

    public /* synthetic */ Map b() {
        return new o(this, com.google.firebase.crashlytics.c.e().c());
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public e.i.b.b.d.h<Void> didReinitializeFirebaseCore() {
        return e.i.b.b.d.k.a((Callable) new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.j();
            }
        });
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public e.i.b.b.d.h<Map<String, Object>> getPluginConstantsForFirebaseApp(com.google.firebase.c cVar) {
        return e.i.b.b.d.k.a(new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.this.c();
            }
        });
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        g.a.c.a.k kVar = this.f19433e;
        if (kVar != null) {
            kVar.a((k.c) null);
            this.f19433e = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, @NonNull final k.d dVar) {
        char c2;
        e.i.b.b.d.h d2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -2094964816:
                if (str.equals("Crashlytics#didCrashOnPreviousExecution")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1437158995:
                if (str.equals("Crashlytics#recordError")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1025128541:
                if (str.equals("Crashlytics#checkForUnsentReports")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -424770276:
                if (str.equals("Crashlytics#sendUnsentReports")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -108157790:
                if (str.equals("Crashlytics#setCrashlyticsCollectionEnabled")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 28093114:
                if (str.equals("Crashlytics#log")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 108415030:
                if (str.equals("Crashlytics#setCustomKey")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 213629529:
                if (str.equals("Crashlytics#deleteUnsentReports")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 679831756:
                if (str.equals("Crashlytics#setUserIdentifier")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1219454365:
                if (str.equals("Crashlytics#crash")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                d2 = d();
                break;
            case 1:
                e();
                return;
            case 2:
                d2 = f();
                break;
            case 3:
                d2 = g();
                break;
            case 4:
                d2 = h((Map) jVar.a());
                break;
            case 5:
                d2 = g((Map) jVar.a());
                break;
            case 6:
                d2 = l();
                break;
            case 7:
                d2 = i((Map) jVar.a());
                break;
            case '\b':
                d2 = k((Map) jVar.a());
                break;
            case '\t':
                d2 = j((Map) jVar.a());
                break;
            default:
                dVar.a();
                return;
        }
        d2.a(new e.i.b.b.d.c() { // from class: io.flutter.plugins.firebase.crashlytics.f
            @Override // e.i.b.b.d.c
            public final void a(e.i.b.b.d.h hVar) {
                r.a(k.d.this, hVar);
            }
        });
    }

    private void a(g.a.c.a.c cVar) {
        this.f19433e = new g.a.c.a.k(cVar, "plugins.flutter.io/firebase_crashlytics");
        this.f19433e.a(this);
        FlutterFirebasePluginRegistry.registerPlugin("plugins.flutter.io/firebase_crashlytics", this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void d(Map map) {
        com.google.firebase.crashlytics.c.e().a((String) Objects.requireNonNull(map.get("message")));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void f(Map map) {
        com.google.firebase.crashlytics.c.e().b((String) Objects.requireNonNull(map.get("identifier")));
        return null;
    }

    private e.i.b.b.d.h<Void> g(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.d(map);
            }
        });
    }

    private e.i.b.b.d.h<Void> h(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.g
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.this.a(map);
            }
        });
    }

    private e.i.b.b.d.h<Map<String, Object>> i(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.this.b(map);
            }
        });
    }

    private e.i.b.b.d.h<Void> k(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.crashlytics.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return r.f(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void e(Map map) {
        com.google.firebase.crashlytics.c.e().a((String) Objects.requireNonNull(map.get("key")), (String) Objects.requireNonNull(map.get(HummerConstants.VALUE)));
        return null;
    }

    public /* synthetic */ Map b(Map map) {
        com.google.firebase.crashlytics.c.e().a((Boolean) Objects.requireNonNull(map.get("enabled")));
        return new p(this);
    }

    public /* synthetic */ Map a() {
        return new n(this, ((Boolean) e.i.b.b.d.k.a((e.i.b.b.d.h) com.google.firebase.crashlytics.c.e().a())).booleanValue());
    }

    public /* synthetic */ Void a(Map map) {
        FlutterError flutterError;
        com.google.firebase.crashlytics.c e2 = com.google.firebase.crashlytics.c.e();
        String str = (String) Objects.requireNonNull(map.get(HummerConstants.NORMAL_EXCEPTION));
        String str2 = (String) map.get(ZdocRecordService.REASON);
        String str3 = (String) Objects.requireNonNull(map.get("information"));
        if (str2 != null) {
            e2.a("flutter_error_reason", "thrown " + str2);
            flutterError = new FlutterError(str + ". Error thrown " + str2 + ".");
        } else {
            flutterError = new FlutterError(str);
        }
        e2.a("flutter_error_exception", str);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) Objects.requireNonNull(map.get("stackTraceElements"))).iterator();
        while (it.hasNext()) {
            StackTraceElement c2 = c((Map) it.next());
            if (c2 != null) {
                arrayList.add(c2);
            }
        }
        flutterError.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
        if (!str3.isEmpty()) {
            e2.a(str3);
        }
        e2.a(flutterError);
        return null;
    }

    public /* synthetic */ Map c() {
        return new q(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(k.d dVar, e.i.b.b.d.h hVar) {
        if (hVar.e()) {
            dVar.a(hVar.b());
        } else {
            Exception a2 = hVar.a();
            dVar.a("firebase_crashlytics", a2 != null ? a2.getMessage() : "An unknown error occurred", null);
        }
    }

    private SharedPreferences a(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(com.google.firebase.c cVar) {
        SharedPreferences a2 = a(cVar.b());
        if (a2.contains("firebase_crashlytics_collection_enabled")) {
            return a2.getBoolean("firebase_crashlytics_collection_enabled", true);
        }
        if (!cVar.f()) {
            return false;
        }
        com.google.firebase.crashlytics.c.e().a(true);
        return true;
    }
}
