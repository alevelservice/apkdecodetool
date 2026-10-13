package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class za extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ wa f10718a;

    private za(wa waVar) {
        this.f10718a = waVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            wa.a(this.f10718a, true);
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            wa.a(this.f10718a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ za(wa waVar, va vaVar) {
        this(waVar);
    }
}
