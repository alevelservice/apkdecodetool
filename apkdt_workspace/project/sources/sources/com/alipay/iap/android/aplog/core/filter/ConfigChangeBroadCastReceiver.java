package com.alipay.iap.android.aplog.core.filter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class ConfigChangeBroadCastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        e.b.b.a.a.d.i.c().e("ConfigChangeBroadCastReceiver", "onReceive resetUploadUrl");
    }
}
