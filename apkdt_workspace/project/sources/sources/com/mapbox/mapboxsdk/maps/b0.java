package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.maps.widgets.CompassView;

/* compiled from: UiSettings.java */
/* loaded from: classes2.dex */
public final class b0 {

    @Nullable
    private PointF A;
    private double E;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final f f16011a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final MapView f16012b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private final w f16013c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    CompassView f16014d;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    ImageView f16016f;

    /* renamed from: h, reason: collision with root package name */
    private d f16018h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    ImageView f16019i;

    /* renamed from: k, reason: collision with root package name */
    private final float f16021k;

    /* renamed from: e, reason: collision with root package name */
    private final int[] f16015e = new int[4];

    /* renamed from: g, reason: collision with root package name */
    private final int[] f16017g = new int[4];

    /* renamed from: j, reason: collision with root package name */
    private final int[] f16020j = new int[4];

    /* renamed from: l, reason: collision with root package name */
    private boolean f16022l = true;
    private boolean m = true;
    private boolean n = true;
    private boolean o = true;
    private boolean p = true;
    private boolean q = true;
    private boolean r = true;
    private boolean s = true;
    private boolean t = true;
    private boolean u = true;
    private boolean v = true;
    private boolean w = true;
    private boolean x = true;
    private float y = 1.0f;
    private boolean z = true;

    @VisibleForTesting
    boolean B = false;

    @VisibleForTesting
    boolean C = false;

    @VisibleForTesting
    boolean D = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(@NonNull w wVar, @NonNull f fVar, float f2, MapView mapView) {
        this.f16013c = wVar;
        this.f16011a = fVar;
        this.f16021k = f2;
        this.f16012b = mapView;
    }

    private void c(Bundle bundle) {
        if (bundle.getBoolean("mapbox_atrrEnabled") && !this.C) {
            this.f16016f = this.f16012b.initialiseAttributionView();
            this.C = true;
        }
        a(bundle.getBoolean("mapbox_atrrEnabled"));
        a(bundle.getInt("mapbox_attrGravity"));
        a(bundle.getInt("mapbox_attrMarginLeft"), bundle.getInt("mapbox_attrMarginTop"), bundle.getInt("mapbox_attrMarginRight"), bundle.getInt("mapbox_atrrMarginBottom"));
    }

    private void d(Bundle bundle) {
        if (bundle.getBoolean("mapbox_compassEnabled") && !this.B) {
            this.f16014d = this.f16012b.initialiseCompassView();
            this.B = true;
        }
        b(bundle.getBoolean("mapbox_compassEnabled"));
        c(bundle.getInt("mapbox_compassGravity"));
        b(bundle.getInt("mapbox_compassMarginLeft"), bundle.getInt("mapbox_compassMarginTop"), bundle.getInt("mapbox_compassMarginRight"), bundle.getInt("mapbox_compassMarginBottom"));
        c(bundle.getBoolean("mapbox_compassFade"));
        a(com.mapbox.mapboxsdk.utils.a.a(this.f16012b.getContext(), bundle.getByteArray("mapbox_compassImage")));
    }

    private void g(Bundle bundle) {
        h(bundle.getBoolean("mapbox_horizontalScrollEnabled"));
        r(bundle.getBoolean("mapbox_zoomEnabled"));
        p(bundle.getBoolean("mapbox_scrollEnabled"));
        m(bundle.getBoolean("mapbox_rotateEnabled"));
        q(bundle.getBoolean("mapbox_tiltEnabled"));
        f(bundle.getBoolean("mapbox_doubleTapEnabled"));
        o(bundle.getBoolean("mapbox_scaleAnimationEnabled"));
        n(bundle.getBoolean("mapbox_rotateAnimationEnabled"));
        g(bundle.getBoolean("mapbox_flingAnimationEnabled"));
        i(bundle.getBoolean("mapbox_increaseRotateThreshold"));
        e(bundle.getBoolean("mapbox_disableRotateWhenScaling"));
        j(bundle.getBoolean("mapbox_increaseScaleThreshold"));
        l(bundle.getBoolean("mapbox_quickZoom"));
        a(bundle.getFloat("mapbox_zoomRate", 1.0f));
    }

    private void h(Bundle bundle) {
        if (bundle.getBoolean("mapbox_logoEnabled") && !this.D) {
            this.f16019i = this.f16012b.initialiseLogoView();
            this.D = true;
        }
        k(bundle.getBoolean("mapbox_logoEnabled"));
        d(bundle.getInt("mapbox_logoGravity"));
        c(bundle.getInt("mapbox_logoMarginLeft"), bundle.getInt("mapbox_logoMarginTop"), bundle.getInt("mapbox_logoMarginRight"), bundle.getInt("mapbox_logoMarginBottom"));
    }

    private void i(Bundle bundle) {
        bundle.putInt("mapbox_attrGravity", b());
        bundle.putInt("mapbox_attrMarginLeft", d());
        bundle.putInt("mapbox_attrMarginTop", f());
        bundle.putInt("mapbox_attrMarginRight", e());
        bundle.putInt("mapbox_atrrMarginBottom", c());
        bundle.putBoolean("mapbox_atrrEnabled", x());
    }

    private void j(Bundle bundle) {
        bundle.putBoolean("mapbox_compassEnabled", y());
        bundle.putInt("mapbox_compassGravity", g());
        bundle.putInt("mapbox_compassMarginLeft", j());
        bundle.putInt("mapbox_compassMarginTop", l());
        bundle.putInt("mapbox_compassMarginBottom", i());
        bundle.putInt("mapbox_compassMarginRight", k());
        bundle.putBoolean("mapbox_compassFade", z());
        bundle.putByteArray("mapbox_compassImage", com.mapbox.mapboxsdk.utils.a.b(h()));
    }

    private void m(Bundle bundle) {
        bundle.putBoolean("mapbox_horizontalScrollEnabled", E());
        bundle.putBoolean("mapbox_zoomEnabled", O());
        bundle.putBoolean("mapbox_scrollEnabled", M());
        bundle.putBoolean("mapbox_rotateEnabled", J());
        bundle.putBoolean("mapbox_tiltEnabled", N());
        bundle.putBoolean("mapbox_doubleTapEnabled", C());
        bundle.putBoolean("mapbox_scaleAnimationEnabled", L());
        bundle.putBoolean("mapbox_rotateAnimationEnabled", K());
        bundle.putBoolean("mapbox_flingAnimationEnabled", D());
        bundle.putBoolean("mapbox_increaseRotateThreshold", F());
        bundle.putBoolean("mapbox_disableRotateWhenScaling", B());
        bundle.putBoolean("mapbox_increaseScaleThreshold", G());
        bundle.putBoolean("mapbox_quickZoom", I());
        bundle.putFloat("mapbox_zoomRate", v());
    }

    private void n(Bundle bundle) {
        bundle.putInt("mapbox_logoGravity", o());
        bundle.putInt("mapbox_logoMarginLeft", q());
        bundle.putInt("mapbox_logoMarginTop", s());
        bundle.putInt("mapbox_logoMarginRight", r());
        bundle.putInt("mapbox_logoMarginBottom", p());
        bundle.putBoolean("mapbox_logoEnabled", H());
    }

    public boolean A() {
        return this.z;
    }

    public boolean B() {
        return this.w;
    }

    public boolean C() {
        return this.q;
    }

    public boolean D() {
        return this.u;
    }

    public boolean E() {
        return this.p;
    }

    @Deprecated
    public boolean F() {
        return this.v;
    }

    public boolean G() {
        return this.x;
    }

    public boolean H() {
        ImageView imageView = this.f16019i;
        return imageView != null && imageView.getVisibility() == 0;
    }

    public boolean I() {
        return this.r;
    }

    public boolean J() {
        return this.f16022l;
    }

    public boolean K() {
        return this.t;
    }

    public boolean L() {
        return this.s;
    }

    public boolean M() {
        return this.o;
    }

    public boolean N() {
        return this.m;
    }

    public boolean O() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Context context, @NonNull MapboxMapOptions mapboxMapOptions) {
        Resources resources = context.getResources();
        a(mapboxMapOptions);
        if (mapboxMapOptions.g()) {
            a(mapboxMapOptions, resources);
        }
        if (mapboxMapOptions.r()) {
            b(mapboxMapOptions, resources);
        }
        if (mapboxMapOptions.b()) {
            b(context, mapboxMapOptions);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Bundle bundle) {
        m(bundle);
        j(bundle);
        n(bundle);
        i(bundle);
        k(bundle);
        l(bundle);
    }

    @Px
    public int e() {
        return this.f16017g[2];
    }

    @Px
    public int f() {
        return this.f16017g[1];
    }

    @Px
    public int k() {
        return this.f16015e[2];
    }

    @Px
    public int l() {
        return this.f16015e[1];
    }

    public int o() {
        ImageView imageView = this.f16019i;
        if (imageView != null) {
            return ((FrameLayout.LayoutParams) imageView.getLayoutParams()).gravity;
        }
        return -1;
    }

    @Px
    public int p() {
        return this.f16020j[3];
    }

    @Px
    public int q() {
        return this.f16020j[0];
    }

    @Px
    public int r() {
        return this.f16020j[2];
    }

    @Px
    public int s() {
        return this.f16020j[1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float t() {
        return this.f16021k;
    }

    public float u() {
        return this.f16013c.d();
    }

    public float v() {
        return this.y;
    }

    public void w() {
        c(q(), s(), r(), p());
        b(y());
        b(j(), l(), k(), i());
        a(d(), f(), e(), c());
    }

    public boolean x() {
        ImageView imageView = this.f16016f;
        return imageView != null && imageView.getVisibility() == 0;
    }

    public boolean y() {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            return compassView.isEnabled();
        }
        return false;
    }

    public boolean z() {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            return compassView.isFadeCompassViewFacingNorth();
        }
        return false;
    }

    private void e(Bundle bundle) {
        d(bundle.getBoolean("mapbox_deselectMarkerOnTap"));
    }

    public void f(boolean z) {
        this.q = z;
    }

    public void k(boolean z) {
        if (z && !this.D) {
            MapView mapView = this.f16012b;
            b(mapView.mapboxMapOptions, mapView.getContext().getResources());
        }
        ImageView imageView = this.f16019i;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void l(boolean z) {
        this.r = z;
    }

    public void p(boolean z) {
        this.o = z;
    }

    public void q(boolean z) {
        this.m = z;
    }

    public void r(boolean z) {
        this.n = z;
    }

    private void f(Bundle bundle) {
        PointF pointF = (PointF) bundle.getParcelable("mapbox_userFocalPoint");
        if (pointF != null) {
            a(pointF);
        }
    }

    private void l(Bundle bundle) {
        bundle.putParcelable("mapbox_userFocalPoint", m());
    }

    public void e(boolean z) {
        this.w = z;
    }

    public void o(boolean z) {
        this.s = z;
    }

    private void k(Bundle bundle) {
        bundle.putBoolean("mapbox_deselectMarkerOnTap", A());
    }

    private void b(MapboxMapOptions mapboxMapOptions, @NonNull Resources resources) {
        this.D = true;
        this.f16019i = this.f16012b.initialiseLogoView();
        k(mapboxMapOptions.r());
        d(mapboxMapOptions.s());
        a(resources, mapboxMapOptions.t());
    }

    @Px
    public int i() {
        return this.f16015e[3];
    }

    public void n(boolean z) {
        this.t = z;
    }

    @Deprecated
    public void i(boolean z) {
        this.v = z;
    }

    public float n() {
        return this.f16013c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Bundle bundle) {
        g(bundle);
        d(bundle);
        h(bundle);
        c(bundle);
        e(bundle);
        f(bundle);
    }

    @Px
    public int j() {
        return this.f16015e[0];
    }

    public void j(boolean z) {
        this.x = z;
    }

    private void b(@NonNull Context context, MapboxMapOptions mapboxMapOptions) {
        this.C = true;
        this.f16016f = this.f16012b.initialiseAttributionView();
        a(mapboxMapOptions.b());
        a(mapboxMapOptions.c());
        a(context, mapboxMapOptions.d());
        int e2 = mapboxMapOptions.e();
        if (e2 == -1) {
            e2 = com.mapbox.mapboxsdk.utils.b.a(context);
        }
        b(e2);
    }

    @UiThread
    public void c(int i2) {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            a(compassView, i2);
        }
    }

    @Nullable
    public Drawable h() {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            return compassView.getCompassImage();
        }
        return null;
    }

    public void c(boolean z) {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            compassView.fadeCompassViewFacingNorth(z);
        }
    }

    public void h(boolean z) {
        this.p = z;
    }

    private void a(MapboxMapOptions mapboxMapOptions) {
        r(mapboxMapOptions.H());
        p(mapboxMapOptions.D());
        h(mapboxMapOptions.p());
        m(mapboxMapOptions.C());
        q(mapboxMapOptions.F());
        f(mapboxMapOptions.n());
        l(mapboxMapOptions.A());
    }

    public void m(boolean z) {
        this.f16022l = z;
    }

    public void c(@Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        ImageView imageView = this.f16019i;
        if (imageView != null) {
            a(imageView, this.f16020j, i2, i3, i4, i5);
        }
    }

    public void d(int i2) {
        ImageView imageView = this.f16019i;
        if (imageView != null) {
            a(imageView, i2);
        }
    }

    @Nullable
    public PointF m() {
        return this.A;
    }

    public int g() {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            return ((FrameLayout.LayoutParams) compassView.getLayoutParams()).gravity;
        }
        return -1;
    }

    @Px
    public int c() {
        return this.f16017g[3];
    }

    @Px
    public int d() {
        return this.f16017g[0];
    }

    public void d(boolean z) {
        this.z = z;
    }

    public void g(boolean z) {
        this.u = z;
    }

    public void b(boolean z) {
        if (z && !this.B) {
            MapView mapView = this.f16012b;
            a(mapView.mapboxMapOptions, mapView.getContext().getResources());
        }
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            compassView.setEnabled(z);
            this.f16014d.update(this.E);
        }
    }

    private void a(MapboxMapOptions mapboxMapOptions, @NonNull Resources resources) {
        this.B = true;
        this.f16014d = this.f16012b.initialiseCompassView();
        b(mapboxMapOptions.g());
        c(mapboxMapOptions.i());
        int[] k2 = mapboxMapOptions.k();
        if (k2 != null) {
            b(k2[0], k2[1], k2[2], k2[3]);
        } else {
            int dimension = (int) resources.getDimension(com.mapbox.mapboxsdk.i.mapbox_four_dp);
            b(dimension, dimension, dimension, dimension);
        }
        c(mapboxMapOptions.h());
        if (mapboxMapOptions.j() == null) {
            mapboxMapOptions.a(androidx.core.content.res.e.b(resources, com.mapbox.mapboxsdk.j.mapbox_compass_icon, null));
        }
        a(mapboxMapOptions.j());
    }

    @UiThread
    public void b(@Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            a(compassView, this.f16015e, i2, i3, i4, i5);
        }
    }

    public int b() {
        ImageView imageView = this.f16016f;
        if (imageView != null) {
            return ((FrameLayout.LayoutParams) imageView.getLayoutParams()).gravity;
        }
        return -1;
    }

    public void b(@ColorInt int i2) {
        if (this.f16016f == null) {
            return;
        }
        if (Color.alpha(i2) == 0) {
            ImageView imageView = this.f16016f;
            com.mapbox.mapboxsdk.utils.b.a(imageView, androidx.core.content.a.a(imageView.getContext(), com.mapbox.mapboxsdk.h.mapbox_blue));
        } else {
            com.mapbox.mapboxsdk.utils.b.a(this.f16016f, i2);
        }
    }

    private void a(@NonNull Resources resources, @Nullable int[] iArr) {
        if (iArr != null) {
            c(iArr[0], iArr[1], iArr[2], iArr[3]);
        } else {
            int dimension = (int) resources.getDimension(com.mapbox.mapboxsdk.i.mapbox_four_dp);
            c(dimension, dimension, dimension, dimension);
        }
    }

    private void a(@NonNull Context context, @Nullable int[] iArr) {
        if (iArr != null) {
            a(iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        Resources resources = context.getResources();
        int dimension = (int) resources.getDimension(com.mapbox.mapboxsdk.i.mapbox_four_dp);
        a((int) resources.getDimension(com.mapbox.mapboxsdk.i.mapbox_ninety_two_dp), dimension, dimension, dimension);
    }

    public void a(@NonNull Drawable drawable) {
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            compassView.setCompassImage(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull CameraPosition cameraPosition) {
        this.E = -cameraPosition.bearing;
        CompassView compassView = this.f16014d;
        if (compassView != null) {
            compassView.update(this.E);
        }
    }

    public void a(boolean z) {
        if (z && !this.C) {
            b(this.f16012b.getContext(), this.f16012b.mapboxMapOptions);
        }
        ImageView imageView = this.f16016f;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Nullable
    public d a() {
        return this.f16018h;
    }

    public void a(int i2) {
        ImageView imageView = this.f16016f;
        if (imageView != null) {
            a(imageView, i2);
        }
    }

    public void a(@Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        ImageView imageView = this.f16016f;
        if (imageView != null) {
            a(imageView, this.f16017g, i2, i3, i4, i5);
        }
    }

    public void a(@FloatRange(from = 0.0d) float f2) {
        this.y = f2;
    }

    public void a(@Nullable PointF pointF) {
        this.A = pointF;
        this.f16011a.a(pointF);
    }

    private void a(@NonNull View view, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    private void a(@NonNull View view, int[] iArr, int i2, int i3, int i4, int i5) {
        iArr[0] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        iArr[3] = i5;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.setMargins(i2, i3, i4, i5);
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(i2);
            layoutParams.setMarginEnd(i4);
        }
        view.setLayoutParams(layoutParams);
    }
}
