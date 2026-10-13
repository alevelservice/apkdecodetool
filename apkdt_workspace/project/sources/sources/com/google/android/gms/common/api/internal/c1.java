package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public abstract class c1<T> extends c0 {

    /* renamed from: a, reason: collision with root package name */
    protected final e.i.b.b.d.i<T> f5040a;

    public c1(int i2, e.i.b.b.d.i<T> iVar) {
        super(i2);
        this.f5040a = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public void a(@NonNull Status status) {
        this.f5040a.b(new com.google.android.gms.common.api.b(status));
    }

    protected abstract void d(g.a<?> aVar);

    @Override // com.google.android.gms.common.api.internal.r0
    public void a(@NonNull RuntimeException runtimeException) {
        this.f5040a.b(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(g.a<?> aVar) {
        Status a2;
        Status a3;
        try {
            d(aVar);
        } catch (DeadObjectException e2) {
            a3 = r0.a(e2);
            a(a3);
            throw e2;
        } catch (RemoteException e3) {
            a2 = r0.a(e3);
            a(a2);
        } catch (RuntimeException e4) {
            a(e4);
        }
    }
}
