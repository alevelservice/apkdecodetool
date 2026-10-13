package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;

/* loaded from: classes.dex */
public final class y8 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y8(Context context) {
    }

    public static boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
