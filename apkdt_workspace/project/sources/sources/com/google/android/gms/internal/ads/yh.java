package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class yh implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ JsResult f10563e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yh(JsResult jsResult) {
        this.f10563e = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f10563e.cancel();
    }
}
