package io.flutter.embedding.engine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.i.e;
import io.flutter.embedding.engine.i.f;
import io.flutter.embedding.engine.i.g;
import io.flutter.embedding.engine.i.h;
import io.flutter.embedding.engine.i.j;
import io.flutter.embedding.engine.i.k;
import io.flutter.embedding.engine.i.l;
import io.flutter.embedding.engine.i.m;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: FlutterEngine.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final FlutterJNI f18990a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.h.a f18991b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.e.a f18992c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    private final c f18993d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final g.a.c.b.a f18994e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.i.b f18995f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.i.c f18996g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.i.d f18997h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    private final e f18998i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    private final f f18999j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    private final g f19000k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    private final j f19001l;

    @NonNull
    private final h m;

    @NonNull
    private final k n;

    @NonNull
    private final l o;

    @NonNull
    private final m p;

    @NonNull
    private final io.flutter.plugin.platform.k q;

    @NonNull
    private final Set<b> r;

    @NonNull
    private final b s;

    /* compiled from: FlutterEngine.java */
    /* renamed from: io.flutter.embedding.engine.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0228a implements b {
        C0228a() {
        }

        @Override // io.flutter.embedding.engine.a.b
        public void a() {
            g.a.b.c("FlutterEngine", "onPreEngineRestart()");
            Iterator it = a.this.r.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
            a.this.q.m();
            a.this.f19001l.a();
        }
    }

    /* compiled from: FlutterEngine.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a();
    }

    public a(@NonNull Context context) {
        this(context, null);
    }

    private void r() {
        g.a.b.c("FlutterEngine", "Attaching to JNI.");
        this.f18990a.attachToNative(false);
        if (!s()) {
            throw new RuntimeException("FlutterEngine failed to attach to its native Object reference.");
        }
    }

    private boolean s() {
        return this.f18990a.isAttached();
    }

    private void t() {
        try {
            Class.forName("io.flutter.plugins.GeneratedPluginRegistrant").getDeclaredMethod("registerWith", a.class).invoke(null, this);
        } catch (Exception unused) {
            g.a.b.d("FlutterEngine", "Tried to automatically register plugins with FlutterEngine (" + this + ") but could not find and invoke the GeneratedPluginRegistrant.");
        }
    }

    @NonNull
    public io.flutter.embedding.engine.e.a d() {
        return this.f18992c;
    }

    @NonNull
    public io.flutter.embedding.engine.i.c e() {
        return this.f18996g;
    }

    @NonNull
    public io.flutter.embedding.engine.i.d f() {
        return this.f18997h;
    }

    @NonNull
    public g.a.c.b.a g() {
        return this.f18994e;
    }

    @NonNull
    public f h() {
        return this.f18999j;
    }

    @NonNull
    public g i() {
        return this.f19000k;
    }

    @NonNull
    public h j() {
        return this.m;
    }

    @NonNull
    public io.flutter.plugin.platform.k k() {
        return this.q;
    }

    @NonNull
    public io.flutter.embedding.engine.g.b l() {
        return this.f18993d;
    }

    @NonNull
    public io.flutter.embedding.engine.h.a m() {
        return this.f18991b;
    }

    @NonNull
    public j n() {
        return this.f19001l;
    }

    @NonNull
    public k o() {
        return this.n;
    }

    @NonNull
    public l p() {
        return this.o;
    }

    @NonNull
    public m q() {
        return this.p;
    }

    public a(@NonNull Context context, @Nullable String[] strArr) {
        this(context, null, new FlutterJNI(), strArr, true);
    }

    public void a() {
        g.a.b.c("FlutterEngine", "Destroying.");
        this.f18993d.c();
        this.q.k();
        this.f18992c.f();
        this.f18990a.removeEngineLifecycleListener(this.s);
        this.f18990a.detachFromNativeAndReleaseResources();
    }

    @NonNull
    public io.flutter.embedding.engine.i.b b() {
        return this.f18995f;
    }

    @NonNull
    public io.flutter.embedding.engine.g.c.b c() {
        return this.f18993d;
    }

    public a(@NonNull Context context, @Nullable String[] strArr, boolean z, boolean z2) {
        this(context, null, new FlutterJNI(), new io.flutter.plugin.platform.k(), strArr, z, z2);
    }

    public a(@NonNull Context context, @Nullable io.flutter.embedding.engine.f.c cVar, @NonNull FlutterJNI flutterJNI, @Nullable String[] strArr, boolean z) {
        this(context, cVar, flutterJNI, new io.flutter.plugin.platform.k(), strArr, z);
    }

    public a(@NonNull Context context, @Nullable io.flutter.embedding.engine.f.c cVar, @NonNull FlutterJNI flutterJNI, @NonNull io.flutter.plugin.platform.k kVar, @Nullable String[] strArr, boolean z) {
        this(context, cVar, flutterJNI, kVar, strArr, z, false);
    }

    public a(@NonNull Context context, @Nullable io.flutter.embedding.engine.f.c cVar, @NonNull FlutterJNI flutterJNI, @NonNull io.flutter.plugin.platform.k kVar, @Nullable String[] strArr, boolean z, boolean z2) {
        this.r = new HashSet();
        this.s = new C0228a();
        this.f18992c = new io.flutter.embedding.engine.e.a(flutterJNI, context.getAssets());
        this.f18992c.e();
        this.f18995f = new io.flutter.embedding.engine.i.b(this.f18992c, flutterJNI);
        this.f18996g = new io.flutter.embedding.engine.i.c(this.f18992c);
        this.f18997h = new io.flutter.embedding.engine.i.d(this.f18992c);
        this.f18998i = new e(this.f18992c);
        this.f18999j = new f(this.f18992c);
        this.f19000k = new g(this.f18992c);
        this.m = new h(this.f18992c);
        this.f19001l = new j(this.f18992c, z2);
        this.n = new k(this.f18992c);
        this.o = new l(this.f18992c);
        this.p = new m(this.f18992c);
        this.f18994e = new g.a.c.b.a(context, this.f18998i);
        this.f18990a = flutterJNI;
        cVar = cVar == null ? g.a.a.c().a() : cVar;
        cVar.a(context.getApplicationContext());
        cVar.a(context, strArr);
        flutterJNI.addEngineLifecycleListener(this.s);
        flutterJNI.setPlatformViewsController(kVar);
        flutterJNI.setLocalizationPlugin(this.f18994e);
        r();
        this.f18991b = new io.flutter.embedding.engine.h.a(flutterJNI);
        this.q = kVar;
        this.q.i();
        this.f18993d = new c(context.getApplicationContext(), this, cVar);
        if (z) {
            t();
        }
    }
}
