package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.g;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class d1<ResultT> extends c0 {

    /* renamed from: a, reason: collision with root package name */
    private final s<a.b, ResultT> f5041a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.b.d.i<ResultT> f5042b;

    /* renamed from: c, reason: collision with root package name */
    private final q f5043c;

    public d1(int i2, s<a.b, ResultT> sVar, e.i.b.b.d.i<ResultT> iVar, q qVar) {
        super(i2);
        this.f5042b = iVar;
        this.f5041a = sVar;
        this.f5043c = qVar;
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(g.a<?> aVar) {
        Status a2;
        try {
            this.f5041a.a(aVar.f(), this.f5042b);
        } catch (DeadObjectException e2) {
            throw e2;
        } catch (RemoteException e3) {
            a2 = r0.a(e3);
            a(a2);
        } catch (RuntimeException e4) {
            a(e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.c0
    @Nullable
    public final Feature[] b(g.a<?> aVar) {
        return this.f5041a.b();
    }

    @Override // com.google.android.gms.common.api.internal.c0
    public final boolean c(g.a<?> aVar) {
        return this.f5041a.a();
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(@NonNull Status status) {
        this.f5042b.b(this.f5043c.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(@NonNull RuntimeException runtimeException) {
        this.f5042b.b(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(@NonNull n1 n1Var, boolean z) {
        n1Var.a(this.f5042b, z);
    }
}
