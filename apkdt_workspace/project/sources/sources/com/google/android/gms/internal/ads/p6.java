package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.a;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class p6 extends com.google.android.gms.dynamic.a<zzamz> {
    public p6() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public final zzamu a(Activity activity) {
        try {
            IBinder zzah = a((Context) activity).zzah(ObjectWrapper.wrap(activity));
            if (zzah == null) {
                return null;
            }
            IInterface queryLocalInterface = zzah.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            if (queryLocalInterface instanceof zzamu) {
                return (zzamu) queryLocalInterface;
            }
            return new zzamw(zzah);
        } catch (RemoteException e2) {
            qd.c("Could not create remote AdOverlay.", e2);
            return null;
        } catch (a.C0090a e3) {
            qd.c("Could not create remote AdOverlay.", e3);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.a
    protected final /* synthetic */ zzamz a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (queryLocalInterface instanceof zzamz) {
            return (zzamz) queryLocalInterface;
        }
        return new zzamy(iBinder);
    }
}
