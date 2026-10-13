package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.g;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class k0 implements BaseGmsClient.e {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g.a f5100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(g.a aVar) {
        this.f5100a = aVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.e
    public final void a() {
        g.this.q.post(new j0(this));
    }
}
