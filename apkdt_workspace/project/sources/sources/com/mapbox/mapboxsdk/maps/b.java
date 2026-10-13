package com.mapbox.mapboxsdk.maps;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnnotationManager.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final MapView f15986a;

    /* renamed from: b, reason: collision with root package name */
    private final g f15987b;

    /* renamed from: d, reason: collision with root package name */
    private final a.e.d<com.mapbox.mapboxsdk.annotations.a> f15989d;

    /* renamed from: f, reason: collision with root package name */
    private n f15991f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private n.q f15992g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private n.s f15993h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private n.t f15994i;

    /* renamed from: j, reason: collision with root package name */
    private com.mapbox.mapboxsdk.maps.c f15995j;

    /* renamed from: k, reason: collision with root package name */
    private y f15996k;

    /* renamed from: l, reason: collision with root package name */
    private p f15997l;
    private t m;
    private v n;

    /* renamed from: c, reason: collision with root package name */
    private final j f15988c = new j();

    /* renamed from: e, reason: collision with root package name */
    private final List<Marker> f15990e = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnnotationManager.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final RectF f15998a;

        /* renamed from: b, reason: collision with root package name */
        private final List<Marker> f15999b;

        a(RectF rectF, List<Marker> list) {
            this.f15998a = rectF;
            this.f15999b = list;
        }

        float a() {
            return this.f15998a.centerX();
        }

        float b() {
            return this.f15998a.centerY();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnnotationManager.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private final RectF f16009a;

        c(RectF rectF) {
            this.f16009a = rectF;
        }
    }

    /* compiled from: AnnotationManager.java */
    /* loaded from: classes2.dex */
    private static class d {

        /* renamed from: a, reason: collision with root package name */
        private y f16010a;

        d(y yVar) {
            this.f16010a = yVar;
        }

        @Nullable
        public com.mapbox.mapboxsdk.annotations.a a(@NonNull c cVar) {
            List<com.mapbox.mapboxsdk.annotations.a> a2 = this.f16010a.a(cVar.f16009a);
            if (a2.size() > 0) {
                return a2.get(0);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull MapView mapView, a.e.d<com.mapbox.mapboxsdk.annotations.a> dVar, g gVar, com.mapbox.mapboxsdk.maps.c cVar, p pVar, t tVar, v vVar, y yVar) {
        this.f15986a = mapView;
        this.f15989d = dVar;
        this.f15987b = gVar;
        this.f15995j = cVar;
        this.f15997l = pVar;
        this.m = tVar;
        this.n = vVar;
        this.f15996k = yVar;
    }

    com.mapbox.mapboxsdk.annotations.a a(long j2) {
        return this.f15995j.a(j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public b b(n nVar) {
        this.f15991f = nVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f15997l.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f15988c.f();
    }

    /* compiled from: AnnotationManager.java */
    /* renamed from: com.mapbox.mapboxsdk.maps.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0157b {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final w f16000a;

        /* renamed from: b, reason: collision with root package name */
        private final int f16001b;

        /* renamed from: c, reason: collision with root package name */
        private Bitmap f16002c;

        /* renamed from: d, reason: collision with root package name */
        private int f16003d;

        /* renamed from: e, reason: collision with root package name */
        private int f16004e;

        /* renamed from: f, reason: collision with root package name */
        private PointF f16005f;

        /* renamed from: g, reason: collision with root package name */
        @NonNull
        private RectF f16006g;

        /* renamed from: h, reason: collision with root package name */
        @NonNull
        private RectF f16007h;

        /* renamed from: i, reason: collision with root package name */
        private long f16008i;

        C0157b(@NonNull n nVar) {
            new Rect();
            this.f16006g = new RectF();
            this.f16007h = new RectF();
            this.f16008i = -1L;
            this.f16000a = nVar.l();
            this.f16001b = (int) (Mapbox.getApplicationContext().getResources().getDisplayMetrics().density * 32.0f);
        }

        private void b(a aVar) {
            Iterator it = aVar.f15999b.iterator();
            while (it.hasNext()) {
                a(aVar, (Marker) it.next());
            }
        }

        public long a(@NonNull a aVar) {
            b(aVar);
            return this.f16008i;
        }

        private void a(@NonNull a aVar, Marker marker) {
            this.f16005f = this.f16000a.a(marker.d());
            this.f16002c = marker.c().a();
            this.f16004e = this.f16002c.getHeight();
            int i2 = this.f16004e;
            int i3 = this.f16001b;
            if (i2 < i3) {
                this.f16004e = i3;
            }
            this.f16003d = this.f16002c.getWidth();
            int i4 = this.f16003d;
            int i5 = this.f16001b;
            if (i4 < i5) {
                this.f16003d = i5;
            }
            this.f16006g.set(0.0f, 0.0f, this.f16003d, this.f16004e);
            RectF rectF = this.f16006g;
            PointF pointF = this.f16005f;
            rectF.offsetTo(pointF.x - (this.f16003d / 2), pointF.y - (this.f16004e / 2));
            a(aVar, marker, this.f16006g);
        }

        private void a(a aVar, @NonNull Marker marker, RectF rectF) {
            if (rectF.contains(aVar.a(), aVar.b())) {
                rectF.intersect(aVar.f15998a);
                if (a(rectF)) {
                    this.f16007h = new RectF(rectF);
                    this.f16008i = marker.a();
                }
            }
        }

        private boolean a(RectF rectF) {
            return rectF.width() * rectF.height() > this.f16007h.width() * this.f16007h.height();
        }
    }

    private void c(@NonNull com.mapbox.mapboxsdk.annotations.a aVar) {
        Logger.w("Mbgl-AnnotationManager", String.format("Attempting to update non-added %s with value %s", aVar.getClass().getCanonicalName(), aVar));
    }

    private void d(@NonNull Marker marker) {
        if (!this.f15990e.contains(marker)) {
            b(marker);
        } else {
            a(marker);
        }
    }

    @NonNull
    List<Marker> a(@NonNull RectF rectF) {
        return this.f15997l.a(rectF);
    }

    void b(@NonNull Marker marker) {
        if (this.f15990e.contains(marker)) {
            return;
        }
        if (!this.f15988c.e()) {
            a();
        }
        if (this.f15988c.a(marker) || this.f15988c.a() != null) {
            this.f15988c.a(marker.a(this.f15991f, this.f15986a));
        }
        this.f15990e.add(marker);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Polygon polygon) {
        if (!b(polygon)) {
            c(polygon);
        } else {
            this.m.a(polygon);
        }
    }

    private c c(PointF pointF) {
        float dimension = Mapbox.getApplicationContext().getResources().getDimension(com.mapbox.mapboxsdk.i.mapbox_eight_dp);
        float f2 = pointF.x;
        float f3 = pointF.y;
        return new c(new RectF(f2 - dimension, f3 - dimension, f2 + dimension, f3 + dimension));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Polyline polyline) {
        if (!b(polyline)) {
            c(polyline);
        } else {
            this.n.a(polyline);
        }
    }

    private boolean c(@NonNull Marker marker) {
        n.q qVar = this.f15992g;
        return qVar != null && qVar.a(marker);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public j b() {
        return this.f15988c;
    }

    private boolean b(@Nullable com.mapbox.mapboxsdk.annotations.a aVar) {
        return (aVar == null || aVar.a() == -1 || this.f15989d.b(aVar.a()) <= -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f15990e.isEmpty()) {
            return;
        }
        for (Marker marker : this.f15990e) {
            if (marker != null && marker.h()) {
                marker.g();
            }
        }
        this.f15990e.clear();
    }

    private a b(PointF pointF) {
        double a2 = this.f15987b.a();
        Double.isNaN(a2);
        double b2 = this.f15987b.b();
        Double.isNaN(b2);
        float f2 = pointF.x;
        float f3 = (int) (a2 * 1.5d);
        float f4 = pointF.y;
        float f5 = (int) (b2 * 1.5d);
        RectF rectF = new RectF(f2 - f3, f4 - f5, f2 + f3, f4 + f5);
        return new a(rectF, a(rectF));
    }

    private boolean b(long j2) {
        Marker marker = (Marker) a(j2);
        if (c(marker)) {
            return true;
        }
        d(marker);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Marker marker) {
        if (this.f15990e.contains(marker)) {
            if (marker.h()) {
                marker.g();
            }
            this.f15990e.remove(marker);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull n nVar) {
        int b2 = this.f15989d.b();
        for (int i2 = 0; i2 < b2; i2++) {
            com.mapbox.mapboxsdk.annotations.a a2 = this.f15989d.a(i2);
            if (a2 instanceof Marker) {
                Marker marker = (Marker) a2;
                marker.a(this.f15987b.a(marker.c()));
            }
        }
        for (Marker marker2 : this.f15990e) {
            if (marker2.h()) {
                marker2.g();
                marker2.a(nVar, this.f15986a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@NonNull PointF pointF) {
        long a2 = new C0157b(this.f15991f).a(b(pointF));
        if (a2 != -1 && b(a2)) {
            return true;
        }
        com.mapbox.mapboxsdk.annotations.a a3 = new d(this.f15996k).a(c(pointF));
        return a3 != null && a(a3);
    }

    private boolean a(com.mapbox.mapboxsdk.annotations.a aVar) {
        n.t tVar;
        n.s sVar;
        if ((aVar instanceof Polygon) && (sVar = this.f15993h) != null) {
            sVar.a((Polygon) aVar);
            return true;
        }
        if (!(aVar instanceof Polyline) || (tVar = this.f15994i) == null) {
            return false;
        }
        tVar.a((Polyline) aVar);
        return true;
    }
}
