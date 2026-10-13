package com.mapbox.mapboxsdk.t.a;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.maps.n;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import com.mapbox.mapboxsdk.t.a.a;
import com.mapbox.mapboxsdk.t.a.r;
import com.mapbox.mapboxsdk.t.a.s;
import com.mapbox.mapboxsdk.t.a.t;
import com.mapbox.mapboxsdk.t.a.y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: AnnotationManager.java */
/* loaded from: classes2.dex */
public abstract class b<L extends Layer, T extends com.mapbox.mapboxsdk.t.a.a, S extends y<T>, D extends s<T>, U extends r<T>, V extends t<T>> {

    /* renamed from: a, reason: collision with root package name */
    protected final com.mapbox.mapboxsdk.maps.n f16285a;

    /* renamed from: e, reason: collision with root package name */
    com.mapbox.mapboxsdk.u.a.a f16289e;

    /* renamed from: i, reason: collision with root package name */
    private long f16293i;

    /* renamed from: j, reason: collision with root package name */
    protected L f16294j;

    /* renamed from: k, reason: collision with root package name */
    private GeoJsonSource f16295k;

    /* renamed from: l, reason: collision with root package name */
    private final b<L, T, S, D, U, V>.C0169b f16296l;
    private Style m;
    private String n;
    private h<L> o;
    private i p;

    /* renamed from: b, reason: collision with root package name */
    protected final a.e.d<T> f16286b = new a.e.d<>();

    /* renamed from: c, reason: collision with root package name */
    final Map<String, Boolean> f16287c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    final Map<String, com.mapbox.mapboxsdk.style.layers.d> f16288d = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private final List<D> f16290f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    private final List<U> f16291g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    private final List<V> f16292h = new ArrayList();

    /* compiled from: AnnotationManager.java */
    /* loaded from: classes2.dex */
    class a implements MapView.s {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mapbox.mapboxsdk.maps.n f16297a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mapbox.mapboxsdk.style.sources.a f16298b;

        /* compiled from: AnnotationManager.java */
        /* renamed from: com.mapbox.mapboxsdk.t.a.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0168a implements Style.c {
            C0168a() {
            }

            @Override // com.mapbox.mapboxsdk.maps.Style.c
            public void a(@NonNull Style style) {
                b.this.m = style;
                a aVar = a.this;
                b.this.a(aVar.f16298b);
            }
        }

        a(com.mapbox.mapboxsdk.maps.n nVar, com.mapbox.mapboxsdk.style.sources.a aVar) {
            this.f16297a = nVar;
            this.f16298b = aVar;
        }

        @Override // com.mapbox.mapboxsdk.maps.MapView.s
        public void a() {
            this.f16297a.a(new C0168a());
        }
    }

    /* compiled from: AnnotationManager.java */
    /* renamed from: com.mapbox.mapboxsdk.t.a.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0169b implements n.o, n.p {
        private C0169b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.mapbox.mapboxsdk.maps.n.o
        public boolean a(@NonNull LatLng latLng) {
            com.mapbox.mapboxsdk.t.a.a a2;
            if (!b.this.f16291g.isEmpty() && (a2 = b.this.a(latLng)) != null) {
                Iterator it = b.this.f16291g.iterator();
                while (it.hasNext()) {
                    if (((r) it.next()).a(a2)) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.mapbox.mapboxsdk.maps.n.p
        public boolean b(@NonNull LatLng latLng) {
            com.mapbox.mapboxsdk.t.a.a a2;
            if (!b.this.f16292h.isEmpty() && (a2 = b.this.a(latLng)) != null) {
                Iterator it = b.this.f16292h.iterator();
                while (it.hasNext()) {
                    if (((t) it.next()).a(a2)) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* synthetic */ C0169b(b bVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @UiThread
    public b(MapView mapView, com.mapbox.mapboxsdk.maps.n nVar, Style style, h<L> hVar, i iVar, String str, com.mapbox.mapboxsdk.style.sources.a aVar) {
        this.f16285a = nVar;
        this.m = style;
        this.n = str;
        this.o = hVar;
        this.p = iVar;
        if (style.e()) {
            b<L, T, S, D, U, V>.C0169b c0169b = new C0169b(this, null);
            this.f16296l = c0169b;
            nVar.a((n.o) c0169b);
            nVar.a(this.f16296l);
            iVar.a(this);
            a(aVar);
            mapView.addOnDidFinishLoadingStyleListener(new a(nVar, aVar));
            return;
        }
        throw new RuntimeException("The style has to be non-null and fully loaded.");
    }

    abstract String a();

    abstract void a(@NonNull com.mapbox.mapboxsdk.u.a.a aVar);

    protected abstract void b(@NonNull String str);

    abstract void c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (this.m.e()) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.f16286b.b(); i2++) {
                T c2 = this.f16286b.c(i2);
                arrayList.add(Feature.fromGeometry(c2.b(), c2.a()));
                c2.f();
            }
            this.f16295k.a(FeatureCollection.fromFeatures(arrayList));
        }
    }

    @UiThread
    public void e() {
        this.f16285a.b((n.o) this.f16296l);
        this.f16285a.b((n.p) this.f16296l);
        this.p.b(this);
        this.f16290f.clear();
        this.f16291g.clear();
        this.f16292h.clear();
    }

    public void f() {
        this.p.b();
        d();
    }

    @UiThread
    public void b(List<T> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            this.f16286b.c(it.next().c());
        }
        f();
    }

    @UiThread
    public T a(S s) {
        T t = (T) s.a(this.f16293i, this);
        this.f16286b.c(t.c(), t);
        this.f16293i++;
        f();
        return t;
    }

    @UiThread
    public void b(T t) {
        if (this.f16286b.a((a.e.d<T>) t)) {
            this.f16286b.c(t.c(), t);
            f();
            return;
        }
        Logger.e("AnnotationManager", "Can't update annotation: " + t.toString() + ", the annotation isn't active annotation.");
    }

    @UiThread
    public List<T> a(List<S> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<S> it = list.iterator();
        while (it.hasNext()) {
            com.mapbox.mapboxsdk.t.a.a a2 = it.next().a(this.f16293i, this);
            arrayList.add(a2);
            this.f16286b.c(a2.c(), a2);
            this.f16293i++;
        }
        f();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<D> b() {
        return this.f16290f;
    }

    @UiThread
    public void a(T t) {
        this.f16286b.c(t.c());
        f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull String str) {
        if (this.f16287c.get(str).equals(false)) {
            this.f16287c.put(str, true);
            b(str);
        }
    }

    @UiThread
    public void a(@NonNull U u) {
        this.f16291g.add(u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mapbox.mapboxsdk.style.sources.a aVar) {
        this.f16295k = this.o.a(aVar);
        this.f16294j = this.o.b();
        this.m.a(this.f16295k);
        String str = this.n;
        if (str == null) {
            this.m.a(this.f16294j);
        } else {
            this.m.b(this.f16294j, str);
        }
        c();
        this.f16294j.a((com.mapbox.mapboxsdk.style.layers.d[]) this.f16288d.values().toArray(new com.mapbox.mapboxsdk.style.layers.d[0]));
        com.mapbox.mapboxsdk.u.a.a aVar2 = this.f16289e;
        if (aVar2 != null) {
            a(aVar2);
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public T a(@NonNull LatLng latLng) {
        return a(this.f16285a.l().a(latLng));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public T a(@NonNull PointF pointF) {
        List<Feature> a2 = this.f16285a.a(pointF, this.o.a());
        if (a2.isEmpty()) {
            return null;
        }
        return this.f16286b.a(a2.get(0).getProperty(a()).getAsLong());
    }
}
