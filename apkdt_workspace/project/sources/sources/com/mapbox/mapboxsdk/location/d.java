package com.mapbox.mapboxsdk.location;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.Layer;
import io.reactivex.rxjava3.annotations.SchedulerSupport;

/* compiled from: IndicatorLocationLayerRenderer.java */
/* loaded from: classes2.dex */
class d implements p {

    /* renamed from: a, reason: collision with root package name */
    private Style f15789a;

    /* renamed from: b, reason: collision with root package name */
    private final h f15790b;

    /* renamed from: c, reason: collision with root package name */
    private Layer f15791c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private LatLng f15792d;

    /* renamed from: e, reason: collision with root package name */
    private double f15793e = 0.0d;

    /* renamed from: f, reason: collision with root package name */
    private float f15794f = 0.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(h hVar) {
        this.f15790b = hVar;
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(double d2) {
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(float f2, @Nullable Float f3) {
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(LocationComponentOptions locationComponentOptions) {
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(Style style) {
        this.f15789a = style;
        this.f15791c = this.f15790b.b();
        LatLng latLng = this.f15792d;
        if (latLng != null) {
            a(latLng);
        }
        c(this.f15793e);
        c(Float.valueOf(this.f15794f));
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(String str, String str2, String str3, String str4, String str5) {
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(boolean z) {
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void b() {
        this.f15789a.b(this.f15791c);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void b(double d2) {
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void c(Float f2) {
        this.f15791c.a(q.a(f2));
        this.f15794f = f2.floatValue();
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void b(Float f2) {
        c(f2.floatValue());
    }

    private void b(boolean z) {
        Layer layer = this.f15791c;
        com.mapbox.mapboxsdk.style.layers.d<?>[] dVarArr = new com.mapbox.mapboxsdk.style.layers.d[1];
        dVarArr[0] = q.d(z ? "visible" : SchedulerSupport.NONE);
        layer.a(dVarArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(LatLng latLng) {
        this.f15791c.a((com.mapbox.mapboxsdk.style.layers.d<?>[]) new com.mapbox.mapboxsdk.style.layers.d[]{q.a(new Double[]{Double.valueOf(latLng.a()), Double.valueOf(latLng.b()), Double.valueOf(0.0d)})});
        this.f15792d = latLng;
    }

    private void c(double d2) {
        this.f15791c.a(q.a(Double.valueOf(d2)));
        this.f15793e = d2;
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(n nVar) {
        nVar.a(this.f15791c);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a() {
        b(false);
    }

    private void b(int i2, boolean z) {
        String str;
        String str2 = "mapbox-location-shadow-icon";
        String str3 = "";
        if (i2 == 4) {
            str3 = z ? "mapbox-location-stale-icon" : "mapbox-location-icon";
            str = z ? "mapbox-location-bearing-stale-icon" : "mapbox-location-bearing-icon";
        } else if (i2 == 8) {
            String str4 = z ? "mapbox-location-stale-icon" : "mapbox-location-icon";
            c(Float.valueOf(0.0f));
            str = str4;
            str2 = "";
        } else if (i2 != 18) {
            str = "";
            str2 = str;
        } else {
            str3 = z ? "mapbox-location-stale-icon" : "mapbox-location-icon";
            str = z ? "mapbox-location-background-stale-icon" : "mapbox-location-stroke-icon";
        }
        this.f15791c.a(q.c(str3), q.a(str), q.b(str2));
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(int i2, boolean z) {
        b(i2, z);
        b(true);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(float f2, int i2) {
        float[] a2 = com.mapbox.mapboxsdk.utils.b.a(i2);
        a2[3] = f2;
        com.mapbox.mapboxsdk.u.a.a a3 = com.mapbox.mapboxsdk.u.a.a.a(Float.valueOf(a2[0]), Float.valueOf(a2[1]), Float.valueOf(a2[2]), Float.valueOf(a2[3]));
        this.f15791c.a(q.b(a3), q.a(a3));
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(LatLng latLng) {
        b(latLng);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(Float f2) {
        c(f2.floatValue());
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(com.mapbox.mapboxsdk.u.a.a aVar) {
        this.f15791c.a(q.d(aVar), q.c(aVar), q.e(aVar));
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(boolean z, int i2) {
        b(i2, z);
    }

    @Override // com.mapbox.mapboxsdk.location.p
    public void a(int i2, @Nullable Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6) {
        if (bitmap != null) {
            this.f15789a.a("mapbox-location-shadow-icon", bitmap);
        } else {
            this.f15789a.c("mapbox-location-shadow-icon");
        }
        this.f15789a.a("mapbox-location-icon", bitmap5);
        this.f15789a.a("mapbox-location-stale-icon", bitmap6);
        if (i2 == 4) {
            this.f15789a.a("mapbox-location-bearing-icon", com.mapbox.mapboxsdk.utils.a.a(bitmap4, bitmap2, (bitmap4.getWidth() - bitmap2.getWidth()) / 2.0f, (bitmap4.getHeight() - bitmap2.getHeight()) / 2.0f));
            this.f15789a.a("mapbox-location-bearing-stale-icon", com.mapbox.mapboxsdk.utils.a.a(bitmap4, bitmap3, (bitmap4.getWidth() - bitmap3.getWidth()) / 2.0f, (bitmap4.getHeight() - bitmap3.getHeight()) / 2.0f));
            return;
        }
        this.f15789a.a("mapbox-location-stroke-icon", bitmap2);
        this.f15789a.a("mapbox-location-background-stale-icon", bitmap3);
        this.f15789a.a("mapbox-location-bearing-icon", bitmap4);
    }
}
