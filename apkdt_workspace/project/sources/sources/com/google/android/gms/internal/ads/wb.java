package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.net.Uri;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class wb implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ xb f10075e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wb(xb xbVar) {
        this.f10075e = xbVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        com.google.android.gms.ads.internal.n.c();
        wa.a(this.f10075e.f10302e, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
