package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public interface zzabo extends IInterface {
    void destroy();

    List<String> getAvailableAssetNames();

    String getCustomTemplateId();

    zzwk getVideoController();

    void performClick(String str);

    void recordImpression();

    String zzco(String str);

    zzaas zzcp(String str);

    IObjectWrapper zzqi();

    IObjectWrapper zzqn();

    boolean zzqo();

    boolean zzqp();

    void zzqq();

    boolean zzt(IObjectWrapper iObjectWrapper);

    void zzu(IObjectWrapper iObjectWrapper);
}
