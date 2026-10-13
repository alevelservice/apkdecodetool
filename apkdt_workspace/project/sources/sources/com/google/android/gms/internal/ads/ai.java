package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ai implements DialogInterface.OnCancelListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f5576e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(JsPromptResult jsPromptResult) {
        this.f5576e = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f5576e.cancel();
    }
}
