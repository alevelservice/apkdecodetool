package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import androidx.annotation.GuardedBy;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z7 extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private Context f10708a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private WeakReference<Activity> f10709b;

    private z7(Context context) {
        super(context);
        this.f10709b = new WeakReference<>(null);
    }

    private final synchronized void b(Intent intent) {
        Activity activity = this.f10709b.get();
        if (activity == null) {
            intent.addFlags(268435456);
            super.startActivity(intent);
            return;
        }
        try {
            Intent intent2 = (Intent) intent.clone();
            intent2.setFlags(intent.getFlags() & (-268435457));
            activity.startActivity(intent2);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.g().a(th, "");
            intent.addFlags(268435456);
            super.startActivity(intent);
        }
    }

    public static Context c(Context context) {
        if (context instanceof z7) {
            return ((z7) context).getBaseContext();
        }
        return a(context);
    }

    public final synchronized void a(String str) {
        this.f10708a = super.createPackageContext(str, 0);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized ApplicationInfo getApplicationInfo() {
        if (this.f10708a != null) {
            return this.f10708a.getApplicationInfo();
        }
        return super.getApplicationInfo();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageName() {
        if (this.f10708a != null) {
            return this.f10708a.getPackageName();
        }
        return super.getPackageName();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageResourcePath() {
        if (this.f10708a != null) {
            return this.f10708a.getPackageResourcePath();
        }
        return super.getPackageResourcePath();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized void startActivity(Intent intent) {
        b(a(intent));
    }

    private final synchronized Intent a(Intent intent) {
        if (this.f10708a != null && intent.getComponent() != null && intent.getComponent().getPackageName().equals(this.f10708a.getPackageName())) {
            Intent intent2 = (Intent) intent.clone();
            intent2.setClassName(super.getPackageName(), intent.getComponent().getClassName());
            return intent2;
        }
        return intent;
    }

    private static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public static z7 b(Context context) {
        return new z7(a(context));
    }
}
