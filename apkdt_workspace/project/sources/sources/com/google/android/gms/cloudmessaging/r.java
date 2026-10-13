package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import androidx.annotation.Nullable;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4956a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private int f4957b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f4958c = 0;

    public r(Context context) {
        this.f4956a = context;
    }

    public final synchronized int a() {
        if (this.f4958c != 0) {
            return this.f4958c;
        }
        PackageManager packageManager = this.f4956a.getPackageManager();
        if (com.google.android.gms.common.o.c.a(this.f4956a).a("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            return 0;
        }
        if (!com.google.android.gms.common.util.o.k()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.f4958c = 1;
                return this.f4958c;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
            this.f4958c = 2;
            return this.f4958c;
        }
        if (com.google.android.gms.common.util.o.k()) {
            this.f4958c = 2;
        } else {
            this.f4958c = 1;
        }
        return this.f4958c;
    }

    public final synchronized int b() {
        PackageInfo a2;
        if (this.f4957b == 0 && (a2 = a("com.google.android.gms")) != null) {
            this.f4957b = a2.versionCode;
        }
        return this.f4957b;
    }

    @Nullable
    private final PackageInfo a(String str) {
        try {
            return com.google.android.gms.common.o.c.a(this.f4956a).b(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            sb.toString();
            return null;
        }
    }
}
