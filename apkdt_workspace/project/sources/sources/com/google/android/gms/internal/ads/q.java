package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.a;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class q extends com.google.android.gms.dynamic.a<zzaax> {
    @VisibleForTesting
    public q() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    public final zzaaw a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder zza = a(context).zza(ObjectWrapper.wrap(context), ObjectWrapper.wrap(frameLayout), ObjectWrapper.wrap(frameLayout2), 15300000);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            if (queryLocalInterface instanceof zzaaw) {
                return (zzaaw) queryLocalInterface;
            }
            return new zzaay(zza);
        } catch (RemoteException | a.C0090a e2) {
            qd.c("Could not create remote NativeAdViewDelegate.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.a
    protected final /* synthetic */ zzaax a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        if (queryLocalInterface instanceof zzaax) {
            return (zzaax) queryLocalInterface;
        }
        return new zzaba(iBinder);
    }
}
