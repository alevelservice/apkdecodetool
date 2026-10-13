package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public final class y extends e.i.b.b.b.a.e {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ a f4967a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(a aVar, Looper looper) {
        super(looper);
        this.f4967a = aVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f4967a.a(message);
    }
}
