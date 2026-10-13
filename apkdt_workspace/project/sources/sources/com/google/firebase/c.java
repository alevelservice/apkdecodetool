package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.o;
import com.google.android.gms.common.util.q;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.n;
import com.google.firebase.components.w;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: FirebaseApp.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: j, reason: collision with root package name */
    private static final Object f14277j = new Object();

    /* renamed from: k, reason: collision with root package name */
    private static final Executor f14278k = new d();

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("LOCK")
    static final Map<String, c> f14279l = new a.e.a();

    /* renamed from: a, reason: collision with root package name */
    private final Context f14280a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14281b;

    /* renamed from: c, reason: collision with root package name */
    private final j f14282c;

    /* renamed from: d, reason: collision with root package name */
    private final n f14283d;

    /* renamed from: g, reason: collision with root package name */
    private final w<com.google.firebase.q.a> f14286g;

    /* renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f14284e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f14285f = new AtomicBoolean();

    /* renamed from: h, reason: collision with root package name */
    private final List<b> f14287h = new CopyOnWriteArrayList();

    /* renamed from: i, reason: collision with root package name */
    private final List<com.google.firebase.d> f14288i = new CopyOnWriteArrayList();

    /* compiled from: FirebaseApp.java */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface b {
        @KeepForSdk
        void a(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirebaseApp.java */
    @TargetApi(14)
    /* renamed from: com.google.firebase.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0112c implements c.a {

        /* renamed from: a, reason: collision with root package name */
        private static AtomicReference<C0112c> f14289a = new AtomicReference<>();

        private C0112c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (o.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f14289a.get() == null) {
                    C0112c c0112c = new C0112c();
                    if (f14289a.compareAndSet(null, c0112c)) {
                        com.google.android.gms.common.api.internal.c.a(application);
                        com.google.android.gms.common.api.internal.c.b().a(c0112c);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.c.a
        public void a(boolean z) {
            synchronized (c.f14277j) {
                Iterator it = new ArrayList(c.f14279l.values()).iterator();
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar.f14284e.get()) {
                        cVar.c(z);
                    }
                }
            }
        }
    }

    /* compiled from: FirebaseApp.java */
    /* loaded from: classes.dex */
    private static class d implements Executor {

        /* renamed from: e, reason: collision with root package name */
        private static final Handler f14290e = new Handler(Looper.getMainLooper());

        private d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            f14290e.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirebaseApp.java */
    @TargetApi(24)
    /* loaded from: classes.dex */
    public static class e extends BroadcastReceiver {

        /* renamed from: b, reason: collision with root package name */
        private static AtomicReference<e> f14291b = new AtomicReference<>();

        /* renamed from: a, reason: collision with root package name */
        private final Context f14292a;

        public e(Context context) {
            this.f14292a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f14291b.get() == null) {
                e eVar = new e(context);
                if (f14291b.compareAndSet(null, eVar)) {
                    context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (c.f14277j) {
                Iterator<c> it = c.f14279l.values().iterator();
                while (it.hasNext()) {
                    it.next().l();
                }
            }
            a();
        }

        public void a() {
            this.f14292a.unregisterReceiver(this);
        }
    }

    protected c(Context context, String str, j jVar) {
        m.a(context);
        this.f14280a = context;
        m.b(str);
        this.f14281b = str;
        m.a(jVar);
        this.f14282c = jVar;
        List<com.google.firebase.p.b<com.google.firebase.components.i>> a2 = com.google.firebase.components.g.a(context, ComponentDiscoveryService.class).a();
        n.b a3 = n.a(f14278k);
        a3.a(a2);
        a3.a(new FirebaseCommonRegistrar());
        a3.a(com.google.firebase.components.d.a(context, Context.class, new Class[0]));
        a3.a(com.google.firebase.components.d.a(this, c.class, new Class[0]));
        a3.a(com.google.firebase.components.d.a(jVar, j.class, new Class[0]));
        this.f14283d = a3.a();
        this.f14286g = new w<>(com.google.firebase.b.a(this, context));
    }

    private void i() {
        m.b(!this.f14285f.get(), "FirebaseApp was deleted");
    }

    private static List<String> j() {
        ArrayList arrayList = new ArrayList();
        synchronized (f14277j) {
            Iterator<c> it = f14279l.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().c());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    public static c k() {
        c cVar;
        synchronized (f14277j) {
            cVar = f14279l.get("[DEFAULT]");
            if (cVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + q.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (!a.i.k.c.a(this.f14280a)) {
            String str = "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + c();
            e.b(this.f14280a);
            return;
        }
        String str2 = "Device unlocked: initializing all Firebase APIs for app " + c();
        this.f14283d.a(g());
    }

    private void m() {
        Iterator<com.google.firebase.d> it = this.f14288i.iterator();
        while (it.hasNext()) {
            it.next().a(this.f14281b, this.f14282c);
        }
    }

    @NonNull
    public String c() {
        i();
        return this.f14281b;
    }

    @NonNull
    public j d() {
        i();
        return this.f14282c;
    }

    @KeepForSdk
    public String e() {
        return com.google.android.gms.common.util.c.c(c().getBytes(Charset.defaultCharset())) + "+" + com.google.android.gms.common.util.c.c(d().b().getBytes(Charset.defaultCharset()));
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f14281b.equals(((c) obj).c());
        }
        return false;
    }

    @KeepForSdk
    public boolean f() {
        i();
        return this.f14286g.get().a();
    }

    @KeepForSdk
    @VisibleForTesting
    public boolean g() {
        return "[DEFAULT]".equals(c());
    }

    public int hashCode() {
        return this.f14281b.hashCode();
    }

    public String toString() {
        k.a a2 = k.a(this);
        a2.a("name", this.f14281b);
        a2.a("options", this.f14282c);
        return a2.toString();
    }

    @NonNull
    public Context b() {
        i();
        return this.f14280a;
    }

    @NonNull
    public static List<c> a(@NonNull Context context) {
        ArrayList arrayList;
        synchronized (f14277j) {
            arrayList = new ArrayList(f14279l.values());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        Iterator<b> it = this.f14287h.iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }

    @Nullable
    public static c b(@NonNull Context context) {
        synchronized (f14277j) {
            if (f14279l.containsKey("[DEFAULT]")) {
                return k();
            }
            j a2 = j.a(context);
            if (a2 == null) {
                return null;
            }
            return a(context, a2);
        }
    }

    @NonNull
    public static c a(@NonNull String str) {
        c cVar;
        String str2;
        synchronized (f14277j) {
            cVar = f14279l.get(b(str));
            if (cVar == null) {
                List<String> j2 = j();
                if (j2.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", j2);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
        }
        return cVar;
    }

    @KeepForSdk
    @Deprecated
    public void b(boolean z) {
        a(Boolean.valueOf(z));
    }

    private static String b(@NonNull String str) {
        return str.trim();
    }

    @NonNull
    public static c a(@NonNull Context context, @NonNull j jVar) {
        return a(context, jVar, "[DEFAULT]");
    }

    @NonNull
    public static c a(@NonNull Context context, @NonNull j jVar, @NonNull String str) {
        c cVar;
        C0112c.b(context);
        String b2 = b(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f14277j) {
            m.b(!f14279l.containsKey(b2), "FirebaseApp name " + b2 + " already exists!");
            m.a(context, "Application context cannot be null.");
            cVar = new c(context, b2, jVar);
            f14279l.put(b2, cVar);
        }
        cVar.l();
        return cVar;
    }

    public void a() {
        if (this.f14285f.compareAndSet(false, true)) {
            synchronized (f14277j) {
                f14279l.remove(this.f14281b);
            }
            m();
        }
    }

    @KeepForSdk
    public <T> T a(Class<T> cls) {
        i();
        return (T) this.f14283d.a(cls);
    }

    public void a(boolean z) {
        i();
        if (this.f14284e.compareAndSet(!z, z)) {
            boolean a2 = com.google.android.gms.common.api.internal.c.b().a();
            if (z && a2) {
                c(true);
            } else {
                if (z || !a2) {
                    return;
                }
                c(false);
            }
        }
    }

    @KeepForSdk
    public void a(Boolean bool) {
        i();
        this.f14286g.get().a(bool);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.firebase.q.a a(c cVar, Context context) {
        return new com.google.firebase.q.a(context, cVar.e(), (com.google.firebase.n.c) cVar.f14283d.a(com.google.firebase.n.c.class));
    }
}
