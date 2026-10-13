package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class b extends DialogFragment {

    /* renamed from: e, reason: collision with root package name */
    private Dialog f5160e = null;

    /* renamed from: f, reason: collision with root package name */
    private DialogInterface.OnCancelListener f5161f = null;

    public static b a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        b bVar = new b();
        m.a(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        bVar.f5160e = dialog2;
        if (onCancelListener != null) {
            bVar.f5161f = onCancelListener;
        }
        return bVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f5161f;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f5160e == null) {
            setShowsDialog(false);
        }
        return this.f5160e;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
