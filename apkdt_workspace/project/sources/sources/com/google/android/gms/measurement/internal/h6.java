package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface h6 {
    String a();

    void a(String str, String str2, Bundle bundle);

    void beginAdUnitExposure(String str);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void endAdUnitExposure(String str);

    long generateEventId();

    List<Bundle> getConditionalUserProperties(String str, String str2);

    String getCurrentScreenClass();

    String getCurrentScreenName();

    String getGmpAppId();

    int getMaxUserProperties(String str);

    Map<String, Object> getUserProperties(String str, String str2, boolean z);

    void setConditionalUserProperty(Bundle bundle);
}
