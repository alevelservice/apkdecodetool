package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zu1 extends com.google.android.gms.dynamic.a<zzvv> {
    public zu1() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.a
    protected final /* synthetic */ zzvv a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        if (queryLocalInterface instanceof zzvv) {
            return (zzvv) queryLocalInterface;
        }
        return new zzvy(iBinder);
    }
}
