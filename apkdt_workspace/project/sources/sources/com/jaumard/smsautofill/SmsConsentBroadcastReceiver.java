package com.jaumard.smsautofill;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;

/* loaded from: classes2.dex */
public class SmsConsentBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static e f15494a;

    public SmsConsentBroadcastReceiver(e eVar) {
        f15494a = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            Status status = (Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
            if (status != null) {
                int k2 = status.k();
                if (k2 == 0) {
                    f15494a.a((Intent) extras.getParcelable("com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"));
                } else {
                    if (k2 != 15) {
                        return;
                    }
                    f15494a.a();
                }
            }
        }
    }
}
