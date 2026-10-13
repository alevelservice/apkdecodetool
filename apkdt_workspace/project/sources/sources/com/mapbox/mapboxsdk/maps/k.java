package com.mapbox.mapboxsdk.maps;

import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.NativeMapView;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapChangeReceiver.java */
/* loaded from: classes2.dex */
public class k implements NativeMapView.a {

    /* renamed from: a, reason: collision with root package name */
    private final List<MapView.n> f16050a = new CopyOnWriteArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final List<MapView.m> f16051b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    private final List<MapView.l> f16052c = new CopyOnWriteArrayList();

    /* renamed from: d, reason: collision with root package name */
    private final List<MapView.x> f16053d = new CopyOnWriteArrayList();

    /* renamed from: e, reason: collision with root package name */
    private final List<MapView.r> f16054e = new CopyOnWriteArrayList();

    /* renamed from: f, reason: collision with root package name */
    private final List<MapView.q> f16055f = new CopyOnWriteArrayList();

    /* renamed from: g, reason: collision with root package name */
    private final List<MapView.y> f16056g = new CopyOnWriteArrayList();

    /* renamed from: h, reason: collision with root package name */
    private final List<MapView.t> f16057h = new CopyOnWriteArrayList();

    /* renamed from: i, reason: collision with root package name */
    private final List<MapView.z> f16058i = new CopyOnWriteArrayList();

    /* renamed from: j, reason: collision with root package name */
    private final List<MapView.u> f16059j = new CopyOnWriteArrayList();

    /* renamed from: k, reason: collision with root package name */
    private final List<MapView.p> f16060k = new CopyOnWriteArrayList();

    /* renamed from: l, reason: collision with root package name */
    private final List<MapView.s> f16061l = new CopyOnWriteArrayList();
    private final List<MapView.v> m = new CopyOnWriteArrayList();
    private final List<MapView.w> n = new CopyOnWriteArrayList();
    private final List<MapView.o> o = new CopyOnWriteArrayList();

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void a(boolean z) {
        try {
            if (this.f16052c.isEmpty()) {
                return;
            }
            Iterator<MapView.l> it = this.f16052c.iterator();
            while (it.hasNext()) {
                it.next().a(z);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onCameraDidChange", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void b() {
        try {
            if (this.f16051b.isEmpty()) {
                return;
            }
            Iterator<MapView.m> it = this.f16051b.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onCameraIsChanging", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void c(boolean z) {
        try {
            if (this.f16050a.isEmpty()) {
                return;
            }
            Iterator<MapView.n> it = this.f16050a.iterator();
            while (it.hasNext()) {
                it.next().c(z);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onCameraWillChange", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void d() {
        try {
            if (this.f16056g.isEmpty()) {
                return;
            }
            Iterator<MapView.y> it = this.f16056g.iterator();
            while (it.hasNext()) {
                it.next().d();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onWillStartRenderingFrame", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void e() {
        try {
            if (this.f16058i.isEmpty()) {
                return;
            }
            Iterator<MapView.z> it = this.f16058i.iterator();
            while (it.hasNext()) {
                it.next().e();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onWillStartRenderingMap", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.b
    public void f() {
        try {
            if (this.f16053d.isEmpty()) {
                return;
            }
            Iterator<MapView.x> it = this.f16053d.iterator();
            while (it.hasNext()) {
                it.next().f();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onWillStartLoadingMap", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void g() {
        try {
            if (this.f16060k.isEmpty()) {
                return;
            }
            Iterator<MapView.p> it = this.f16060k.iterator();
            while (it.hasNext()) {
                it.next().g();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidBecomeIdle", th);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f16050a.clear();
        this.f16051b.clear();
        this.f16052c.clear();
        this.f16053d.clear();
        this.f16054e.clear();
        this.f16055f.clear();
        this.f16056g.clear();
        this.f16057h.clear();
        this.f16058i.clear();
        this.f16059j.clear();
        this.f16060k.clear();
        this.f16061l.clear();
        this.m.clear();
        this.n.clear();
        this.o.clear();
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.b
    public void a() {
        try {
            if (this.f16061l.isEmpty()) {
                return;
            }
            Iterator<MapView.s> it = this.f16061l.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishLoadingStyle", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void b(String str) {
        try {
            if (this.f16055f.isEmpty()) {
                return;
            }
            Iterator<MapView.q> it = this.f16055f.iterator();
            while (it.hasNext()) {
                it.next().b(str);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFailLoadingMap", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void c() {
        try {
            if (this.f16054e.isEmpty()) {
                return;
            }
            Iterator<MapView.r> it = this.f16054e.iterator();
            while (it.hasNext()) {
                it.next().c();
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishLoadingMap", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void d(boolean z) {
        try {
            if (this.f16059j.isEmpty()) {
                return;
            }
            Iterator<MapView.u> it = this.f16059j.iterator();
            while (it.hasNext()) {
                it.next().d(z);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishRenderingMap", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void a(String str) {
        try {
            if (this.n.isEmpty()) {
                return;
            }
            Iterator<MapView.w> it = this.n.iterator();
            while (it.hasNext()) {
                it.next().a(str);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onStyleImageMissing", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void b(boolean z) {
        try {
            if (this.f16057h.isEmpty()) {
                return;
            }
            Iterator<MapView.t> it = this.f16057h.iterator();
            while (it.hasNext()) {
                it.next().b(z);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onDidFinishRenderingFrame", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public boolean c(String str) {
        boolean z = true;
        if (this.o.isEmpty()) {
            return true;
        }
        try {
            if (!this.o.isEmpty()) {
                Iterator<MapView.o> it = this.o.iterator();
                while (it.hasNext()) {
                    z &= it.next().c(str);
                }
            }
            return z;
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onCanRemoveUnusedStyleImage", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.NativeMapView.a
    public void d(String str) {
        try {
            if (this.m.isEmpty()) {
                return;
            }
            Iterator<MapView.v> it = this.m.iterator();
            while (it.hasNext()) {
                it.next().a(str);
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-MapChangeReceiver", "Exception in onSourceChanged", th);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.n nVar) {
        this.f16050a.add(nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.n nVar) {
        this.f16050a.remove(nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.m mVar) {
        this.f16051b.add(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.m mVar) {
        this.f16051b.remove(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.l lVar) {
        this.f16052c.add(lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.l lVar) {
        this.f16052c.remove(lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.x xVar) {
        this.f16053d.add(xVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.x xVar) {
        this.f16053d.remove(xVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.r rVar) {
        this.f16054e.add(rVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.r rVar) {
        this.f16054e.remove(rVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.q qVar) {
        this.f16055f.add(qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.q qVar) {
        this.f16055f.remove(qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.y yVar) {
        this.f16056g.add(yVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.y yVar) {
        this.f16056g.remove(yVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.t tVar) {
        this.f16057h.add(tVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.t tVar) {
        this.f16057h.remove(tVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.z zVar) {
        this.f16058i.add(zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.z zVar) {
        this.f16058i.remove(zVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.u uVar) {
        this.f16059j.add(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.u uVar) {
        this.f16059j.remove(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.p pVar) {
        this.f16060k.add(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.p pVar) {
        this.f16060k.remove(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.s sVar) {
        this.f16061l.add(sVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.s sVar) {
        this.f16061l.remove(sVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.v vVar) {
        this.m.add(vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.v vVar) {
        this.m.remove(vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.w wVar) {
        this.n.add(wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.w wVar) {
        this.n.remove(wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MapView.o oVar) {
        this.o.add(oVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MapView.o oVar) {
        this.o.remove(oVar);
    }
}
