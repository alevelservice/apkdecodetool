package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class fh1 extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ch1 f6644a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fh1(ch1 ch1Var, Looper looper) {
        super(looper);
        this.f6644a = ch1Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f6644a.a(message);
    }
}
