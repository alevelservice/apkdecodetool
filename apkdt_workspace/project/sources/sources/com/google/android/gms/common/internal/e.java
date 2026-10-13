package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public abstract class e implements DialogInterface.OnClickListener {
    public static e a(Activity activity, Intent intent, int i2) {
        return new s(intent, activity, i2);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        try {
            a();
        } catch (ActivityNotFoundException unused) {
        } finally {
            dialogInterface.dismiss();
        }
    }

    public static e a(@NonNull com.google.android.gms.common.api.internal.j jVar, Intent intent, int i2) {
        return new t(intent, jVar, i2);
    }
}
