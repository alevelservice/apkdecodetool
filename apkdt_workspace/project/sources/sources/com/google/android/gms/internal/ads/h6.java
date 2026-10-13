package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class h6 implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ f6 f7013e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h6(f6 f6Var) {
        this.f7013e = f6Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f7013e.a("User canceled the download.");
    }
}
