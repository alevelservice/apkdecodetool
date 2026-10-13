package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class g0 implements c.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ g f5071a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(g gVar) {
        this.f5071a = gVar;
    }

    @Override // com.google.android.gms.common.api.internal.c.a
    public final void a(boolean z) {
        this.f5071a.q.sendMessage(this.f5071a.q.obtainMessage(1, Boolean.valueOf(z)));
    }
}
