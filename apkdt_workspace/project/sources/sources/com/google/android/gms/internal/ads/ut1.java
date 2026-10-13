package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.a;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class ut1 extends com.google.android.gms.dynamic.a<zzvf> {
    @VisibleForTesting
    public ut1() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public final zzve a(Context context, zztw zztwVar, String str, zzajd zzajdVar, int i2) {
        try {
            IBinder zza = a(context).zza(ObjectWrapper.wrap(context), zztwVar, str, zzajdVar, 15300000, i2);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzve) {
                return (zzve) queryLocalInterface;
            }
            return new zzvg(zza);
        } catch (RemoteException | a.C0090a e2) {
            qd.a("Could not create remote AdManager.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.a
    protected final /* synthetic */ zzvf a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (queryLocalInterface instanceof zzvf) {
            return (zzvf) queryLocalInterface;
        }
        return new zzvi(iBinder);
    }
}
