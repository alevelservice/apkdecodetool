package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzacq extends IInterface {
    void cancelUnconfirmedClick();

    void destroy();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    List getMuteThisAdReasons();

    String getPrice();

    double getStarRating();

    String getStore();

    zzwk getVideoController();

    boolean isCustomClickGestureEnabled();

    boolean isCustomMuteThisAdEnabled();

    void performClick(Bundle bundle);

    void recordCustomClickGesture();

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    void zza(zzacl zzaclVar);

    void zza(zzvx zzvxVar);

    void zza(zzwb zzwbVar);

    IObjectWrapper zzqi();

    zzaas zzqj();

    zzaak zzqk();

    IObjectWrapper zzql();

    void zzqs();

    zzaan zzqt();
}
