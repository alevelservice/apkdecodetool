package com.baseflow.permissionhandler;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* compiled from: AppSettingsManager.java */
/* loaded from: classes.dex */
final class n {

    /* compiled from: AppSettingsManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    interface a {
        void a(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, a aVar, o oVar) {
        if (context == null) {
            oVar.a("PermissionHandler.AppSettingsManager", "Android context cannot be null.");
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
            intent.addFlags(268435456);
            intent.addFlags(1073741824);
            intent.addFlags(8388608);
            context.startActivity(intent);
            aVar.a(true);
        } catch (Exception unused) {
            aVar.a(false);
        }
    }
}
