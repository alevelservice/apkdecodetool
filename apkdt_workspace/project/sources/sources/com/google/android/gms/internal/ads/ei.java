package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ei implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f6438e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ei(JsPromptResult jsPromptResult) {
        this.f6438e = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f6438e.cancel();
    }
}
