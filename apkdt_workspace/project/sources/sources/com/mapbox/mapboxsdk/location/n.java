package com.mapbox.mapboxsdk.location;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.Layer;

/* compiled from: LocationComponentPositionManager.java */
/* loaded from: classes2.dex */
class n {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Style f15882a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private String f15883b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private String f15884c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@NonNull Style style, @Nullable String str, @Nullable String str2) {
        this.f15882a = style;
        this.f15883b = str;
        this.f15884c = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@Nullable String str, @Nullable String str2) {
        String str3;
        String str4 = this.f15883b;
        boolean z = (str4 != str && (str4 == null || !str4.equals(str))) || ((str3 = this.f15884c) != str2 && (str3 == null || !str3.equals(str2)));
        this.f15883b = str;
        this.f15884c = str2;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Layer layer) {
        String str = this.f15883b;
        if (str != null) {
            this.f15882a.a(layer, str);
            return;
        }
        String str2 = this.f15884c;
        if (str2 != null) {
            this.f15882a.b(layer, str2);
        } else {
            this.f15882a.a(layer);
        }
    }
}
