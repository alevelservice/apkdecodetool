package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.geometry.ProjectedMeters;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.n;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.style.light.Light;
import com.mapbox.mapboxsdk.style.sources.Source;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class NativeMapView implements q {

    /* renamed from: a, reason: collision with root package name */
    private final FileSource f15944a;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private c f15946c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private a f15947d;

    /* renamed from: e, reason: collision with root package name */
    private final float f15948e;

    /* renamed from: g, reason: collision with root package name */
    private double[] f15950g;

    /* renamed from: h, reason: collision with root package name */
    private n.x f15951h;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15949f = false;

    @Keep
    private long nativePtr = 0;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Thread f15945b = Thread.currentThread();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a extends b {
        void a(String str);

        void a(boolean z);

        void b();

        void b(String str);

        void b(boolean z);

        void c();

        void c(boolean z);

        boolean c(String str);

        void d();

        void d(String str);

        void d(boolean z);

        void e();

        void g();
    }

    /* loaded from: classes2.dex */
    interface b {
        void a();

        void f();
    }

    /* loaded from: classes2.dex */
    public interface c {
        @Nullable
        Bitmap getViewContent();
    }

    static {
        com.mapbox.mapboxsdk.b.a();
    }

    public NativeMapView(Context context, float f2, boolean z, c cVar, a aVar, MapRenderer mapRenderer) {
        this.f15946c = cVar;
        this.f15944a = FileSource.d(context);
        this.f15948e = f2;
        this.f15947d = aVar;
        nativeInitialize(this, this.f15944a, mapRenderer, f2, z);
    }

    private boolean j(String str) {
        if (this.f15945b == Thread.currentThread()) {
            if (this.f15949f && !TextUtils.isEmpty(str)) {
                String format = String.format("You're calling `%s` after the `MapView` was destroyed, were you invoking it after `onDestroy()`?", str);
                Logger.e("Mbgl-NativeMapView", format);
                com.mapbox.mapboxsdk.d.a(format);
            }
            return this.f15949f;
        }
        throw new com.mapbox.mapboxsdk.r.a(String.format("Map interactions should happen on the UI thread. Method invoked from wrong thread is %s.", str));
    }

    @Keep
    private native void nativeAddAnnotationIcon(String str, int i2, int i3, float f2, byte[] bArr);

    @Keep
    private native void nativeAddImage(String str, Bitmap bitmap, float f2, boolean z);

    @Keep
    private native void nativeAddImages(Image[] imageArr);

    @Keep
    private native void nativeAddLayer(long j2, String str);

    @Keep
    private native void nativeAddLayerAbove(long j2, String str);

    @Keep
    private native void nativeAddLayerAt(long j2, int i2);

    @NonNull
    @Keep
    private native long[] nativeAddMarkers(Marker[] markerArr);

    @NonNull
    @Keep
    private native long[] nativeAddPolygons(Polygon[] polygonArr);

    @NonNull
    @Keep
    private native long[] nativeAddPolylines(Polyline[] polylineArr);

    @Keep
    private native void nativeAddSource(Source source, long j2);

    @Keep
    private native void nativeCancelTransitions();

    @Keep
    private native void nativeDestroy();

    @Keep
    private native void nativeEaseTo(double d2, double d3, double d4, long j2, double d5, double d6, double[] dArr, boolean z);

    @Keep
    private native void nativeFlyTo(double d2, double d3, double d4, long j2, double d5, double d6, double[] dArr);

    @Keep
    private native double nativeGetBearing();

    @NonNull
    @Keep
    private native CameraPosition nativeGetCameraForGeometry(Geometry geometry, double d2, double d3, double d4, double d5, double d6, double d7);

    @NonNull
    @Keep
    private native CameraPosition nativeGetCameraForLatLngBounds(LatLngBounds latLngBounds, double d2, double d3, double d4, double d5, double d6, double d7);

    @NonNull
    @Keep
    private native CameraPosition nativeGetCameraPosition();

    @Keep
    private native boolean nativeGetDebug();

    @NonNull
    @Keep
    private native Bitmap nativeGetImage(String str);

    @NonNull
    @Keep
    private native LatLng nativeGetLatLng();

    @NonNull
    @Keep
    private native Layer nativeGetLayer(String str);

    @NonNull
    @Keep
    private native Layer[] nativeGetLayers();

    @NonNull
    @Keep
    private native Light nativeGetLight();

    @Keep
    private native double nativeGetMaxPitch();

    @Keep
    private native double nativeGetMaxZoom();

    @Keep
    private native double nativeGetMetersPerPixelAtLatitude(double d2, double d3);

    @Keep
    private native double nativeGetMinPitch();

    @Keep
    private native double nativeGetMinZoom();

    @Keep
    private native double nativeGetPitch();

    @Keep
    private native boolean nativeGetPrefetchTiles();

    @Keep
    private native int nativeGetPrefetchZoomDelta();

    @NonNull
    @Keep
    private native Source nativeGetSource(String str);

    @NonNull
    @Keep
    private native Source[] nativeGetSources();

    @NonNull
    @Keep
    private native String nativeGetStyleJson();

    @NonNull
    @Keep
    private native String nativeGetStyleUrl();

    @Keep
    private native double nativeGetTopOffsetPixelsForAnnotationSymbol(String str);

    @Keep
    private native long nativeGetTransitionDelay();

    @Keep
    private native long nativeGetTransitionDuration();

    @NonNull
    @Keep
    private native TransitionOptions nativeGetTransitionOptions();

    @Keep
    private native void nativeGetVisibleCoordinateBounds(double[] dArr);

    @Keep
    private native double nativeGetZoom();

    @Keep
    private native void nativeInitialize(NativeMapView nativeMapView, FileSource fileSource, MapRenderer mapRenderer, float f2, boolean z);

    @Keep
    private native boolean nativeIsFullyLoaded();

    @Keep
    private native void nativeJumpTo(double d2, double d3, double d4, double d5, double d6, double[] dArr);

    @NonNull
    @Keep
    private native LatLng nativeLatLngForPixel(float f2, float f3);

    @NonNull
    @Keep
    private native LatLng nativeLatLngForProjectedMeters(double d2, double d3);

    @Keep
    private native void nativeLatLngsForPixels(double[] dArr, double[] dArr2, float f2);

    @Keep
    private native void nativeMoveBy(double d2, double d3, long j2);

    @Keep
    private native void nativeOnLowMemory();

    @NonNull
    @Keep
    private native PointF nativePixelForLatLng(double d2, double d3);

    @Keep
    private native void nativePixelsForLatLngs(double[] dArr, double[] dArr2, float f2);

    @NonNull
    @Keep
    private native ProjectedMeters nativeProjectedMetersForLatLng(double d2, double d3);

    @NonNull
    @Keep
    private native long[] nativeQueryPointAnnotations(RectF rectF);

    @NonNull
    @Keep
    private native Feature[] nativeQueryRenderedFeaturesForBox(float f2, float f3, float f4, float f5, String[] strArr, Object[] objArr);

    @NonNull
    @Keep
    private native Feature[] nativeQueryRenderedFeaturesForPoint(float f2, float f3, String[] strArr, Object[] objArr);

    @NonNull
    @Keep
    private native long[] nativeQueryShapeAnnotations(RectF rectF);

    @Keep
    private native void nativeRemoveAnnotationIcon(String str);

    @Keep
    private native void nativeRemoveAnnotations(long[] jArr);

    @Keep
    private native void nativeRemoveImage(String str);

    @Keep
    private native boolean nativeRemoveLayer(long j2);

    @Keep
    private native boolean nativeRemoveLayerAt(int i2);

    @Keep
    private native boolean nativeRemoveSource(Source source, long j2);

    @Keep
    private native void nativeResetNorth();

    @Keep
    private native void nativeResetPosition();

    @Keep
    private native void nativeResetZoom();

    @Keep
    private native void nativeResizeView(int i2, int i3);

    @Keep
    private native void nativeRotateBy(double d2, double d3, double d4, double d5, long j2);

    @Keep
    private native void nativeSetBearing(double d2, long j2);

    @Keep
    private native void nativeSetBearingXY(double d2, double d3, double d4, long j2);

    @Keep
    private native void nativeSetDebug(boolean z);

    @Keep
    private native void nativeSetGestureInProgress(boolean z);

    @Keep
    private native void nativeSetLatLng(double d2, double d3, double[] dArr, long j2);

    @Keep
    private native void nativeSetLatLngBounds(LatLngBounds latLngBounds);

    @Keep
    private native void nativeSetMaxPitch(double d2);

    @Keep
    private native void nativeSetMaxZoom(double d2);

    @Keep
    private native void nativeSetMinPitch(double d2);

    @Keep
    private native void nativeSetMinZoom(double d2);

    @Keep
    private native void nativeSetPitch(double d2, long j2);

    @Keep
    private native void nativeSetPrefetchTiles(boolean z);

    @Keep
    private native void nativeSetPrefetchZoomDelta(int i2);

    @Keep
    private native void nativeSetReachability(boolean z);

    @Keep
    private native void nativeSetStyleJson(String str);

    @Keep
    private native void nativeSetStyleUrl(String str);

    @Keep
    private native void nativeSetTransitionDelay(long j2);

    @Keep
    private native void nativeSetTransitionDuration(long j2);

    @Keep
    private native void nativeSetTransitionOptions(TransitionOptions transitionOptions);

    @Keep
    private native void nativeSetVisibleCoordinateBounds(LatLng[] latLngArr, RectF rectF, double d2, long j2);

    @Keep
    private native void nativeSetZoom(double d2, double d3, double d4, long j2);

    @Keep
    private native void nativeTakeSnapshot();

    @Keep
    private native void nativeTriggerRepaint();

    @Keep
    private native void nativeUpdateMarker(long j2, double d2, double d3, String str);

    @Keep
    private native void nativeUpdatePolygon(long j2, Polygon polygon);

    @Keep
    private native void nativeUpdatePolyline(long j2, Polyline polyline);

    @Keep
    private void onCameraDidChange(boolean z) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    @Keep
    private void onCameraIsChanging() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Keep
    private void onCameraWillChange(boolean z) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.c(z);
        }
    }

    @Keep
    private boolean onCanRemoveUnusedStyleImage(String str) {
        a aVar = this.f15947d;
        if (aVar != null) {
            return aVar.c(str);
        }
        return true;
    }

    @Keep
    private void onDidBecomeIdle() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.g();
        }
    }

    @Keep
    private void onDidFailLoadingMap(String str) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.b(str);
        }
    }

    @Keep
    private void onDidFinishLoadingMap() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Keep
    private void onDidFinishLoadingStyle() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Keep
    private void onDidFinishRenderingFrame(boolean z) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    @Keep
    private void onDidFinishRenderingMap(boolean z) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.d(z);
        }
    }

    @Keep
    private void onSourceChanged(String str) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.d(str);
        }
    }

    @Keep
    private void onStyleImageMissing(String str) {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    @Keep
    private void onWillStartLoadingMap() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Keep
    private void onWillStartRenderingFrame() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Keep
    private void onWillStartRenderingMap() {
        a aVar = this.f15947d;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(int i2, int i3) {
        if (j("resizeView")) {
            return;
        }
        int ceil = (int) Math.ceil(i2 / this.f15948e);
        int ceil2 = (int) Math.ceil(i3 / this.f15948e);
        if (ceil < 0) {
            throw new IllegalArgumentException("width cannot be negative.");
        }
        if (ceil2 >= 0) {
            if (ceil > 65535) {
                Logger.e("Mbgl-NativeMapView", String.format("Device returned an out of range width size, capping value at 65535 instead of %s", Integer.valueOf(ceil)));
                ceil = 65535;
            }
            if (ceil2 > 65535) {
                Logger.e("Mbgl-NativeMapView", String.format("Device returned an out of range height size, capping value at 65535 instead of %s", Integer.valueOf(ceil2)));
                ceil2 = 65535;
            }
            nativeResizeView(ceil, ceil2);
            return;
        }
        throw new IllegalArgumentException("height cannot be negative.");
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void b() {
        if (j("cancelTransitions")) {
            return;
        }
        nativeCancelTransitions();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void c(boolean z) {
        if (j("setGestureInProgress")) {
            return;
        }
        nativeSetGestureInProgress(z);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void d(double d2) {
        if (j("setMinZoom")) {
            return;
        }
        nativeSetMinZoom(d2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void destroy() {
        this.f15949f = true;
        this.f15946c = null;
        nativeDestroy();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public String e() {
        return j("getStyleUri") ? "" : nativeGetStyleUrl();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double f() {
        if (j("getPitch")) {
            return 0.0d;
        }
        return nativeGetPitch();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double g() {
        if (j("getZoom")) {
            return 0.0d;
        }
        return nativeGetZoom();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double getMaxZoom() {
        if (j("getMaxZoom")) {
            return 0.0d;
        }
        return nativeGetMaxZoom();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double getMinZoom() {
        if (j("getMinZoom")) {
            return 0.0d;
        }
        return nativeGetMinZoom();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public float getPixelRatio() {
        return this.f15948e;
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double h() {
        if (j("getBearing")) {
            return 0.0d;
        }
        return nativeGetBearing();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void i(String str) {
        if (j("setStyleUri")) {
            return;
        }
        nativeSetStyleUrl(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public boolean isDestroyed() {
        return this.f15949f;
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void onLowMemory() {
        if (j("onLowMemory")) {
            return;
        }
        nativeOnLowMemory();
    }

    @Keep
    protected void onSnapshotReady(@Nullable Bitmap bitmap) {
        if (j("OnSnapshotReady")) {
            return;
        }
        try {
            if (this.f15951h == null || bitmap == null) {
                return;
            }
            if (this.f15946c == null) {
                this.f15951h.a(bitmap);
                return;
            }
            Bitmap viewContent = this.f15946c.getViewContent();
            if (viewContent != null) {
                this.f15951h.a(com.mapbox.mapboxsdk.utils.a.a(bitmap, viewContent));
            }
        } catch (Throwable th) {
            Logger.e("Mbgl-NativeMapView", "Exception in onSnapshotReady", th);
            throw th;
        }
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void b(double d2) {
        if (j("setMaxZoom")) {
            return;
        }
        nativeSetMaxZoom(d2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void c(double d2) {
        if (j("setMaxPitch")) {
            return;
        }
        nativeSetMaxPitch(d2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public CameraPosition d() {
        if (j("getCameraValues")) {
            return new CameraPosition.b().a();
        }
        if (this.f15950g != null) {
            CameraPosition.b bVar = new CameraPosition.b(nativeGetCameraPosition());
            bVar.a(this.f15950g);
            return bVar.a();
        }
        return nativeGetCameraPosition();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void e(double d2) {
        if (j("setMinPitch")) {
            return;
        }
        nativeSetMinPitch(d2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double f(String str) {
        if (j("getTopOffsetPixelsForAnnotationSymbol")) {
            return 0.0d;
        }
        return nativeGetTopOffsetPixelsForAnnotationSymbol(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void g(String str) {
        if (j("removeImage")) {
            return;
        }
        nativeRemoveImage(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public boolean h(@NonNull String str) {
        Source d2;
        if (j("removeSource") || (d2 = d(str)) == null) {
            return false;
        }
        return b(d2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void b(boolean z) {
        if (j("setDebug")) {
            return;
        }
        nativeSetDebug(z);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public long[] c(RectF rectF) {
        return j("queryPointAnnotations") ? new long[0] : nativeQueryPointAnnotations(rectF);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void e(String str) {
        if (j("setApiBaseUrl")) {
            return;
        }
        this.f15944a.setApiBaseUrl(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public Layer b(String str) {
        if (j("getLayer")) {
            return null;
        }
        return nativeGetLayer(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public boolean c(@NonNull String str) {
        Layer b2;
        if (j("removeLayer") || (b2 = b(str)) == null) {
            return false;
        }
        return a(b2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public Source d(@NonNull String str) {
        if (j("getSource")) {
            return null;
        }
        return nativeGetSource(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void b(@NonNull Layer layer) {
        if (j("addLayer")) {
            return;
        }
        nativeAddLayer(layer.c(), null);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public List<Source> c() {
        if (j("getSources")) {
            return new ArrayList();
        }
        return Arrays.asList(nativeGetSources());
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(String str) {
        if (j("setStyleJson")) {
            return;
        }
        nativeSetStyleJson(str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void b(@NonNull Layer layer, @NonNull String str) {
        if (j("addLayerBelow")) {
            return;
        }
        nativeAddLayer(layer.c(), str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(LatLngBounds latLngBounds) {
        if (j("setLatLngBounds")) {
            return;
        }
        nativeSetLatLngBounds(latLngBounds);
    }

    public boolean b(@NonNull Source source) {
        if (j("removeSource")) {
            return false;
        }
        return nativeRemoveSource(source, source.getNativePtr());
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(double d2, double d3, long j2) {
        if (j("moveBy")) {
            return;
        }
        float f2 = this.f15948e;
        double d4 = f2;
        Double.isNaN(d4);
        double d5 = f2;
        Double.isNaN(d5);
        nativeMoveBy(d2 / d4, d3 / d5, j2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public RectF b(RectF rectF) {
        float f2 = rectF.left;
        float f3 = this.f15948e;
        return new RectF(f2 / f3, rectF.top / f3, rectF.right / f3, rectF.bottom / f3);
    }

    private double[] b(double[] dArr) {
        if (dArr == null) {
            dArr = this.f15950g;
        }
        this.f15950g = null;
        if (dArr == null) {
            return null;
        }
        double d2 = dArr[1];
        float f2 = this.f15948e;
        double d3 = f2;
        Double.isNaN(d3);
        double d4 = dArr[0];
        double d5 = f2;
        Double.isNaN(d5);
        double d6 = dArr[3];
        double d7 = f2;
        Double.isNaN(d7);
        double d8 = dArr[2];
        double d9 = f2;
        Double.isNaN(d9);
        return new double[]{d2 / d3, d4 / d5, d6 / d7, d8 / d9};
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public CameraPosition a(LatLngBounds latLngBounds, int[] iArr, double d2, double d3) {
        if (j("getCameraForLatLngBounds")) {
            return null;
        }
        float f2 = iArr[1];
        float f3 = this.f15948e;
        return nativeGetCameraForLatLngBounds(latLngBounds, f2 / f3, iArr[0] / f3, iArr[3] / f3, iArr[2] / f3, d2, d3);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(double d2, long j2) {
        if (j("setPitch")) {
            return;
        }
        nativeSetPitch(d2, j2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(double d2, @NonNull PointF pointF, long j2) {
        if (j("setZoom")) {
            return;
        }
        float f2 = pointF.x;
        float f3 = this.f15948e;
        nativeSetZoom(d2, f2 / f3, pointF.y / f3, j2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(double[] dArr) {
        if (j("setContentPadding")) {
            return;
        }
        this.f15950g = dArr;
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(double d2, double d3, double d4, long j2) {
        if (j("setBearing")) {
            return;
        }
        float f2 = this.f15948e;
        double d5 = f2;
        Double.isNaN(d5);
        double d6 = f2;
        Double.isNaN(d6);
        nativeSetBearingXY(d2, d3 / d5, d4 / d6, j2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public long a(Marker marker) {
        if (j("addMarker")) {
            return 0L;
        }
        return nativeAddMarkers(new Marker[]{marker})[0];
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull Polygon polygon) {
        if (j("updatePolygon")) {
            return;
        }
        nativeUpdatePolygon(polygon.a(), polygon);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull Polyline polyline) {
        if (j("updatePolyline")) {
            return;
        }
        nativeUpdatePolyline(polyline.a(), polyline);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(long j2) {
        if (j("removeAnnotation")) {
            return;
        }
        a(new long[]{j2});
    }

    public void a(long[] jArr) {
        if (j("removeAnnotations")) {
            return;
        }
        nativeRemoveAnnotations(jArr);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public long[] a(RectF rectF) {
        return j("queryShapeAnnotations") ? new long[0] : nativeQueryShapeAnnotations(rectF);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(String str, int i2, int i3, float f2, byte[] bArr) {
        if (j("addAnnotationIcon")) {
            return;
        }
        nativeAddAnnotationIcon(str, i2, i3, f2, bArr);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(boolean z) {
        if (j("setReachability")) {
            return;
        }
        nativeSetReachability(z);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public double a(double d2) {
        if (j("getMetersPerPixelAtLatitude")) {
            return 0.0d;
        }
        return nativeGetMetersPerPixelAtLatitude(d2, g());
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public PointF a(@NonNull LatLng latLng) {
        if (j("pixelForLatLng")) {
            return new PointF();
        }
        PointF nativePixelForLatLng = nativePixelForLatLng(latLng.a(), latLng.b());
        float f2 = nativePixelForLatLng.x;
        float f3 = this.f15948e;
        nativePixelForLatLng.set(f2 * f3, nativePixelForLatLng.y * f3);
        return nativePixelForLatLng;
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public LatLng a(@NonNull PointF pointF) {
        if (j("latLngForPixel")) {
            return new LatLng();
        }
        float f2 = pointF.x;
        float f3 = this.f15948e;
        return nativeLatLngForPixel(f2 / f3, pointF.y / f3);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull LatLng latLng, double d2, double d3, double d4, double[] dArr) {
        if (j("jumpTo")) {
            return;
        }
        nativeJumpTo(d4, latLng.a(), latLng.b(), d3, d2, b(dArr));
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull LatLng latLng, double d2, double d3, double d4, double[] dArr, long j2) {
        if (j("flyTo")) {
            return;
        }
        nativeFlyTo(d3, latLng.a(), latLng.b(), j2, d4, d2, b(dArr));
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@IntRange(from = 0) int i2) {
        if (j("nativeSetPrefetchZoomDelta")) {
            return;
        }
        nativeSetPrefetchZoomDelta(i2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull TransitionOptions transitionOptions) {
        nativeSetTransitionOptions(transitionOptions);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public List<Layer> a() {
        if (j("getLayers")) {
            return new ArrayList();
        }
        return Arrays.asList(nativeGetLayers());
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull Layer layer, @NonNull String str) {
        if (j("addLayerAbove")) {
            return;
        }
        nativeAddLayerAbove(layer.c(), str);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull Layer layer, @IntRange(from = 0) int i2) {
        if (j("addLayerAt")) {
            return;
        }
        nativeAddLayerAt(layer.c(), i2);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public boolean a(@NonNull Layer layer) {
        if (j("removeLayer")) {
            return false;
        }
        return nativeRemoveLayer(layer.c());
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull Source source) {
        if (j("addSource")) {
            return;
        }
        nativeAddSource(source, source.getNativePtr());
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    public void a(@NonNull Image[] imageArr) {
        if (j("addImages")) {
            return;
        }
        nativeAddImages(imageArr);
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public List<Feature> a(@NonNull PointF pointF, @Nullable String[] strArr, @Nullable com.mapbox.mapboxsdk.u.a.a aVar) {
        if (j("queryRenderedFeatures")) {
            return new ArrayList();
        }
        float f2 = pointF.x;
        float f3 = this.f15948e;
        Feature[] nativeQueryRenderedFeaturesForPoint = nativeQueryRenderedFeaturesForPoint(f2 / f3, pointF.y / f3, strArr, aVar != null ? aVar.b() : null);
        return nativeQueryRenderedFeaturesForPoint != null ? Arrays.asList(nativeQueryRenderedFeaturesForPoint) : new ArrayList();
    }

    @Override // com.mapbox.mapboxsdk.maps.q
    @NonNull
    public List<Feature> a(@NonNull RectF rectF, @Nullable String[] strArr, @Nullable com.mapbox.mapboxsdk.u.a.a aVar) {
        if (j("queryRenderedFeatures")) {
            return new ArrayList();
        }
        float f2 = rectF.left;
        float f3 = this.f15948e;
        Feature[] nativeQueryRenderedFeaturesForBox = nativeQueryRenderedFeaturesForBox(f2 / f3, rectF.top / f3, rectF.right / f3, rectF.bottom / f3, strArr, aVar != null ? aVar.b() : null);
        return nativeQueryRenderedFeaturesForBox != null ? Arrays.asList(nativeQueryRenderedFeaturesForBox) : new ArrayList();
    }
}
