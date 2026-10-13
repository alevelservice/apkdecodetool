package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzacz extends zzacd {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.formats.f f10895e;

    public zzacz(com.google.android.gms.ads.formats.f fVar) {
        this.f10895e = fVar;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zza(zzve zzveVar, IObjectWrapper iObjectWrapper) {
        if (zzveVar == null || iObjectWrapper == null) {
            return;
        }
        PublisherAdView publisherAdView = new PublisherAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
        try {
            if (zzveVar.zzjr() instanceof zztl) {
                zztl zztlVar = (zztl) zzveVar.zzjr();
                publisherAdView.setAdListener(zztlVar != null ? zztlVar.getAdListener() : null);
            }
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
        try {
            if (zzveVar.zzjq() instanceof zzty) {
                zzty zztyVar = (zzty) zzveVar.zzjq();
                publisherAdView.setAppEventListener(zztyVar != null ? zztyVar.getAppEventListener() : null);
            }
        } catch (RemoteException e3) {
            qd.b("", e3);
        }
        gd.f6840b.post(new u(this, publisherAdView, zzveVar));
    }
}
