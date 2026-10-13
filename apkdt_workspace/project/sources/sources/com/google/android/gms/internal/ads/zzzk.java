package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzzk extends zzzl {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.g f11277e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final String f11278f;

    /* renamed from: g, reason: collision with root package name */
    private final String f11279g;

    public zzzk(com.google.android.gms.ads.internal.g gVar, @Nullable String str, String str2) {
        this.f11277e = gVar;
        this.f11278f = str;
        this.f11279g = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final String getContent() {
        return this.f11279g;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void recordClick() {
        this.f11277e.a();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void recordImpression() {
        this.f11277e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final String zzpz() {
        return this.f11278f;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void zzr(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.f11277e.a((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
