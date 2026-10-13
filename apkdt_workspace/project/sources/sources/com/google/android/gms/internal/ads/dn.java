package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dn implements vt {

    /* renamed from: e, reason: collision with root package name */
    private final zzaji f6257e;

    public dn(zzaji zzajiVar) {
        this.f6257e = zzajiVar;
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void a(@Nullable Context context) {
        try {
            this.f6257e.resume();
            if (context != null) {
                this.f6257e.zzv(ObjectWrapper.wrap(context));
            }
        } catch (RemoteException e2) {
            qd.c("Cannot invoke onResume for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void b(@Nullable Context context) {
        try {
            this.f6257e.pause();
        } catch (RemoteException e2) {
            qd.c("Cannot invoke onPause for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void c(@Nullable Context context) {
        try {
            this.f6257e.destroy();
        } catch (RemoteException e2) {
            qd.c("Cannot invoke onDestroy for the mediation adapter.", e2);
        }
    }
}
