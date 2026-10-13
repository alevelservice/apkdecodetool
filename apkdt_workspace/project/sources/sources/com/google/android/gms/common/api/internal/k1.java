package com.google.android.gms.common.api.internal;

import android.app.Dialog;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class k1 extends n0 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Dialog f5101a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i1 f5102b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1(i1 i1Var, Dialog dialog) {
        this.f5102b = i1Var;
        this.f5101a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.n0
    public final void a() {
        this.f5102b.f5090f.g();
        if (this.f5101a.isShowing()) {
            this.f5101a.dismiss();
        }
    }
}
