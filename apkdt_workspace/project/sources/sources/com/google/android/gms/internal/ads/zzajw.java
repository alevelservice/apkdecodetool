package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzajw extends IInterface {
    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    float getMediaContentAspectRatio();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    String getPrice();

    double getStarRating();

    String getStore();

    zzwk getVideoController();

    void recordImpression();

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzaas zzqj();

    zzaak zzqk();

    IObjectWrapper zzql();

    IObjectWrapper zzru();

    IObjectWrapper zzrv();

    void zzx(IObjectWrapper iObjectWrapper);

    void zzz(IObjectWrapper iObjectWrapper);
}
