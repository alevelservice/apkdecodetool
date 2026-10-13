package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;

/* compiled from: LayerBitmapProvider.java */
/* loaded from: classes2.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15802a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context) {
        this.f15802a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap a(@DrawableRes int i2, @ColorInt Integer num) {
        return com.mapbox.mapboxsdk.utils.a.a(com.mapbox.mapboxsdk.utils.a.a(this.f15802a, i2, num));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap a(@NonNull LocationComponentOptions locationComponentOptions) {
        return g0.a(com.mapbox.mapboxsdk.utils.a.a(this.f15802a, com.mapbox.mapboxsdk.j.mapbox_user_icon_shadow), locationComponentOptions.n());
    }
}
