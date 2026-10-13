package com.mapbox.mapboxsdk.annotations;

import android.os.Parcelable;
import com.mapbox.mapboxsdk.annotations.BaseMarkerOptions;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.geometry.LatLng;

@Deprecated
/* loaded from: classes2.dex */
public abstract class BaseMarkerOptions<U extends Marker, T extends BaseMarkerOptions<U, T>> implements Parcelable {

    /* renamed from: e, reason: collision with root package name */
    protected LatLng f15681e;

    /* renamed from: f, reason: collision with root package name */
    protected String f15682f;

    /* renamed from: g, reason: collision with root package name */
    protected String f15683g;

    /* renamed from: h, reason: collision with root package name */
    protected d f15684h;

    public abstract T a();

    public T a(LatLng latLng) {
        this.f15681e = latLng;
        return a();
    }

    public T b(String str) {
        this.f15683g = str;
        return a();
    }

    public T a(String str) {
        this.f15682f = str;
        return a();
    }

    public T a(d dVar) {
        this.f15684h = dVar;
        return a();
    }
}
