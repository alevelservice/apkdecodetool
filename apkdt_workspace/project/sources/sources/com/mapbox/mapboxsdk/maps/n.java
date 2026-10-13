package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.UiThread;
import com.mapbox.android.gestures.AndroidGesturesManager;
import com.mapbox.geojson.Feature;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.Style;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MapboxMap.java */
@UiThread
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.q f16107a;

    /* renamed from: b, reason: collision with root package name */
    private final b0 f16108b;

    /* renamed from: c, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.w f16109c;

    /* renamed from: d, reason: collision with root package name */
    private final a0 f16110d;

    /* renamed from: e, reason: collision with root package name */
    private final com.mapbox.mapboxsdk.maps.e f16111e;

    /* renamed from: f, reason: collision with root package name */
    private final k f16112f;

    /* renamed from: g, reason: collision with root package name */
    private final List<Style.c> f16113g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    private final List<h> f16114h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private Style.c f16115i;

    /* renamed from: j, reason: collision with root package name */
    private com.mapbox.mapboxsdk.location.k f16116j;

    /* renamed from: k, reason: collision with root package name */
    private com.mapbox.mapboxsdk.maps.b f16117k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private Style f16118l;
    private boolean m;

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void b();
    }

    /* compiled from: MapboxMap.java */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface b {
        @Nullable
        View a(@NonNull Marker marker);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface c {
        void e();
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface d {
        void b();
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface e {
        void a();
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface f {
        void c(int i2);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface g {
        void a();

        void b();
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface h {
        void a();
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface i {
        void a();
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface j {
        void a(double d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface k {
        AndroidGesturesManager a();

        void a(AndroidGesturesManager androidGesturesManager, boolean z, boolean z2);

        void a(i iVar);

        void a(o oVar);

        void a(p pVar);

        void a(r rVar);

        void a(u uVar);

        void b(o oVar);

        void b(p pVar);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface l {
        boolean a(@NonNull Marker marker);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface m {
        void a(@NonNull Marker marker);
    }

    /* compiled from: MapboxMap.java */
    /* renamed from: com.mapbox.mapboxsdk.maps.n$n, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0159n {
        void a(@NonNull Marker marker);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface o {
        boolean a(@NonNull LatLng latLng);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface p {
        boolean b(@NonNull LatLng latLng);
    }

    /* compiled from: MapboxMap.java */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface q {
        boolean a(@NonNull Marker marker);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface r {
        void a(@NonNull com.mapbox.android.gestures.c cVar);

        void b(@NonNull com.mapbox.android.gestures.c cVar);

        void c(@NonNull com.mapbox.android.gestures.c cVar);
    }

    /* compiled from: MapboxMap.java */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface s {
        void a(@NonNull Polygon polygon);
    }

    /* compiled from: MapboxMap.java */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface t {
        void a(@NonNull Polyline polyline);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface u {
        void a(@NonNull com.mapbox.android.gestures.k kVar);

        void b(@NonNull com.mapbox.android.gestures.k kVar);

        void c(@NonNull com.mapbox.android.gestures.k kVar);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface v {
        void a(@NonNull com.mapbox.android.gestures.o oVar);

        void b(@NonNull com.mapbox.android.gestures.o oVar);

        void c(@NonNull com.mapbox.android.gestures.o oVar);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface w {
        void a(@NonNull com.mapbox.android.gestures.l lVar);

        void b(@NonNull com.mapbox.android.gestures.l lVar);

        void c(@NonNull com.mapbox.android.gestures.l lVar);
    }

    /* compiled from: MapboxMap.java */
    /* loaded from: classes2.dex */
    public interface x {
        void a(@NonNull Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(com.mapbox.mapboxsdk.maps.q qVar, a0 a0Var, b0 b0Var, com.mapbox.mapboxsdk.maps.w wVar, k kVar, com.mapbox.mapboxsdk.maps.e eVar, List<h> list) {
        this.f16107a = qVar;
        this.f16108b = b0Var;
        this.f16109c = wVar;
        this.f16110d = a0Var;
        this.f16112f = kVar;
        this.f16111e = eVar;
        this.f16114h = list;
    }

    private void A() {
        Iterator<h> it = this.f16114h.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Context context, @NonNull MapboxMapOptions mapboxMapOptions) {
        this.f16110d.a(this, mapboxMapOptions);
        this.f16108b.a(context, mapboxMapOptions);
        a(mapboxMapOptions.m());
        a(mapboxMapOptions);
        b(mapboxMapOptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Bundle bundle) {
        bundle.putParcelable("mapbox_cameraPosition", this.f16110d.b());
        bundle.putBoolean("mapbox_debugActive", p());
        this.f16108b.b(bundle);
    }

    @NonNull
    public AndroidGesturesManager c() {
        return this.f16112f.a();
    }

    public float d() {
        return this.f16109c.b();
    }

    @Nullable
    @Deprecated
    public b e() {
        return this.f16117k.b().a();
    }

    @NonNull
    public com.mapbox.mapboxsdk.location.k f() {
        return this.f16116j;
    }

    public double g() {
        return this.f16110d.c();
    }

    public double h() {
        return this.f16110d.d();
    }

    @Nullable
    public l i() {
        return this.f16117k.b().b();
    }

    @Nullable
    public m j() {
        return this.f16117k.b().c();
    }

    @Nullable
    public InterfaceC0159n k() {
        return this.f16117k.b().d();
    }

    @NonNull
    public com.mapbox.mapboxsdk.maps.w l() {
        return this.f16109c;
    }

    @Nullable
    public Style m() {
        Style style = this.f16118l;
        if (style == null || !style.e()) {
            return null;
        }
        return this.f16118l;
    }

    @NonNull
    public b0 n() {
        return this.f16108b;
    }

    public float o() {
        return this.f16109c.d();
    }

    public boolean p() {
        return this.m;
    }

    void q() {
        if (this.f16107a.isDestroyed()) {
            return;
        }
        Style style = this.f16118l;
        if (style != null) {
            style.f();
            this.f16116j.f();
            Style.c cVar = this.f16115i;
            if (cVar != null) {
                cVar.a(this.f16118l);
            }
            Iterator<Style.c> it = this.f16113g.iterator();
            while (it.hasNext()) {
                it.next().a(this.f16118l);
            }
        } else {
            com.mapbox.mapboxsdk.d.a("No style to provide.");
        }
        this.f16115i = null;
        this.f16113g.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        this.f16116j.e();
        Style style = this.f16118l;
        if (style != null) {
            style.a();
        }
        this.f16111e.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        this.f16115i = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        this.f16110d.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        this.f16110d.h();
        this.f16117k.c();
        this.f16117k.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        this.f16116j.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x() {
        this.f16116j.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y() {
        CameraPosition h2 = this.f16110d.h();
        if (h2 != null) {
            this.f16108b.a(h2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z() {
        this.f16117k.d();
    }

    private void b(@NonNull MapboxMapOptions mapboxMapOptions) {
        if (!mapboxMapOptions.z()) {
            a(0);
        } else {
            a(mapboxMapOptions.y());
        }
    }

    public void a(@NonNull Style.c cVar) {
        Style style = this.f16118l;
        if (style != null && style.e()) {
            cVar.a(this.f16118l);
        } else {
            this.f16113g.add(cVar);
        }
    }

    public void b(@FloatRange(from = 0.0d, to = 25.5d) double d2) {
        this.f16110d.d(d2);
    }

    @NonNull
    public final CameraPosition b() {
        return this.f16110d.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Bundle bundle) {
        CameraPosition cameraPosition = (CameraPosition) bundle.getParcelable("mapbox_cameraPosition");
        this.f16108b.a(bundle);
        if (cameraPosition != null) {
            a(com.mapbox.mapboxsdk.camera.b.a(new CameraPosition.b(cameraPosition).a()));
        }
        this.f16107a.b(bundle.getBoolean("mapbox_debugActive"));
    }

    public final void b(@NonNull com.mapbox.mapboxsdk.camera.a aVar, @Nullable a aVar2) {
        A();
        this.f16110d.a(this, aVar, aVar2);
    }

    public void b(@NonNull c cVar) {
        this.f16111e.b(cVar);
    }

    public void b(@NonNull f fVar) {
        this.f16111e.b(fVar);
    }

    public void b(@NonNull e eVar) {
        this.f16111e.b(eVar);
    }

    public void b(@NonNull o oVar) {
        this.f16112f.a(oVar);
    }

    public void a(@IntRange(from = 0) int i2) {
        this.f16107a.a(i2);
    }

    public void b(@NonNull p pVar) {
        this.f16112f.b(pVar);
    }

    public void a(@FloatRange(from = 0.0d, to = 25.5d) double d2) {
        this.f16110d.b(d2);
    }

    public void a() {
        this.f16110d.a();
    }

    public final void a(@NonNull com.mapbox.mapboxsdk.camera.a aVar) {
        b(aVar, null);
    }

    public final void a(@NonNull com.mapbox.mapboxsdk.camera.a aVar, @Nullable a aVar2) {
        a(aVar, 300, aVar2);
    }

    public final void a(@NonNull com.mapbox.mapboxsdk.camera.a aVar, int i2, @Nullable a aVar2) {
        if (i2 > 0) {
            A();
            this.f16110d.a(this, aVar, i2, aVar2);
            return;
        }
        throw new IllegalArgumentException("Null duration passed into animateCamera");
    }

    public void a(float f2, float f3) {
        a(f2, f3, 0L);
    }

    public void a(float f2, float f3, long j2) {
        A();
        this.f16107a.a(f2, f3, j2);
    }

    public void a(double d2, float f2, float f3, long j2) {
        A();
        this.f16110d.a(d2, f2, f3, j2);
    }

    public void a(boolean z) {
        this.m = z;
        this.f16107a.b(z);
    }

    private void a(@NonNull MapboxMapOptions mapboxMapOptions) {
        String a2 = mapboxMapOptions.a();
        if (TextUtils.isEmpty(a2)) {
            return;
        }
        this.f16107a.e(a2);
    }

    public void a(Style.b bVar, Style.c cVar) {
        this.f16115i = cVar;
        this.f16116j.h();
        Style style = this.f16118l;
        if (style != null) {
            style.a();
        }
        this.f16118l = bVar.a(this.f16107a);
        if (!TextUtils.isEmpty(bVar.b())) {
            this.f16107a.i(bVar.b());
        } else if (!TextUtils.isEmpty(bVar.a())) {
            this.f16107a.a(bVar.a());
        } else {
            this.f16107a.a("{\"version\": 8,\"sources\": {},\"layers\": []}");
        }
    }

    @Deprecated
    public void a(@NonNull Polyline polyline) {
        this.f16117k.a(polyline);
    }

    @Deprecated
    public void a(@NonNull Polygon polygon) {
        this.f16117k.a(polygon);
    }

    @Deprecated
    public void a(@NonNull Marker marker) {
        this.f16117k.a(marker);
    }

    public void a(@Nullable LatLngBounds latLngBounds) {
        this.f16107a.a(latLngBounds);
    }

    @Nullable
    public CameraPosition a(@NonNull LatLngBounds latLngBounds, @NonNull @Size(4) int[] iArr) {
        return a(latLngBounds, iArr, this.f16110d.e(), this.f16110d.g());
    }

    @Nullable
    public CameraPosition a(@NonNull LatLngBounds latLngBounds, @NonNull @Size(4) int[] iArr, @FloatRange(from = 0.0d, to = 360.0d) double d2, @FloatRange(from = 0.0d, to = 60.0d) double d3) {
        return this.f16107a.a(latLngBounds, iArr, d2, d3);
    }

    @Deprecated
    public void a(int i2, int i3, int i4, int i5) {
        this.f16109c.a(new int[]{i2, i3, i4, i5});
        this.f16108b.w();
    }

    public void a(@NonNull c cVar) {
        this.f16111e.a(cVar);
    }

    public void a(@NonNull f fVar) {
        this.f16111e.a(fVar);
    }

    public void a(@NonNull e eVar) {
        this.f16111e.a(eVar);
    }

    public void a(@NonNull i iVar) {
        this.f16112f.a(iVar);
    }

    public void a(@NonNull r rVar) {
        this.f16112f.a(rVar);
    }

    public void a(@NonNull u uVar) {
        this.f16112f.a(uVar);
    }

    public void a(@NonNull AndroidGesturesManager androidGesturesManager, boolean z, boolean z2) {
        this.f16112f.a(androidGesturesManager, z, z2);
    }

    public void a(@NonNull o oVar) {
        this.f16112f.b(oVar);
    }

    public void a(@NonNull p pVar) {
        this.f16112f.a(pVar);
    }

    @NonNull
    public List<Feature> a(@NonNull PointF pointF, @Nullable String... strArr) {
        return this.f16107a.a(pointF, strArr, (com.mapbox.mapboxsdk.u.a.a) null);
    }

    @NonNull
    public List<Feature> a(@NonNull PointF pointF, @Nullable com.mapbox.mapboxsdk.u.a.a aVar, @Nullable String... strArr) {
        return this.f16107a.a(pointF, strArr, aVar);
    }

    @NonNull
    public List<Feature> a(@NonNull RectF rectF, @Nullable com.mapbox.mapboxsdk.u.a.a aVar, @Nullable String... strArr) {
        return this.f16107a.a(rectF, strArr, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mapbox.mapboxsdk.location.k kVar) {
        this.f16116j = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mapbox.mapboxsdk.maps.b bVar) {
        bVar.b(this);
        this.f16117k = bVar;
    }
}
