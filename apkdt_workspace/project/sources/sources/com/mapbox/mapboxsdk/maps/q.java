package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.geojson.Feature;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.style.sources.Source;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NativeMap.java */
/* loaded from: classes2.dex */
public interface q {
    double a(double d2);

    long a(Marker marker);

    @NonNull
    PointF a(@NonNull LatLng latLng);

    CameraPosition a(@NonNull LatLngBounds latLngBounds, int[] iArr, double d2, double d3);

    LatLng a(@NonNull PointF pointF);

    @NonNull
    List<Layer> a();

    @NonNull
    List<Feature> a(@NonNull PointF pointF, @Nullable String[] strArr, @Nullable com.mapbox.mapboxsdk.u.a.a aVar);

    @NonNull
    List<Feature> a(@NonNull RectF rectF, @Nullable String[] strArr, @Nullable com.mapbox.mapboxsdk.u.a.a aVar);

    void a(double d2, double d3, double d4, long j2);

    void a(double d2, double d3, long j2);

    void a(double d2, long j2);

    void a(double d2, @NonNull PointF pointF, long j2);

    void a(@IntRange(from = 0) int i2);

    void a(int i2, int i3);

    void a(long j2);

    void a(@NonNull Polygon polygon);

    void a(@NonNull Polyline polyline);

    void a(@NonNull LatLng latLng, double d2, double d3, double d4, double[] dArr);

    void a(@NonNull LatLng latLng, double d2, double d3, double d4, double[] dArr, long j2);

    void a(@Nullable LatLngBounds latLngBounds);

    void a(@NonNull Layer layer, @IntRange(from = 0) int i2);

    void a(@NonNull Layer layer, @NonNull String str);

    void a(@NonNull TransitionOptions transitionOptions);

    void a(@NonNull Source source);

    void a(String str);

    void a(String str, int i2, int i3, float f2, byte[] bArr);

    void a(boolean z);

    void a(double[] dArr);

    void a(Image[] imageArr);

    boolean a(@NonNull Layer layer);

    @NonNull
    long[] a(RectF rectF);

    @NonNull
    RectF b(RectF rectF);

    Layer b(String str);

    void b();

    void b(double d2);

    void b(@NonNull Layer layer);

    void b(@NonNull Layer layer, @NonNull String str);

    void b(boolean z);

    @NonNull
    List<Source> c();

    void c(double d2);

    void c(boolean z);

    boolean c(@NonNull String str);

    @NonNull
    long[] c(RectF rectF);

    @NonNull
    CameraPosition d();

    Source d(@NonNull String str);

    void d(double d2);

    void destroy();

    @NonNull
    String e();

    void e(double d2);

    void e(String str);

    double f();

    double f(String str);

    double g();

    void g(String str);

    double getMaxZoom();

    double getMinZoom();

    float getPixelRatio();

    double h();

    boolean h(@NonNull String str);

    void i(String str);

    boolean isDestroyed();

    void onLowMemory();
}
