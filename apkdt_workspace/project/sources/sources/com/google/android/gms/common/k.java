package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class k extends androidx.fragment.app.b {
    private Dialog p = null;
    private DialogInterface.OnCancelListener q = null;

    @Override // androidx.fragment.app.b
    public Dialog a(Bundle bundle) {
        if (this.p == null) {
            b(false);
        }
        return this.p;
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.q;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public static k a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        k kVar = new k();
        m.a(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        kVar.p = dialog2;
        if (onCancelListener != null) {
            kVar.q = onCancelListener;
        }
        return kVar;
    }

    @Override // androidx.fragment.app.b
    public void a(androidx.fragment.app.g gVar, String str) {
        super.a(gVar, str);
    }
}
