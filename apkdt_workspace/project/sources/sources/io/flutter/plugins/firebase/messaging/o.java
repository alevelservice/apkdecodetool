package io.flutter.plugins.firebase.messaging;

import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.RemoteMessage;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.e.a;
import io.flutter.view.FlutterCallbackInformation;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlutterFirebaseMessagingBackgroundExecutor.java */
/* loaded from: classes2.dex */
public class o implements k.c {

    /* renamed from: h, reason: collision with root package name */
    private static m.c f19463h;

    /* renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f19464e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    private g.a.c.a.k f19465f;

    /* renamed from: g, reason: collision with root package name */
    private io.flutter.embedding.engine.a f19466g;

    /* compiled from: FlutterFirebaseMessagingBackgroundExecutor.java */
    /* loaded from: classes2.dex */
    class a implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f19467a;

        a(o oVar, CountDownLatch countDownLatch) {
            this.f19467a = countDownLatch;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            this.f19467a.countDown();
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            this.f19467a.countDown();
        }

        @Override // g.a.c.a.k.d
        public void a() {
            this.f19467a.countDown();
        }
    }

    /* compiled from: FlutterFirebaseMessagingBackgroundExecutor.java */
    /* loaded from: classes2.dex */
    class b extends HashMap<String, Object> {
        final /* synthetic */ Map val$remoteMessageMap;

        b(Map map) {
            this.val$remoteMessageMap = map;
            put("userCallbackHandle", Long.valueOf(o.this.e()));
            put("message", this.val$remoteMessageMap);
        }
    }

    private long d() {
        return n.a().getSharedPreferences("io.flutter.firebase.messaging.callback", 0).getLong("callback_handle", 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long e() {
        return n.a().getSharedPreferences("io.flutter.firebase.messaging.callback", 0).getLong("user_callback_handle", 0L);
    }

    private void f() {
        this.f19464e.set(true);
        FlutterFirebaseMessagingBackgroundService.onInitialized();
    }

    public boolean b() {
        return !this.f19464e.get();
    }

    public void c() {
        if (b()) {
            long d2 = d();
            if (d2 != 0) {
                a(d2, (io.flutter.embedding.engine.d) null);
            }
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, @NonNull k.d dVar) {
        try {
            if (jVar.f18223a.equals("MessagingBackground#initialized")) {
                f();
                dVar.a(true);
            } else {
                dVar.a();
            }
        } catch (t e2) {
            dVar.a(HummerConstants.HUMMER_ERROR, "Flutter FCM error: " + e2.getMessage(), null);
        }
    }

    public static void a(m.c cVar) {
        f19463h = cVar;
    }

    public static void b(long j2) {
        n.a().getSharedPreferences("io.flutter.firebase.messaging.callback", 0).edit().putLong("user_callback_handle", j2).apply();
    }

    public static void a(long j2) {
        n.a().getSharedPreferences("io.flutter.firebase.messaging.callback", 0).edit().putLong("callback_handle", j2).apply();
    }

    public void a(final long j2, final io.flutter.embedding.engine.d dVar) {
        if (this.f19466g != null) {
            return;
        }
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.a
            @Override // java.lang.Runnable
            public final void run() {
                o.this.a(handler, dVar, j2);
            }
        });
    }

    public /* synthetic */ void a(Handler handler, final io.flutter.embedding.engine.d dVar, final long j2) {
        io.flutter.view.d.a(n.a());
        io.flutter.view.d.a(n.a(), null, handler, new Runnable() { // from class: io.flutter.plugins.firebase.messaging.b
            @Override // java.lang.Runnable
            public final void run() {
                o.this.a(dVar, j2);
            }
        });
    }

    public /* synthetic */ void a(io.flutter.embedding.engine.d dVar, long j2) {
        String a2 = io.flutter.view.d.a();
        AssetManager assets = n.a().getAssets();
        if (b()) {
            if (dVar != null) {
                String str = "Creating background FlutterEngine instance, with args: " + Arrays.toString(dVar.a());
                this.f19466g = new io.flutter.embedding.engine.a(n.a(), dVar.a());
            } else {
                this.f19466g = new io.flutter.embedding.engine.a(n.a());
            }
            FlutterCallbackInformation lookupCallbackInformation = FlutterCallbackInformation.lookupCallbackInformation(j2);
            io.flutter.embedding.engine.e.a d2 = this.f19466g.d();
            a(d2);
            d2.a(new a.b(assets, a2, lookupCallbackInformation));
            m.c cVar = f19463h;
            if (cVar != null) {
                cVar.a(new io.flutter.embedding.engine.g.g.a(this.f19466g));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return d() != 0;
    }

    public void a(Intent intent, CountDownLatch countDownLatch) {
        if (this.f19466g == null) {
            return;
        }
        a aVar = countDownLatch != null ? new a(this, countDownLatch) : null;
        RemoteMessage remoteMessage = (RemoteMessage) intent.getParcelableExtra("notification");
        if (remoteMessage != null) {
            this.f19465f.a("MessagingBackground#onMessage", new b(s.a(remoteMessage)), aVar);
        }
    }

    private void a(g.a.c.a.c cVar) {
        this.f19465f = new g.a.c.a.k(cVar, "plugins.flutter.io/firebase_messaging_background");
        this.f19465f.a(this);
    }
}
