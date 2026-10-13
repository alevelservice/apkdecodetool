package io.flutter.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import g.a.c.a.m;
import io.flutter.plugin.platform.h;
import io.flutter.plugin.platform.k;
import io.flutter.view.FlutterView;
import io.flutter.view.d;
import io.flutter.view.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: FlutterPluginRegistry.java */
/* loaded from: classes2.dex */
public class c implements m, m.e, m.a, m.b, m.f, m.g {

    /* renamed from: e, reason: collision with root package name */
    private Activity f18874e;

    /* renamed from: f, reason: collision with root package name */
    private Context f18875f;

    /* renamed from: g, reason: collision with root package name */
    private e f18876g;

    /* renamed from: i, reason: collision with root package name */
    private final Map<String, Object> f18878i = new LinkedHashMap(0);

    /* renamed from: j, reason: collision with root package name */
    private final List<m.e> f18879j = new ArrayList(0);

    /* renamed from: k, reason: collision with root package name */
    private final List<m.a> f18880k = new ArrayList(0);

    /* renamed from: l, reason: collision with root package name */
    private final List<m.b> f18881l = new ArrayList(0);
    private final List<m.f> m = new ArrayList(0);
    private final List<m.g> n = new ArrayList(0);

    /* renamed from: h, reason: collision with root package name */
    private final k f18877h = new k();

    /* compiled from: FlutterPluginRegistry.java */
    /* loaded from: classes2.dex */
    private class a implements m.d {
        a(String str) {
        }

        @Override // g.a.c.a.m.d
        public Context a() {
            return c.this.f18875f;
        }

        @Override // g.a.c.a.m.d
        public Activity b() {
            return c.this.f18874e;
        }

        @Override // g.a.c.a.m.d
        public Context c() {
            return c.this.f18874e != null ? c.this.f18874e : c.this.f18875f;
        }

        @Override // g.a.c.a.m.d
        public g.a.c.a.c d() {
            return c.this.f18876g;
        }

        @Override // g.a.c.a.m.d
        public h e() {
            return c.this.f18877h.g();
        }

        @Override // g.a.c.a.m.d
        public String a(String str) {
            return d.a(str);
        }

        @Override // g.a.c.a.m.d
        public m.d a(m.e eVar) {
            c.this.f18879j.add(eVar);
            return this;
        }

        @Override // g.a.c.a.m.d
        public m.d a(m.a aVar) {
            c.this.f18880k.add(aVar);
            return this;
        }

        @Override // g.a.c.a.m.d
        public m.d a(m.b bVar) {
            c.this.f18881l.add(bVar);
            return this;
        }
    }

    public c(e eVar, Context context) {
        this.f18876g = eVar;
        this.f18875f = context;
    }

    @Override // g.a.c.a.m
    public boolean hasPlugin(String str) {
        return this.f18878i.containsKey(str);
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        Iterator<m.a> it = this.f18880k.iterator();
        while (it.hasNext()) {
            if (it.next().onActivityResult(i2, i3, intent)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.a.c.a.m.b
    public boolean onNewIntent(Intent intent) {
        Iterator<m.b> it = this.f18881l.iterator();
        while (it.hasNext()) {
            if (it.next().onNewIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.a.c.a.m.e
    public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        Iterator<m.e> it = this.f18879j.iterator();
        while (it.hasNext()) {
            if (it.next().onRequestPermissionsResult(i2, strArr, iArr)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.a.c.a.m.f
    public void onUserLeaveHint() {
        Iterator<m.f> it = this.m.iterator();
        while (it.hasNext()) {
            it.next().onUserLeaveHint();
        }
    }

    @Override // g.a.c.a.m
    public m.d registrarFor(String str) {
        if (!this.f18878i.containsKey(str)) {
            this.f18878i.put(str, null);
            return new a(str);
        }
        throw new IllegalStateException("Plugin key " + str + " is already in use");
    }

    @Override // g.a.c.a.m
    public <T> T valuePublishedByPlugin(String str) {
        return (T) this.f18878i.get(str);
    }

    public void a(FlutterView flutterView, Activity activity) {
        this.f18874e = activity;
        this.f18877h.a(activity, flutterView, flutterView.getDartExecutor());
    }

    public void b() {
        this.f18877h.d();
        this.f18877h.k();
        this.f18874e = null;
    }

    public k c() {
        return this.f18877h;
    }

    public void d() {
        this.f18877h.m();
    }

    @Override // g.a.c.a.m.g
    public boolean a(e eVar) {
        Iterator<m.g> it = this.n.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (it.next().a(eVar)) {
                z = true;
            }
        }
        return z;
    }

    public void a() {
        this.f18877h.k();
    }
}
