package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.a;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class vt1 extends com.google.android.gms.dynamic.a<zzvc> {
    public vt1() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public final zzux a(Context context, String str, zzajd zzajdVar) {
        try {
            IBinder zzc = a(context).zzc(ObjectWrapper.wrap(context), str, zzajdVar, 15300000);
            if (zzc == null) {
                return null;
            }
            IInterface queryLocalInterface = zzc.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzux) {
                return (zzux) queryLocalInterface;
            }
            return new zzuz(zzc);
        } catch (RemoteException | a.C0090a e2) {
            qd.c("Could not create remote builder for AdLoader.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.a
    protected final /* synthetic */ zzvc a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        if (queryLocalInterface instanceof zzvc) {
            return (zzvc) queryLocalInterface;
        }
        return new zzvb(iBinder);
    }
}
