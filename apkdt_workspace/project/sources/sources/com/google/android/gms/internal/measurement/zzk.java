package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* loaded from: classes.dex */
public interface zzk extends IInterface {
    void beginAdUnitExposure(String str, long j2);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void endAdUnitExposure(String str, long j2);

    void generateEventId(zzp zzpVar);

    void getAppInstanceId(zzp zzpVar);

    void getCachedAppInstanceId(zzp zzpVar);

    void getConditionalUserProperties(String str, String str2, zzp zzpVar);

    void getCurrentScreenClass(zzp zzpVar);

    void getCurrentScreenName(zzp zzpVar);

    void getDeepLink(zzp zzpVar);

    void getGmpAppId(zzp zzpVar);

    void getMaxUserProperties(String str, zzp zzpVar);

    void getTestFlag(zzp zzpVar, int i2);

    void getUserProperties(String str, String str2, boolean z, zzp zzpVar);

    void initForTests(Map map);

    void initialize(IObjectWrapper iObjectWrapper, zzx zzxVar, long j2);

    void isDataCollectionEnabled(zzp zzpVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2);

    void logEventAndBundle(String str, String str2, Bundle bundle, zzp zzpVar, long j2);

    void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j2);

    void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j2);

    void onActivityPaused(IObjectWrapper iObjectWrapper, long j2);

    void onActivityResumed(IObjectWrapper iObjectWrapper, long j2);

    void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzp zzpVar, long j2);

    void onActivityStarted(IObjectWrapper iObjectWrapper, long j2);

    void onActivityStopped(IObjectWrapper iObjectWrapper, long j2);

    void performAction(Bundle bundle, zzp zzpVar, long j2);

    void registerOnMeasurementEventListener(zzq zzqVar);

    void resetAnalyticsData(long j2);

    void setConditionalUserProperty(Bundle bundle, long j2);

    void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j2);

    void setDataCollectionEnabled(boolean z);

    void setEventInterceptor(zzq zzqVar);

    void setInstanceIdProvider(zzv zzvVar);

    void setMeasurementEnabled(boolean z, long j2);

    void setMinimumSessionDuration(long j2);

    void setSessionTimeoutDuration(long j2);

    void setUserId(String str, long j2);

    void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2);

    void unregisterOnMeasurementEventListener(zzq zzqVar);
}
