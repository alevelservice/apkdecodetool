package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class w {

    /* renamed from: e, reason: collision with root package name */
    private static w f15025e;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private String f15026a = null;

    /* renamed from: b, reason: collision with root package name */
    private Boolean f15027b = null;

    /* renamed from: c, reason: collision with root package name */
    private Boolean f15028c = null;

    /* renamed from: d, reason: collision with root package name */
    private final Queue<Intent> f15029d = new ArrayDeque();

    private w() {
    }

    private int b(Context context, Intent intent) {
        ComponentName startService;
        String c2 = c(context, intent);
        if (c2 != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                if (c2.length() != 0) {
                    "Restricting intent to a specific service: ".concat(c2);
                } else {
                    new String("Restricting intent to a specific service: ");
                }
            }
            intent.setClassName(context.getPackageName(), c2);
        }
        try {
            if (b(context)) {
                startService = z.a(context, intent);
            } else {
                startService = context.startService(intent);
            }
            return startService == null ? 404 : -1;
        } catch (IllegalStateException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
            sb.append("Failed to start service while in background: ");
            sb.append(valueOf);
            sb.toString();
            return 402;
        } catch (SecurityException unused) {
            return 401;
        }
    }

    @Nullable
    private synchronized String c(Context context, Intent intent) {
        String str = this.f15026a;
        if (str != null) {
            return str;
        }
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService != null && resolveService.serviceInfo != null) {
            ServiceInfo serviceInfo = resolveService.serviceInfo;
            if (context.getPackageName().equals(serviceInfo.packageName) && serviceInfo.name != null) {
                if (serviceInfo.name.startsWith(".")) {
                    String valueOf = String.valueOf(context.getPackageName());
                    String valueOf2 = String.valueOf(serviceInfo.name);
                    this.f15026a = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                } else {
                    this.f15026a = serviceInfo.name;
                }
                return this.f15026a;
            }
            String str2 = serviceInfo.packageName;
            String str3 = serviceInfo.name;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 94 + String.valueOf(str3).length());
            sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
            sb.append(str2);
            sb.append("/");
            sb.append(str3);
            sb.toString();
            return null;
        }
        return null;
    }

    @KeepForSdk
    @MainThread
    public Intent a() {
        return this.f15029d.poll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Context context) {
        if (this.f15028c == null) {
            this.f15028c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f15027b.booleanValue()) {
            Log.isLoggable("FirebaseInstanceId", 3);
        }
        return this.f15028c.booleanValue();
    }

    @MainThread
    public int a(Context context, Intent intent) {
        Log.isLoggable("FirebaseInstanceId", 3);
        this.f15029d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return b(context, intent2);
    }

    @KeepForSdk
    public static synchronized w b() {
        w wVar;
        synchronized (w.class) {
            if (f15025e == null) {
                f15025e = new w();
            }
            wVar = f15025e;
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Context context) {
        if (this.f15027b == null) {
            this.f15027b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f15027b.booleanValue()) {
            Log.isLoggable("FirebaseInstanceId", 3);
        }
        return this.f15027b.booleanValue();
    }
}
