package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class i extends a.AbstractC0076a {

    /* renamed from: a, reason: collision with root package name */
    private final zzaak f7204a;

    /* renamed from: b, reason: collision with root package name */
    private final List<a.b> f7205b = new ArrayList();

    public i(zzaak zzaakVar) {
        zzaas zzaasVar;
        IBinder iBinder;
        this.f7204a = zzaakVar;
        try {
            this.f7204a.getText();
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
        try {
            for (zzaas zzaasVar2 : zzaakVar.zzqa()) {
                if (!(zzaasVar2 instanceof IBinder) || (iBinder = (IBinder) zzaasVar2) == null) {
                    zzaasVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    if (queryLocalInterface instanceof zzaas) {
                        zzaasVar = (zzaas) queryLocalInterface;
                    } else {
                        zzaasVar = new zzaau(iBinder);
                    }
                }
                if (zzaasVar != null) {
                    this.f7205b.add(new j(zzaasVar));
                }
            }
        } catch (RemoteException e3) {
            qd.b("", e3);
        }
    }
}
