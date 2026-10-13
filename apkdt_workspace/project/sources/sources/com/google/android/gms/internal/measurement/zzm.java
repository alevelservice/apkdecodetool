package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzm extends zzb implements zzk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void beginAdUnitExposure(String str, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(23, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        d2.a(obtainAndWriteInterfaceToken, bundle);
        zza(9, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void endAdUnitExposure(String str, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(24, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void generateEventId(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(22, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getAppInstanceId(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(20, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getCachedAppInstanceId(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(19, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getConditionalUserProperties(String str, String str2, zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(10, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getCurrentScreenClass(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(17, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getCurrentScreenName(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(16, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getDeepLink(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(41, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getGmpAppId(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(21, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getMaxUserProperties(String str, zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(6, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getTestFlag(zzp zzpVar, int i2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        obtainAndWriteInterfaceToken.writeInt(i2);
        zza(38, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void getUserProperties(String str, String str2, boolean z, zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        d2.a(obtainAndWriteInterfaceToken, z);
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(5, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void initForTests(Map map) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeMap(map);
        zza(37, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void initialize(IObjectWrapper iObjectWrapper, zzx zzxVar, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        d2.a(obtainAndWriteInterfaceToken, zzxVar);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void isDataCollectionEnabled(zzp zzpVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        zza(40, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        d2.a(obtainAndWriteInterfaceToken, bundle);
        d2.a(obtainAndWriteInterfaceToken, z);
        d2.a(obtainAndWriteInterfaceToken, z2);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzp zzpVar, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        d2.a(obtainAndWriteInterfaceToken, bundle);
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(3, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(i2);
        obtainAndWriteInterfaceToken.writeString(str);
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper2);
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper3);
        zza(33, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        d2.a(obtainAndWriteInterfaceToken, bundle);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(27, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(28, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(29, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(30, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzp zzpVar, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(31, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(25, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(26, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void performAction(Bundle bundle, zzp zzpVar, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, bundle);
        d2.a(obtainAndWriteInterfaceToken, zzpVar);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(32, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void registerOnMeasurementEventListener(zzq zzqVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzqVar);
        zza(35, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void resetAnalyticsData(long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(12, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setConditionalUserProperty(Bundle bundle, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, bundle);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(8, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(15, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setDataCollectionEnabled(boolean z) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, z);
        zza(39, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setEventInterceptor(zzq zzqVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzqVar);
        zza(34, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setInstanceIdProvider(zzv zzvVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzvVar);
        zza(18, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setMeasurementEnabled(boolean z, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, z);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(11, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setMinimumSessionDuration(long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(13, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setSessionTimeoutDuration(long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(14, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setUserId(String str, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(7, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        obtainAndWriteInterfaceToken.writeString(str2);
        d2.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        d2.a(obtainAndWriteInterfaceToken, z);
        obtainAndWriteInterfaceToken.writeLong(j2);
        zza(4, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.measurement.zzk
    public final void unregisterOnMeasurementEventListener(zzq zzqVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        d2.a(obtainAndWriteInterfaceToken, zzqVar);
        zza(36, obtainAndWriteInterfaceToken);
    }
}
