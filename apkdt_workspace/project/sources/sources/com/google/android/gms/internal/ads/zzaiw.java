package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaiw extends zzbdk {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.measurement.a.a f10918e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaiw(com.google.android.gms.measurement.a.a aVar) {
        this.f10918e = aVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void beginAdUnitExposure(String str) {
        this.f10918e.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f10918e.a(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void endAdUnitExposure(String str) {
        this.f10918e.b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final long generateEventId() {
        return this.f10918e.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final String getAppIdOrigin() {
        return this.f10918e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final String getAppInstanceId() {
        return this.f10918e.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final List getConditionalUserProperties(String str, String str2) {
        return this.f10918e.a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final String getCurrentScreenClass() {
        return this.f10918e.d();
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final String getCurrentScreenName() {
        return this.f10918e.e();
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final String getGmpAppId() {
        return this.f10918e.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final int getMaxUserProperties(String str) {
        return this.f10918e.c(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final Map getUserProperties(String str, String str2, boolean z) {
        return this.f10918e.a(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void logEvent(String str, String str2, Bundle bundle) {
        this.f10918e.b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void performAction(Bundle bundle) {
        this.f10918e.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final Bundle performActionWithResponse(Bundle bundle) {
        return this.f10918e.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void setConditionalUserProperty(Bundle bundle) {
        this.f10918e.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void zza(String str, String str2, IObjectWrapper iObjectWrapper) {
        this.f10918e.a(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void zzb(IObjectWrapper iObjectWrapper, String str, String str2) {
        this.f10918e.a(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }
}
