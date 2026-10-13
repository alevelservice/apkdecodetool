package io.flutter.plugins.firebase.messaging;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import io.flutter.plugins.firebase.core.FlutterFirebasePlugin;
import io.flutter.plugins.firebase.core.FlutterFirebasePluginRegistry;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingPlugin extends BroadcastReceiver implements FlutterFirebasePlugin, k.c, m.b, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: e, reason: collision with root package name */
    private final HashMap<String, Boolean> f19436e = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private g.a.c.a.k f19437f;

    /* renamed from: g, reason: collision with root package name */
    private Activity f19438g;

    /* renamed from: h, reason: collision with root package name */
    private RemoteMessage f19439h;

    private void a(g.a.c.a.c cVar) {
        this.f19437f = new g.a.c.a.k(cVar, "plugins.flutter.io/firebase_messaging");
        this.f19437f.a(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("io.flutter.plugins.firebase.messaging.TOKEN");
        intentFilter.addAction("io.flutter.plugins.firebase.messaging.NOTIFICATION");
        a.n.a.a.a(n.a()).a(this, intentFilter);
        FlutterFirebasePluginRegistry.registerPlugin("plugins.flutter.io/firebase_messaging", this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void b() {
        return null;
    }

    private e.i.b.b.d.h<Void> c(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.f(map);
            }
        });
    }

    private e.i.b.b.d.h<Map<String, Object>> d(Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.this.a();
            }
        });
    }

    private e.i.b.b.d.h<Map<String, Object>> e(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.this.a(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void f(Map map) {
        String a2;
        if (map.get("senderId") != null) {
            a2 = (String) map.get("senderId");
        } else {
            a2 = com.google.firebase.iid.r.a(com.google.firebase.c.k());
        }
        FirebaseInstanceId.k().a(a2, "*");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void g(Map map) {
        s.a((Map<String, Object>) map).a(s.b(map));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void h(Map map) {
        e.i.b.b.d.k.a((e.i.b.b.d.h) s.a((Map<String, Object>) map).a((String) Objects.requireNonNull(map.get("topic"))));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Void i(Map map) {
        e.i.b.b.d.k.a((e.i.b.b.d.h) s.a((Map<String, Object>) map).b((String) Objects.requireNonNull(map.get("topic"))));
        return null;
    }

    private e.i.b.b.d.h<Void> j(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.g
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.g(map);
            }
        });
    }

    private e.i.b.b.d.h<Map<String, Object>> k(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.this.b(map);
            }
        });
    }

    private e.i.b.b.d.h<Void> l(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.h(map);
            }
        });
    }

    private e.i.b.b.d.h<Void> m(final Map<String, Object> map) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.i(map);
            }
        });
    }

    public static void registerWith(m.d dVar) {
        FlutterFirebaseMessagingPlugin flutterFirebaseMessagingPlugin = new FlutterFirebaseMessagingPlugin();
        flutterFirebaseMessagingPlugin.a(dVar.b());
        dVar.a(flutterFirebaseMessagingPlugin);
        flutterFirebaseMessagingPlugin.a(dVar.d());
    }

    public /* synthetic */ Map b(Map map) {
        FirebaseMessaging a2 = s.a((Map<String, Object>) map);
        a2.a(((Boolean) Objects.requireNonNull(map.get("enabled"))).booleanValue());
        return new q(this, a2);
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public e.i.b.b.d.h<Void> didReinitializeFirebaseCore() {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.b();
            }
        });
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public e.i.b.b.d.h<Map<String, Object>> getPluginConstantsForFirebaseApp(com.google.firebase.c cVar) {
        return e.i.b.b.d.k.a(FlutterFirebasePlugin.cachedThreadPool, new Callable() { // from class: io.flutter.plugins.firebase.messaging.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return FlutterFirebaseMessagingPlugin.c();
            }
        });
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        cVar.a(this);
        this.f19438g = cVar.getActivity();
        if (this.f19438g.getIntent() == null || this.f19438g.getIntent().getExtras() == null || (this.f19438g.getIntent().getFlags() & 1048576) == 1048576) {
            return;
        }
        onNewIntent(this.f19438g.getIntent());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.f19438g = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        this.f19438g = null;
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        a.n.a.a.a(n.a()).a(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, @NonNull final k.d dVar) {
        char c2;
        long longValue;
        long longValue2;
        e.i.b.b.d.h a2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1704007366:
                if (str.equals("Messaging#getInitialMessage")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1661255137:
                if (str.equals("Messaging#setAutoInitEnabled")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -657665041:
                if (str.equals("Messaging#deleteToken")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 421314579:
                if (str.equals("Messaging#unsubscribeFromTopic")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 506322569:
                if (str.equals("Messaging#subscribeToTopic")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 928431066:
                if (str.equals("Messaging#startBackgroundIsolate")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1165917248:
                if (str.equals("Messaging#sendMessage")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1459336962:
                if (str.equals("Messaging#getToken")) {
                    c2 = 3;
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
                Map map = (Map) jVar.f18224b;
                Object obj = map.get("pluginCallbackHandle");
                Object obj2 = map.get("userCallbackHandle");
                if (obj instanceof Long) {
                    longValue = ((Long) obj).longValue();
                } else {
                    longValue = Long.valueOf(((Integer) obj).intValue()).longValue();
                }
                if (obj2 instanceof Long) {
                    longValue2 = ((Long) obj2).longValue();
                } else {
                    longValue2 = Long.valueOf(((Integer) obj2).intValue()).longValue();
                }
                Activity activity = this.f19438g;
                io.flutter.embedding.engine.d a3 = activity != null ? io.flutter.embedding.engine.d.a(activity.getIntent()) : null;
                FlutterFirebaseMessagingBackgroundService.setCallbackDispatcher(longValue);
                FlutterFirebaseMessagingBackgroundService.setUserCallbackHandle(longValue2);
                FlutterFirebaseMessagingBackgroundService.startBackgroundIsolate(longValue, a3);
                a2 = e.i.b.b.d.k.a((Object) null);
                break;
            case 1:
                a2 = d((Map) jVar.a());
                break;
            case 2:
                a2 = c((Map) jVar.a());
                break;
            case 3:
                a2 = e((Map) jVar.a());
                break;
            case 4:
                a2 = l((Map) jVar.a());
                break;
            case 5:
                a2 = m((Map) jVar.a());
                break;
            case 6:
                a2 = j((Map) jVar.a());
                break;
            case 7:
                a2 = k((Map) jVar.a());
                break;
            default:
                dVar.a();
                return;
        }
        a2.a(new e.i.b.b.d.c() { // from class: io.flutter.plugins.firebase.messaging.d
            @Override // e.i.b.b.d.c
            public final void a(e.i.b.b.d.h hVar) {
                FlutterFirebaseMessagingPlugin.this.a(dVar, hVar);
            }
        });
    }

    @Override // g.a.c.a.m.b
    public boolean onNewIntent(Intent intent) {
        if (intent == null || intent.getExtras() == null) {
            return false;
        }
        String string = intent.getExtras().getString("google.message_id");
        if (string == null) {
            string = intent.getExtras().getString("message_id");
        }
        if (string == null) {
            return false;
        }
        RemoteMessage remoteMessage = FlutterFirebaseMessagingReceiver.notifications.get(string);
        if (remoteMessage == null) {
            remoteMessage = r.a().a(string);
        }
        if (remoteMessage == null) {
            return false;
        }
        this.f19439h = remoteMessage;
        FlutterFirebaseMessagingReceiver.notifications.remove(string);
        this.f19437f.a("Messaging#onMessageOpenedApp", s.a(remoteMessage));
        this.f19438g.setIntent(intent);
        return true;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        cVar.a(this);
        this.f19438g = cVar.getActivity();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        RemoteMessage remoteMessage;
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        if (action.equals("io.flutter.plugins.firebase.messaging.TOKEN")) {
            this.f19437f.a("Messaging#onTokenRefresh", intent.getStringExtra("token"));
        } else {
            if (!action.equals("io.flutter.plugins.firebase.messaging.NOTIFICATION") || (remoteMessage = (RemoteMessage) intent.getParcelableExtra("notification")) == null) {
                return;
            }
            this.f19437f.a("Messaging#onMessage", s.a(remoteMessage));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Map c() {
        HashMap hashMap = new HashMap();
        hashMap.put("AUTO_INIT_ENABLED", Boolean.valueOf(FirebaseMessaging.b().a()));
        return hashMap;
    }

    private void a(Context context, g.a.c.a.c cVar) {
        a(cVar);
    }

    private void a(Activity activity) {
        this.f19438g = activity;
    }

    public /* synthetic */ Map a(Map map) {
        String a2;
        if (map.get("senderId") != null) {
            a2 = (String) map.get("senderId");
        } else {
            a2 = com.google.firebase.iid.r.a(com.google.firebase.c.k());
        }
        return new p(this, FirebaseInstanceId.k().b(a2, "*"));
    }

    public /* synthetic */ Map a() {
        Intent intent;
        RemoteMessage remoteMessage = this.f19439h;
        if (remoteMessage != null) {
            Map<String, Object> a2 = s.a(remoteMessage);
            this.f19439h = null;
            return a2;
        }
        Activity activity = this.f19438g;
        if (activity != null && (intent = activity.getIntent()) != null && intent.getExtras() != null) {
            String string = intent.getExtras().getString("google.message_id");
            if (string == null) {
                string = intent.getExtras().getString("message_id");
            }
            if (string != null && this.f19436e.get(string) == null) {
                RemoteMessage remoteMessage2 = FlutterFirebaseMessagingReceiver.notifications.get(string);
                if (remoteMessage2 == null) {
                    remoteMessage2 = r.a().a(string);
                    r.a().b(string);
                }
                if (remoteMessage2 == null) {
                    return null;
                }
                this.f19436e.put(string, true);
                return s.a(remoteMessage2);
            }
        }
        return null;
    }

    public /* synthetic */ void a(k.d dVar, e.i.b.b.d.h hVar) {
        if (hVar.e()) {
            dVar.a(hVar.b());
        } else {
            Exception a2 = hVar.a();
            dVar.a("firebase_messaging", a2 != null ? a2.getMessage() : null, a(a2));
        }
    }

    private Map<String, Object> a(@Nullable Exception exc) {
        HashMap hashMap = new HashMap();
        hashMap.put(HummerConstants.CODE, "unknown");
        if (exc != null) {
            hashMap.put("message", exc.getMessage());
        } else {
            hashMap.put("message", "An unknown error has occurred.");
        }
        hashMap.put("additionalData", new HashMap());
        return hashMap;
    }
}
