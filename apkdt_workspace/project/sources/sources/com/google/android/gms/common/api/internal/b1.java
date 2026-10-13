package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.g;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class b1<A extends d<? extends com.google.android.gms.common.api.m, a.b>> extends r0 {

    /* renamed from: a, reason: collision with root package name */
    private final A f5034a;

    public b1(int i2, A a2) {
        super(i2);
        this.f5034a = a2;
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(g.a<?> aVar) {
        try {
            this.f5034a.b(aVar.f());
        } catch (RuntimeException e2) {
            a(e2);
        }
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(@NonNull Status status) {
        this.f5034a.c(status);
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(@NonNull RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.f5034a.c(new Status(10, sb.toString()));
    }

    @Override // com.google.android.gms.common.api.internal.r0
    public final void a(@NonNull n1 n1Var, boolean z) {
        n1Var.a(this.f5034a, z);
    }
}
