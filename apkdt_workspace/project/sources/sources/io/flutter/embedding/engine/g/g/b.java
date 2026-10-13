package io.flutter.embedding.engine.g.g;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import io.flutter.embedding.engine.g.c.c;
import io.flutter.plugin.platform.h;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: ShimRegistrar.java */
/* loaded from: classes2.dex */
class b implements m.d, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: e, reason: collision with root package name */
    private final Set<m.g> f19083e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    private final Set<m.e> f19084f = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    private final Set<m.a> f19085g = new HashSet();

    /* renamed from: h, reason: collision with root package name */
    private final Set<m.b> f19086h = new HashSet();

    /* renamed from: i, reason: collision with root package name */
    private final Set<m.f> f19087i = new HashSet();

    /* renamed from: j, reason: collision with root package name */
    private a.b f19088j;

    /* renamed from: k, reason: collision with root package name */
    private c f19089k;

    public b(@NonNull String str, @NonNull Map<String, Object> map) {
    }

    private void f() {
        Iterator<m.e> it = this.f19084f.iterator();
        while (it.hasNext()) {
            this.f19089k.a(it.next());
        }
        Iterator<m.a> it2 = this.f19085g.iterator();
        while (it2.hasNext()) {
            this.f19089k.a(it2.next());
        }
        Iterator<m.b> it3 = this.f19086h.iterator();
        while (it3.hasNext()) {
            this.f19089k.a(it3.next());
        }
        Iterator<m.f> it4 = this.f19087i.iterator();
        while (it4.hasNext()) {
            this.f19089k.a(it4.next());
        }
    }

    @Override // g.a.c.a.m.d
    public Context a() {
        a.b bVar = this.f19088j;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // g.a.c.a.m.d
    public Activity b() {
        c cVar = this.f19089k;
        if (cVar != null) {
            return cVar.getActivity();
        }
        return null;
    }

    @Override // g.a.c.a.m.d
    public Context c() {
        return this.f19089k == null ? a() : b();
    }

    @Override // g.a.c.a.m.d
    public g.a.c.a.c d() {
        a.b bVar = this.f19088j;
        if (bVar != null) {
            return bVar.b();
        }
        return null;
    }

    @Override // g.a.c.a.m.d
    public h e() {
        a.b bVar = this.f19088j;
        if (bVar != null) {
            return bVar.e();
        }
        return null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(@NonNull c cVar) {
        g.a.b.c("ShimRegistrar", "Attached to an Activity.");
        this.f19089k = cVar;
        f();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(@NonNull a.b bVar) {
        g.a.b.c("ShimRegistrar", "Attached to FlutterEngine.");
        this.f19088j = bVar;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        g.a.b.c("ShimRegistrar", "Detached from an Activity.");
        this.f19089k = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        g.a.b.c("ShimRegistrar", "Detached from an Activity for config changes.");
        this.f19089k = null;
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        g.a.b.c("ShimRegistrar", "Detached from FlutterEngine.");
        Iterator<m.g> it = this.f19083e.iterator();
        while (it.hasNext()) {
            it.next().a(null);
        }
        this.f19088j = null;
        this.f19089k = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(@NonNull c cVar) {
        g.a.b.c("ShimRegistrar", "Reconnected to an Activity after config changes.");
        this.f19089k = cVar;
        f();
    }

    @Override // g.a.c.a.m.d
    public String a(String str) {
        return g.a.a.c().a().a(str);
    }

    @Override // g.a.c.a.m.d
    public m.d a(m.e eVar) {
        this.f19084f.add(eVar);
        c cVar = this.f19089k;
        if (cVar != null) {
            cVar.a(eVar);
        }
        return this;
    }

    @Override // g.a.c.a.m.d
    public m.d a(m.a aVar) {
        this.f19085g.add(aVar);
        c cVar = this.f19089k;
        if (cVar != null) {
            cVar.a(aVar);
        }
        return this;
    }

    @Override // g.a.c.a.m.d
    public m.d a(m.b bVar) {
        this.f19086h.add(bVar);
        c cVar = this.f19089k;
        if (cVar != null) {
            cVar.a(bVar);
        }
        return this;
    }
}
