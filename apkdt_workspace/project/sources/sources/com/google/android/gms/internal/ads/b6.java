package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class b6 implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ z5 f5720e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6(z5 z5Var) {
        this.f5720e = z5Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f5720e.a("Operation denied by user.");
    }
}
