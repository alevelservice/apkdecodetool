package com.mapbox.mapboxsdk.maps;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.maps.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InfoWindowManager.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private final List<com.mapbox.mapboxsdk.annotations.e> f16044a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private n.b f16045b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f16046c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private n.l f16047d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private n.InterfaceC0159n f16048e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private n.m f16049f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public n.b a() {
        return this.f16045b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public n.l b() {
        return this.f16047d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public n.m c() {
        return this.f16049f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public n.InterfaceC0159n d() {
        return this.f16048e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.f16046c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.f16044a.isEmpty()) {
            return;
        }
        Iterator<com.mapbox.mapboxsdk.annotations.e> it = this.f16044a.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@Nullable Marker marker) {
        return (marker == null || (TextUtils.isEmpty(marker.f()) && TextUtils.isEmpty(marker.e()))) ? false : true;
    }

    public void a(com.mapbox.mapboxsdk.annotations.e eVar) {
        this.f16044a.add(eVar);
    }
}
