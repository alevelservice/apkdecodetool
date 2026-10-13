package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public class FirebaseMessaging {

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SuppressLint({"FirebaseUnknownNullness"})
    @VisibleForTesting
    static e.i.b.a.g f15175g;

    /* renamed from: a, reason: collision with root package name */
    private final Context f15176a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.c f15177b;

    /* renamed from: c, reason: collision with root package name */
    private final FirebaseInstanceId f15178c;

    /* renamed from: d, reason: collision with root package name */
    private final a f15179d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f15180e;

    /* renamed from: f, reason: collision with root package name */
    private final e.i.b.b.d.h<d0> f15181f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseMessaging(com.google.firebase.c cVar, final FirebaseInstanceId firebaseInstanceId, com.google.firebase.p.b<com.google.firebase.r.i> bVar, com.google.firebase.p.b<com.google.firebase.o.f> bVar2, com.google.firebase.installations.g gVar, @Nullable e.i.b.a.g gVar2, com.google.firebase.n.d dVar) {
        try {
            Class.forName("com.google.firebase.iid.FirebaseInstanceIdReceiver");
            f15175g = gVar2;
            this.f15177b = cVar;
            this.f15178c = firebaseInstanceId;
            this.f15179d = new a(dVar);
            this.f15176a = cVar.b();
            this.f15180e = g.a();
            this.f15180e.execute(new Runnable(this, firebaseInstanceId) { // from class: com.google.firebase.messaging.h

                /* renamed from: e, reason: collision with root package name */
                private final FirebaseMessaging f15251e;

                /* renamed from: f, reason: collision with root package name */
                private final FirebaseInstanceId f15252f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f15251e = this;
                    this.f15252f = firebaseInstanceId;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f15251e.a(this.f15252f);
                }
            });
            this.f15181f = d0.a(cVar, firebaseInstanceId, new com.google.firebase.iid.r(this.f15176a), bVar, bVar2, gVar, this.f15176a, g.d());
            this.f15181f.a(g.e(), new e.i.b.b.d.e(this) { // from class: com.google.firebase.messaging.i

                /* renamed from: a, reason: collision with root package name */
                private final FirebaseMessaging f15253a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f15253a = this;
                }

                @Override // e.i.b.b.d.e
                public void a(Object obj) {
                    this.f15253a.a((d0) obj);
                }
            });
        } catch (ClassNotFoundException unused) {
            throw new IllegalStateException("FirebaseMessaging and FirebaseInstanceId versions not compatible. Update to latest version of firebase-messaging.");
        }
    }

    @NonNull
    public static synchronized FirebaseMessaging b() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = getInstance(com.google.firebase.c.k());
        }
        return firebaseMessaging;
    }

    @Nullable
    public static e.i.b.a.g c() {
        return f15175g;
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull com.google.firebase.c cVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) cVar.a(FirebaseMessaging.class);
            com.google.android.gms.common.internal.m.a(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(FirebaseInstanceId firebaseInstanceId) {
        if (this.f15179d.b()) {
            firebaseInstanceId.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(d0 d0Var) {
        if (a()) {
            d0Var.c();
        }
    }

    public boolean a() {
        return this.f15179d.b();
    }

    public void a(@NonNull RemoteMessage remoteMessage) {
        if (!TextUtils.isEmpty(remoteMessage.r())) {
            Intent intent = new Intent("com.google.android.gcm.intent.SEND");
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            intent.putExtra("app", PendingIntent.getBroadcast(this.f15176a, 0, intent2, 0));
            intent.setPackage("com.google.android.gms");
            remoteMessage.a(intent);
            this.f15176a.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
            return;
        }
        throw new IllegalArgumentException("Missing 'to'");
    }

    @NonNull
    public e.i.b.b.d.h<Void> b(@NonNull final String str) {
        return this.f15181f.a(new e.i.b.b.d.g(str) { // from class: com.google.firebase.messaging.k

            /* renamed from: a, reason: collision with root package name */
            private final String f15255a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15255a = str;
            }

            @Override // e.i.b.b.d.g
            public e.i.b.b.d.h a(Object obj) {
                e.i.b.b.d.h b2;
                b2 = ((d0) obj).b(this.f15255a);
                return b2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        private final com.google.firebase.n.d f15182a;

        /* renamed from: b, reason: collision with root package name */
        @GuardedBy("this")
        private boolean f15183b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        @GuardedBy("this")
        private com.google.firebase.n.b<com.google.firebase.a> f15184c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        @GuardedBy("this")
        private Boolean f15185d;

        a(com.google.firebase.n.d dVar) {
            this.f15182a = dVar;
        }

        @Nullable
        private Boolean e() {
            ApplicationInfo applicationInfo;
            Context b2 = FirebaseMessaging.this.f15177b.b();
            SharedPreferences sharedPreferences = b2.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = b2.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(b2.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void a() {
            if (this.f15183b) {
                return;
            }
            this.f15185d = e();
            if (this.f15185d == null) {
                this.f15184c = new com.google.firebase.n.b(this) { // from class: com.google.firebase.messaging.l

                    /* renamed from: a, reason: collision with root package name */
                    private final FirebaseMessaging.a f15256a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f15256a = this;
                    }

                    @Override // com.google.firebase.n.b
                    public void a(com.google.firebase.n.a aVar) {
                        this.f15256a.a(aVar);
                    }
                };
                this.f15182a.a(com.google.firebase.a.class, this.f15184c);
            }
            this.f15183b = true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void a(com.google.firebase.n.a aVar) {
            if (b()) {
                FirebaseMessaging.this.f15180e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.n

                    /* renamed from: e, reason: collision with root package name */
                    private final FirebaseMessaging.a f15258e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f15258e = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f15258e.c();
                    }
                });
            }
        }

        synchronized boolean b() {
            boolean f2;
            a();
            Boolean bool = this.f15185d;
            if (bool != null) {
                f2 = bool.booleanValue();
            } else {
                f2 = FirebaseMessaging.this.f15177b.f();
            }
            return f2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void c() {
            FirebaseMessaging.this.f15178c.f();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void d() {
            FirebaseMessaging.this.f15178c.f();
        }

        synchronized void a(boolean z) {
            a();
            com.google.firebase.n.b<com.google.firebase.a> bVar = this.f15184c;
            if (bVar != null) {
                this.f15182a.b(com.google.firebase.a.class, bVar);
                this.f15184c = null;
            }
            SharedPreferences.Editor edit = FirebaseMessaging.this.f15177b.b().getSharedPreferences("com.google.firebase.messaging", 0).edit();
            edit.putBoolean("auto_init", z);
            edit.apply();
            if (z) {
                FirebaseMessaging.this.f15180e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.m

                    /* renamed from: e, reason: collision with root package name */
                    private final FirebaseMessaging.a f15257e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f15257e = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f15257e.d();
                    }
                });
            }
            this.f15185d = Boolean.valueOf(z);
        }
    }

    public void a(boolean z) {
        this.f15179d.a(z);
    }

    @NonNull
    public e.i.b.b.d.h<Void> a(@NonNull final String str) {
        return this.f15181f.a(new e.i.b.b.d.g(str) { // from class: com.google.firebase.messaging.j

            /* renamed from: a, reason: collision with root package name */
            private final String f15254a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15254a = str;
            }

            @Override // e.i.b.b.d.g
            public e.i.b.b.d.h a(Object obj) {
                e.i.b.b.d.h a2;
                a2 = ((d0) obj).a(this.f15254a);
                return a2;
            }
        });
    }
}
