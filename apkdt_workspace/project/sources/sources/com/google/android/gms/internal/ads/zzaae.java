package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaae extends zzaar {

    /* renamed from: e, reason: collision with root package name */
    private final Drawable f10879e;

    /* renamed from: f, reason: collision with root package name */
    private final Uri f10880f;

    /* renamed from: g, reason: collision with root package name */
    private final double f10881g;

    /* renamed from: h, reason: collision with root package name */
    private final int f10882h;

    /* renamed from: i, reason: collision with root package name */
    private final int f10883i;

    public zzaae(Drawable drawable, Uri uri, double d2, int i2, int i3) {
        this.f10879e = drawable;
        this.f10880f = uri;
        this.f10881g = d2;
        this.f10882h = i2;
        this.f10883i = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final int getHeight() {
        return this.f10883i;
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final double getScale() {
        return this.f10881g;
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final Uri getUri() {
        return this.f10880f;
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final int getWidth() {
        return this.f10882h;
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final IObjectWrapper zzqf() {
        return ObjectWrapper.wrap(this.f10879e);
    }
}
