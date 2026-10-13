package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.m;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class d<R extends com.google.android.gms.common.api.m, A extends a.b> extends BasePendingResult<R> implements e<R> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @KeepForSdk
    public d(@NonNull com.google.android.gms.common.api.a<?> aVar, @NonNull com.google.android.gms.common.api.f fVar) {
        super(fVar);
        com.google.android.gms.common.internal.m.a(fVar, "GoogleApiClient must not be null");
        com.google.android.gms.common.internal.m.a(aVar, "Api must not be null");
        aVar.a();
    }

    @KeepForSdk
    private void a(@NonNull RemoteException remoteException) {
        c(new Status(8, remoteException.getLocalizedMessage(), null));
    }

    @KeepForSdk
    protected abstract void a(@NonNull A a2);

    @KeepForSdk
    public final void b(@NonNull A a2) {
        if (a2 instanceof com.google.android.gms.common.internal.o) {
            a2 = ((com.google.android.gms.common.internal.o) a2).B();
        }
        try {
            a((d<R, A>) a2);
        } catch (DeadObjectException e2) {
            a((RemoteException) e2);
            throw e2;
        } catch (RemoteException e3) {
            a(e3);
        }
    }

    @KeepForSdk
    protected void b(@NonNull R r) {
    }

    @KeepForSdk
    public final void c(@NonNull Status status) {
        com.google.android.gms.common.internal.m.a(!status.o(), "Failed result must not be success");
        R a2 = a(status);
        a((d<R, A>) a2);
        b((d<R, A>) a2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.e
    @KeepForSdk
    public /* bridge */ /* synthetic */ void a(Object obj) {
        super.a((d<R, A>) obj);
    }
}
