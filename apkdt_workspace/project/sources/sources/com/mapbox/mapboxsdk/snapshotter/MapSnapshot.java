package com.mapbox.mapboxsdk.snapshotter;

import android.graphics.Bitmap;
import android.graphics.PointF;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.geometry.LatLng;

/* loaded from: classes2.dex */
public class MapSnapshot {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f16238a;

    /* renamed from: b, reason: collision with root package name */
    private String[] f16239b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f16240c;

    @Keep
    private long nativePtr;

    @Keep
    private MapSnapshot(long j2, Bitmap bitmap, String[] strArr, boolean z) {
        this.nativePtr = 0L;
        this.nativePtr = j2;
        this.f16238a = bitmap;
        this.f16239b = strArr;
        this.f16240c = z;
    }

    @Keep
    private native void initialize();

    /* JADX INFO: Access modifiers changed from: protected */
    public String[] a() {
        return this.f16239b;
    }

    public Bitmap b() {
        return this.f16238a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f16240c;
    }

    @Keep
    protected native void finalize();

    @NonNull
    @Keep
    public native LatLng latLngForPixel(PointF pointF);

    @NonNull
    @Keep
    public native PointF pixelForLatLng(LatLng latLng);
}
