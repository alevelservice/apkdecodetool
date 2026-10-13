package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.MainThread;
import com.google.android.gms.internal.measurement.zzx;

/* loaded from: classes.dex */
public final class z3 {

    /* renamed from: a, reason: collision with root package name */
    private final b4 f13362a;

    public z3(b4 b4Var) {
        com.google.android.gms.common.internal.m.a(b4Var);
        this.f13362a = b4Var;
    }

    public static boolean a(Context context) {
        ActivityInfo receiverInfo;
        com.google.android.gms.common.internal.m.a(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    @MainThread
    public final void a(Context context, Intent intent) {
        j4 a2 = j4.a(context, (zzx) null);
        f3 zzab = a2.zzab();
        if (intent == null) {
            zzab.t().a("Receiver called with null intent");
            return;
        }
        a2.zzae();
        String action = intent.getAction();
        zzab.y().a("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzab.y().a("Starting wakeful intent.");
            this.f13362a.doStartService(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                a2.b().a(new y3(this, a2, zzab));
            } catch (Exception e2) {
                zzab.t().a("Install Referrer Reporter encountered a problem", e2);
            }
            BroadcastReceiver.PendingResult doGoAsync = this.f13362a.doGoAsync();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                zzab.y().a("Install referrer extras are null");
                if (doGoAsync != null) {
                    doGoAsync.finish();
                    return;
                }
                return;
            }
            zzab.w().a("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String valueOf = String.valueOf(stringExtra);
                stringExtra = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            Bundle a3 = a2.D().a(Uri.parse(stringExtra));
            if (a3 == null) {
                zzab.y().a("No campaign defined in install referrer broadcast");
                if (doGoAsync != null) {
                    doGoAsync.finish();
                    return;
                }
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                zzab.t().a("Install referrer is missing timestamp");
            }
            a2.b().a(new c4(this, a2, longExtra, a3, context, zzab, doGoAsync));
        }
    }
}
