package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qa extends jw0 {
    public qa(Looper looper) {
        super(looper);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.jw0
    public final void a(Message message) {
        try {
            super.a(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.c();
            wa.a(com.google.android.gms.ads.internal.n.g().a(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "AdMobHandler.handleMessage");
        }
    }
}
