package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzf;
import java.util.List;

/* loaded from: classes.dex */
public final class u3 {

    /* renamed from: a, reason: collision with root package name */
    final j4 f13247a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u3(j4 j4Var) {
        this.f13247a = j4Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void a(String str) {
        if (str != null && !str.isEmpty()) {
            this.f13247a.b().g();
            if (!a()) {
                this.f13247a.zzab().w().a("Install Referrer Reporter is not available");
                return;
            }
            this.f13247a.zzab().w().a("Install Referrer Reporter is initializing");
            x3 x3Var = new x3(this, str);
            this.f13247a.b().g();
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            PackageManager packageManager = this.f13247a.getContext().getPackageManager();
            if (packageManager == null) {
                this.f13247a.zzab().t().a("Failed to obtain Package Manager to verify binding conditions");
                return;
            }
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null) {
                    String str2 = serviceInfo.packageName;
                    if (resolveInfo.serviceInfo.name != null && "com.android.vending".equals(str2) && a()) {
                        try {
                            this.f13247a.zzab().w().a("Install Referrer Service is", com.google.android.gms.common.stats.a.a().a(this.f13247a.getContext(), new Intent(intent), x3Var, 1) ? "available" : "not available");
                            return;
                        } catch (Exception e2) {
                            this.f13247a.zzab().q().a("Exception occurred while binding to Install Referrer Service", e2.getMessage());
                            return;
                        }
                    }
                    this.f13247a.zzab().w().a("Play Store missing or incompatible. Version 8.3.73 or later required");
                    return;
                }
                return;
            }
            this.f13247a.zzab().w().a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        this.f13247a.zzab().w().a("Install Referrer Reporter was called with invalid app package name");
    }

    @VisibleForTesting
    private final boolean a() {
        try {
            com.google.android.gms.common.o.b a2 = com.google.android.gms.common.o.c.a(this.f13247a.getContext());
            if (a2 != null) {
                return a2.b("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f13247a.zzab().w().a("Failed to retrieve Package Manager to check Play Store compatibility");
            return false;
        } catch (Exception e2) {
            this.f13247a.zzab().w().a("Failed to retrieve Play Store version", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    @WorkerThread
    public final Bundle a(String str, zzf zzfVar) {
        this.f13247a.b().g();
        if (zzfVar == null) {
            this.f13247a.zzab().t().a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle zza = zzfVar.zza(bundle);
            if (zza != null) {
                return zza;
            }
            this.f13247a.zzab().q().a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e2) {
            this.f13247a.zzab().q().a("Exception occurred while retrieving the Install Referrer", e2.getMessage());
            return null;
        }
    }
}
