package com.mapbox.mapboxsdk.annotations;

import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.l;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.n;

@Deprecated
/* loaded from: classes2.dex */
public class Marker extends a {

    /* renamed from: g, reason: collision with root package name */
    private String f15693g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private d f15694h;

    /* renamed from: i, reason: collision with root package name */
    private String f15695i;

    @Nullable
    @Keep
    private String iconId;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private e f15696j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15697k;

    /* renamed from: l, reason: collision with root package name */
    private int f15698l;
    private int m;

    @Keep
    private LatLng position;

    Marker() {
    }

    @Nullable
    private e b(@NonNull MapView mapView) {
        if (this.f15696j == null && mapView.getContext() != null) {
            this.f15696j = new e(mapView, l.mapbox_infowindow_content, b());
        }
        return this.f15696j;
    }

    @Nullable
    public e a(@NonNull n nVar, @NonNull MapView mapView) {
        View a2;
        a(nVar);
        a(mapView);
        n.b e2 = b().e();
        if (e2 != null && (a2 = e2.a(this)) != null) {
            this.f15696j = new e(a2, nVar);
            a(this.f15696j, mapView);
            return this.f15696j;
        }
        e b2 = b(mapView);
        if (mapView.getContext() != null) {
            b2.a(this, nVar, mapView);
        }
        a(b2, mapView);
        return b2;
    }

    @Nullable
    public d c() {
        return this.f15694h;
    }

    public LatLng d() {
        return this.position;
    }

    public String e() {
        return this.f15693g;
    }

    public String f() {
        return this.f15695i;
    }

    public void g() {
        e eVar = this.f15696j;
        if (eVar != null) {
            eVar.a();
        }
        this.f15697k = false;
    }

    public boolean h() {
        return this.f15697k;
    }

    public String toString() {
        return "Marker [position[" + d() + "]]";
    }

    @NonNull
    private e a(e eVar, MapView mapView) {
        eVar.a(mapView, this, d(), this.m, this.f15698l);
        this.f15697k = true;
        return eVar;
    }

    public void a(int i2) {
        this.f15698l = i2;
    }
}
