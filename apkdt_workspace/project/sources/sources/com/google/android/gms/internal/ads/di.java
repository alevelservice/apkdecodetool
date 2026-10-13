package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class di implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f6225e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ EditText f6226f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(JsPromptResult jsPromptResult, EditText editText) {
        this.f6225e = jsPromptResult;
        this.f6226f = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f6225e.confirm(this.f6226f.getText().toString());
    }
}
