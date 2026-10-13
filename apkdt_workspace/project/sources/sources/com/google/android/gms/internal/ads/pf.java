package com.google.android.gms.internal.ads;

import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pf implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public pf(mf mfVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
