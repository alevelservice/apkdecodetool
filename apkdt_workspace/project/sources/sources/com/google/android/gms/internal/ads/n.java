package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class n implements com.google.android.gms.ads.formats.e {

    /* renamed from: b, reason: collision with root package name */
    private static WeakHashMap<IBinder, n> f8259b = new WeakHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    private final zzabo f8260a;

    @VisibleForTesting
    private n(zzabo zzaboVar) {
        Context context;
        new com.google.android.gms.ads.j();
        this.f8260a = zzaboVar;
        try {
            context = (Context) ObjectWrapper.unwrap(zzaboVar.zzqn());
        } catch (RemoteException | NullPointerException e2) {
            qd.b("", e2);
            context = null;
        }
        if (context != null) {
            try {
                this.f8260a.zzt(ObjectWrapper.wrap(new MediaView(context)));
            } catch (RemoteException e3) {
                qd.b("", e3);
            }
        }
    }

    public static n a(zzabo zzaboVar) {
        synchronized (f8259b) {
            n nVar = f8259b.get(zzaboVar.asBinder());
            if (nVar != null) {
                return nVar;
            }
            n nVar2 = new n(zzaboVar);
            f8259b.put(zzaboVar.asBinder(), nVar2);
            return nVar2;
        }
    }

    @Override // com.google.android.gms.ads.formats.e
    public final String getCustomTemplateId() {
        try {
            return this.f8260a.getCustomTemplateId();
        } catch (RemoteException e2) {
            qd.b("", e2);
            return null;
        }
    }

    public final zzabo a() {
        return this.f8260a;
    }
}
