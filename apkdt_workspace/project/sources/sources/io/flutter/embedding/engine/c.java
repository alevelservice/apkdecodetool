package io.flutter.embedding.engine;

import android.app.Activity;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import io.flutter.embedding.engine.g.c.c;
import io.flutter.embedding.engine.plugins.lifecycle.HiddenLifecycleReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlutterEnginePluginRegistry.java */
/* loaded from: classes2.dex */
public class c implements io.flutter.embedding.engine.g.b, io.flutter.embedding.engine.g.c.b, io.flutter.embedding.engine.g.f.b, io.flutter.embedding.engine.g.d.b, io.flutter.embedding.engine.g.e.b {

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.a f19006b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final a.b f19007c;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private Activity f19009e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private C0229c f19010f;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private Service f19013i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private f f19014j;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private BroadcastReceiver f19016l;

    @Nullable
    private d m;

    @Nullable
    private ContentProvider o;

    @Nullable
    private e p;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Map<Class<? extends io.flutter.embedding.engine.g.a>, io.flutter.embedding.engine.g.a> f19005a = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    private final Map<Class<? extends io.flutter.embedding.engine.g.a>, io.flutter.embedding.engine.g.c.a> f19008d = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private boolean f19011g = false;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    private final Map<Class<? extends io.flutter.embedding.engine.g.a>, io.flutter.embedding.engine.g.f.a> f19012h = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    private final Map<Class<? extends io.flutter.embedding.engine.g.a>, io.flutter.embedding.engine.g.d.a> f19015k = new HashMap();

    @NonNull
    private final Map<Class<? extends io.flutter.embedding.engine.g.a>, io.flutter.embedding.engine.g.e.a> n = new HashMap();

    /* compiled from: FlutterEnginePluginRegistry.java */
    /* loaded from: classes2.dex */
    private static class b implements a.InterfaceC0233a {

        /* renamed from: a, reason: collision with root package name */
        final io.flutter.embedding.engine.f.c f19017a;

        @Override // io.flutter.embedding.engine.g.a.InterfaceC0233a
        public String a(@NonNull String str) {
            return this.f19017a.a(str);
        }

        private b(@NonNull io.flutter.embedding.engine.f.c cVar) {
            this.f19017a = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlutterEnginePluginRegistry.java */
    /* renamed from: io.flutter.embedding.engine.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0229c implements io.flutter.embedding.engine.g.c.c {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final Activity f19018a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private final Set<m.e> f19019b = new HashSet();

        /* renamed from: c, reason: collision with root package name */
        @NonNull
        private final Set<m.a> f19020c = new HashSet();

        /* renamed from: d, reason: collision with root package name */
        @NonNull
        private final Set<m.b> f19021d = new HashSet();

        /* renamed from: e, reason: collision with root package name */
        @NonNull
        private final Set<m.f> f19022e = new HashSet();

        /* renamed from: f, reason: collision with root package name */
        @NonNull
        private final Set<c.a> f19023f = new HashSet();

        public C0229c(@NonNull Activity activity, @NonNull androidx.lifecycle.e eVar) {
            this.f19018a = activity;
            new HiddenLifecycleReference(eVar);
        }

        @Override // io.flutter.embedding.engine.g.c.c
        public void a(@NonNull m.e eVar) {
            this.f19019b.add(eVar);
        }

        @Override // io.flutter.embedding.engine.g.c.c
        public void b(@NonNull m.e eVar) {
            this.f19019b.remove(eVar);
        }

        @Override // io.flutter.embedding.engine.g.c.c
        @NonNull
        public Activity getActivity() {
            return this.f19018a;
        }

        boolean a(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
            boolean z;
            Iterator<m.e> it = this.f19019b.iterator();
            while (true) {
                while (it.hasNext()) {
                    z = it.next().onRequestPermissionsResult(i2, strArr, iArr) || z;
                }
                return z;
            }
        }

        @Override // io.flutter.embedding.engine.g.c.c
        public void b(@NonNull m.a aVar) {
            this.f19020c.remove(aVar);
        }

        void b(@NonNull Bundle bundle) {
            Iterator<c.a> it = this.f19023f.iterator();
            while (it.hasNext()) {
                it.next().onSaveInstanceState(bundle);
            }
        }

        @Override // io.flutter.embedding.engine.g.c.c
        public void a(@NonNull m.a aVar) {
            this.f19020c.add(aVar);
        }

        boolean a(int i2, int i3, @Nullable Intent intent) {
            boolean z;
            Iterator it = new HashSet(this.f19020c).iterator();
            while (true) {
                while (it.hasNext()) {
                    z = ((m.a) it.next()).onActivityResult(i2, i3, intent) || z;
                }
                return z;
            }
        }

        @Override // io.flutter.embedding.engine.g.c.c
        public void a(@NonNull m.b bVar) {
            this.f19021d.add(bVar);
        }

        void a(@Nullable Intent intent) {
            Iterator<m.b> it = this.f19021d.iterator();
            while (it.hasNext()) {
                it.next().onNewIntent(intent);
            }
        }

        @Override // io.flutter.embedding.engine.g.c.c
        public void a(@NonNull m.f fVar) {
            this.f19022e.add(fVar);
        }

        void a() {
            Iterator<m.f> it = this.f19022e.iterator();
            while (it.hasNext()) {
                it.next().onUserLeaveHint();
            }
        }

        void a(@Nullable Bundle bundle) {
            Iterator<c.a> it = this.f19023f.iterator();
            while (it.hasNext()) {
                it.next().a(bundle);
            }
        }
    }

    /* compiled from: FlutterEnginePluginRegistry.java */
    /* loaded from: classes2.dex */
    private static class d implements io.flutter.embedding.engine.g.d.c {
    }

    /* compiled from: FlutterEnginePluginRegistry.java */
    /* loaded from: classes2.dex */
    private static class e implements io.flutter.embedding.engine.g.e.c {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlutterEnginePluginRegistry.java */
    /* loaded from: classes2.dex */
    public static class f implements io.flutter.embedding.engine.g.f.c {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull Context context, @NonNull io.flutter.embedding.engine.a aVar, @NonNull io.flutter.embedding.engine.f.c cVar) {
        this.f19006b = aVar;
        this.f19007c = new a.b(context, aVar, aVar.d(), aVar.m(), aVar.k().g(), new b(cVar));
    }

    private void h() {
        if (i()) {
            a();
            return;
        }
        if (l()) {
            f();
        } else if (j()) {
            d();
        } else if (k()) {
            e();
        }
    }

    private boolean i() {
        return this.f19009e != null;
    }

    private boolean j() {
        return this.f19016l != null;
    }

    private boolean k() {
        return this.o != null;
    }

    private boolean l() {
        return this.f19013i != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.embedding.engine.g.b
    public void a(@NonNull io.flutter.embedding.engine.g.a aVar) {
        if (a((Class<? extends io.flutter.embedding.engine.g.a>) aVar.getClass())) {
            g.a.b.d("FlutterEnginePluginRegistry", "Attempted to register plugin (" + aVar + ") but it was already registered with this FlutterEngine (" + this.f19006b + ").");
            return;
        }
        g.a.b.c("FlutterEnginePluginRegistry", "Adding plugin: " + aVar);
        this.f19005a.put(aVar.getClass(), aVar);
        aVar.onAttachedToEngine(this.f19007c);
        if (aVar instanceof io.flutter.embedding.engine.g.c.a) {
            io.flutter.embedding.engine.g.c.a aVar2 = (io.flutter.embedding.engine.g.c.a) aVar;
            this.f19008d.put(aVar.getClass(), aVar2);
            if (i()) {
                aVar2.onAttachedToActivity(this.f19010f);
            }
        }
        if (aVar instanceof io.flutter.embedding.engine.g.f.a) {
            io.flutter.embedding.engine.g.f.a aVar3 = (io.flutter.embedding.engine.g.f.a) aVar;
            this.f19012h.put(aVar.getClass(), aVar3);
            if (l()) {
                aVar3.a(this.f19014j);
            }
        }
        if (aVar instanceof io.flutter.embedding.engine.g.d.a) {
            io.flutter.embedding.engine.g.d.a aVar4 = (io.flutter.embedding.engine.g.d.a) aVar;
            this.f19015k.put(aVar.getClass(), aVar4);
            if (j()) {
                aVar4.a(this.m);
            }
        }
        if (aVar instanceof io.flutter.embedding.engine.g.e.a) {
            io.flutter.embedding.engine.g.e.a aVar5 = (io.flutter.embedding.engine.g.e.a) aVar;
            this.n.put(aVar.getClass(), aVar5);
            if (k()) {
                aVar5.a(this.p);
            }
        }
    }

    public void b(@NonNull Class<? extends io.flutter.embedding.engine.g.a> cls) {
        io.flutter.embedding.engine.g.a aVar = this.f19005a.get(cls);
        if (aVar != null) {
            g.a.b.c("FlutterEnginePluginRegistry", "Removing plugin: " + aVar);
            if (aVar instanceof io.flutter.embedding.engine.g.c.a) {
                if (i()) {
                    ((io.flutter.embedding.engine.g.c.a) aVar).onDetachedFromActivity();
                }
                this.f19008d.remove(cls);
            }
            if (aVar instanceof io.flutter.embedding.engine.g.f.a) {
                if (l()) {
                    ((io.flutter.embedding.engine.g.f.a) aVar).a();
                }
                this.f19012h.remove(cls);
            }
            if (aVar instanceof io.flutter.embedding.engine.g.d.a) {
                if (j()) {
                    ((io.flutter.embedding.engine.g.d.a) aVar).a();
                }
                this.f19015k.remove(cls);
            }
            if (aVar instanceof io.flutter.embedding.engine.g.e.a) {
                if (k()) {
                    ((io.flutter.embedding.engine.g.e.a) aVar).a();
                }
                this.n.remove(cls);
            }
            aVar.onDetachedFromEngine(this.f19007c);
            this.f19005a.remove(cls);
        }
    }

    public void c() {
        g.a.b.c("FlutterEnginePluginRegistry", "Destroying.");
        h();
        g();
    }

    public void d() {
        if (j()) {
            g.a.b.c("FlutterEnginePluginRegistry", "Detaching from BroadcastReceiver: " + this.f19016l);
            Iterator<io.flutter.embedding.engine.g.d.a> it = this.f19015k.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            return;
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to detach plugins from a BroadcastReceiver when no BroadcastReceiver was attached.");
    }

    public void e() {
        if (k()) {
            g.a.b.c("FlutterEnginePluginRegistry", "Detaching from ContentProvider: " + this.o);
            Iterator<io.flutter.embedding.engine.g.e.a> it = this.n.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            return;
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to detach plugins from a ContentProvider when no ContentProvider was attached.");
    }

    public void f() {
        if (l()) {
            g.a.b.c("FlutterEnginePluginRegistry", "Detaching from a Service: " + this.f19013i);
            Iterator<io.flutter.embedding.engine.g.f.a> it = this.f19012h.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f19013i = null;
            this.f19014j = null;
            return;
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to detach plugins from a Service when no Service was attached.");
    }

    public void g() {
        a(new HashSet(this.f19005a.keySet()));
        this.f19005a.clear();
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public boolean onActivityResult(int i2, int i3, @Nullable Intent intent) {
        g.a.b.c("FlutterEnginePluginRegistry", "Forwarding onActivityResult() to plugins.");
        if (i()) {
            return this.f19010f.a(i2, i3, intent);
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to notify ActivityAware plugins of onActivityResult, but no Activity was attached.");
        return false;
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void onNewIntent(@NonNull Intent intent) {
        g.a.b.c("FlutterEnginePluginRegistry", "Forwarding onNewIntent() to plugins.");
        if (i()) {
            this.f19010f.a(intent);
        } else {
            g.a.b.b("FlutterEnginePluginRegistry", "Attempted to notify ActivityAware plugins of onNewIntent, but no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public boolean onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        g.a.b.c("FlutterEnginePluginRegistry", "Forwarding onRequestPermissionsResult() to plugins.");
        if (i()) {
            return this.f19010f.a(i2, strArr, iArr);
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to notify ActivityAware plugins of onRequestPermissionsResult, but no Activity was attached.");
        return false;
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        g.a.b.c("FlutterEnginePluginRegistry", "Forwarding onSaveInstanceState() to plugins.");
        if (i()) {
            this.f19010f.b(bundle);
        } else {
            g.a.b.b("FlutterEnginePluginRegistry", "Attempted to notify ActivityAware plugins of onSaveInstanceState, but no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void onUserLeaveHint() {
        g.a.b.c("FlutterEnginePluginRegistry", "Forwarding onUserLeaveHint() to plugins.");
        if (i()) {
            this.f19010f.a();
        } else {
            g.a.b.b("FlutterEnginePluginRegistry", "Attempted to notify ActivityAware plugins of onUserLeaveHint, but no Activity was attached.");
        }
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void b() {
        if (i()) {
            g.a.b.c("FlutterEnginePluginRegistry", "Detaching from an Activity for config changes: " + this.f19009e);
            this.f19011g = true;
            Iterator<io.flutter.embedding.engine.g.c.a> it = this.f19008d.values().iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromActivityForConfigChanges();
            }
            this.f19006b.k().d();
            this.f19009e = null;
            this.f19010f = null;
            return;
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to detach plugins from an Activity when no Activity was attached.");
    }

    public boolean a(@NonNull Class<? extends io.flutter.embedding.engine.g.a> cls) {
        return this.f19005a.containsKey(cls);
    }

    public void a(@NonNull Set<Class<? extends io.flutter.embedding.engine.g.a>> set) {
        Iterator<Class<? extends io.flutter.embedding.engine.g.a>> it = set.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void a(@NonNull Activity activity, @NonNull androidx.lifecycle.e eVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("Attaching to an Activity: ");
        sb.append(activity);
        sb.append(".");
        sb.append(this.f19011g ? " This is after a config change." : "");
        g.a.b.c("FlutterEnginePluginRegistry", sb.toString());
        h();
        this.f19009e = activity;
        this.f19010f = new C0229c(activity, eVar);
        this.f19006b.k().a(activity, this.f19006b.m(), this.f19006b.d());
        for (io.flutter.embedding.engine.g.c.a aVar : this.f19008d.values()) {
            if (this.f19011g) {
                aVar.onReattachedToActivityForConfigChanges(this.f19010f);
            } else {
                aVar.onAttachedToActivity(this.f19010f);
            }
        }
        this.f19011g = false;
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void a() {
        if (i()) {
            g.a.b.c("FlutterEnginePluginRegistry", "Detaching from an Activity: " + this.f19009e);
            Iterator<io.flutter.embedding.engine.g.c.a> it = this.f19008d.values().iterator();
            while (it.hasNext()) {
                it.next().onDetachedFromActivity();
            }
            this.f19006b.k().d();
            this.f19009e = null;
            this.f19010f = null;
            return;
        }
        g.a.b.b("FlutterEnginePluginRegistry", "Attempted to detach plugins from an Activity when no Activity was attached.");
    }

    @Override // io.flutter.embedding.engine.g.c.b
    public void a(@Nullable Bundle bundle) {
        g.a.b.c("FlutterEnginePluginRegistry", "Forwarding onRestoreInstanceState() to plugins.");
        if (i()) {
            this.f19010f.a(bundle);
        } else {
            g.a.b.b("FlutterEnginePluginRegistry", "Attempted to notify ActivityAware plugins of onRestoreInstanceState, but no Activity was attached.");
        }
    }
}
