package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y5 implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ z5 f10490e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y5(z5 z5Var) {
        this.f10490e = z5Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Context context;
        Intent a2 = this.f10490e.a();
        com.google.android.gms.ads.internal.n.c();
        context = this.f10490e.f10690d;
        wa.a(context, a2);
    }
}
