package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.geometry.VisibleRegion;
import java.util.ArrayList;

/* compiled from: Projection.java */
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final q f16155a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final MapView f16156b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(@NonNull q qVar, @NonNull MapView mapView) {
        this.f16155a = qVar;
        this.f16156b = mapView;
    }

    static double b(double d2) {
        return ((d2 % 360.0d) * 3.141592653589793d) / 180.0d;
    }

    static double c(double d2) {
        return ((d2 % 6.283185307179586d) * 180.0d) / 3.141592653589793d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr) {
        double[] dArr = new double[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            dArr[i2] = iArr[i2];
        }
        this.f16155a.a(dArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f16156b.getHeight();
    }

    @NonNull
    public VisibleRegion c() {
        return a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.f16156b.getWidth();
    }

    int[] a() {
        double[] dArr = this.f16155a.d().padding;
        return new int[]{(int) dArr[0], (int) dArr[1], (int) dArr[2], (int) dArr[3]};
    }

    public double a(@FloatRange(from = -90.0d, to = 90.0d) double d2) {
        return this.f16155a.a(d2);
    }

    @NonNull
    public LatLng a(@NonNull PointF pointF) {
        return this.f16155a.a(pointF);
    }

    @NonNull
    public VisibleRegion a(boolean z) {
        float f2;
        float height;
        float f3;
        float f4 = 0.0f;
        if (z) {
            f3 = this.f16156b.getWidth();
            height = this.f16156b.getHeight();
            f2 = 0.0f;
        } else {
            int[] a2 = a();
            float f5 = a2[0];
            float width = this.f16156b.getWidth() - a2[2];
            f2 = a2[1];
            height = this.f16156b.getHeight() - a2[3];
            f4 = f5;
            f3 = width;
        }
        LatLng a3 = a(new PointF(((f3 - f4) / 2.0f) + f4, ((height - f2) / 2.0f) + f2));
        LatLng a4 = a(new PointF(f4, f2));
        LatLng a5 = a(new PointF(f3, f2));
        LatLng a6 = a(new PointF(f3, height));
        LatLng a7 = a(new PointF(f4, height));
        ArrayList<LatLng> arrayList = new ArrayList();
        arrayList.add(a5);
        arrayList.add(a6);
        arrayList.add(a7);
        arrayList.add(a4);
        double d2 = 0.0d;
        double d3 = -90.0d;
        double d4 = 90.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        for (LatLng latLng : arrayList) {
            if (a(a3, latLng) >= d2) {
                double a8 = a(latLng.b(), a3.b());
                if (a8 > d6) {
                    d7 = latLng.b();
                    d6 = a8;
                }
            } else {
                double a9 = a(a3.b(), latLng.b());
                if (a9 > d5) {
                    d8 = latLng.b();
                    d5 = a9;
                }
            }
            if (d3 < latLng.a()) {
                d3 = latLng.a();
            }
            if (d4 > latLng.a()) {
                d4 = latLng.a();
            }
            d2 = 0.0d;
        }
        if (d7 < d8) {
            return new VisibleRegion(a4, a5, a7, a6, LatLngBounds.b(d3, d7 + 360.0d, d4, d8));
        }
        return new VisibleRegion(a4, a5, a7, a6, LatLngBounds.b(d3, d7, d4, d8));
    }

    static double a(@NonNull LatLng latLng, @NonNull LatLng latLng2) {
        double b2 = b(latLng.b());
        double b3 = b(latLng2.b());
        double b4 = b(latLng.a());
        double b5 = b(latLng2.a());
        double d2 = b3 - b2;
        return c(Math.atan2(Math.sin(d2) * Math.cos(b5), (Math.cos(b4) * Math.sin(b5)) - ((Math.sin(b4) * Math.cos(b5)) * Math.cos(d2))));
    }

    static double a(double d2, double d3) {
        double abs = Math.abs(d2 - d3);
        return d2 > d3 ? abs : 360.0d - abs;
    }

    @NonNull
    public PointF a(@NonNull LatLng latLng) {
        return this.f16155a.a(latLng);
    }
}
