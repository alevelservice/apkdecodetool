package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class u4 {

    /* renamed from: b, reason: collision with root package name */
    private static u4 f9675b;

    /* renamed from: a, reason: collision with root package name */
    private AtomicBoolean f9676a = new AtomicBoolean(false);

    @VisibleForTesting
    u4() {
    }

    public static u4 a() {
        if (f9675b == null) {
            f9675b = new u4();
        }
        return f9675b;
    }

    private static boolean b(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(Context context) {
        aw1.a(context);
        if (((Boolean) mu1.e().a(aw1.u0)).booleanValue() && b(context)) {
            a(context, com.google.android.gms.measurement.a.a.a(context));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(Context context, String str) {
        boolean z;
        aw1.a(context);
        if (!((Boolean) mu1.e().a(aw1.q0)).booleanValue()) {
            if (!((Boolean) mu1.e().a(aw1.p0)).booleanValue()) {
                z = false;
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", z);
                a(context, com.google.android.gms.measurement.a.a.a(context, "FA-Ads", "am", str, bundle));
            }
        }
        z = true;
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("measurementEnabled", z);
        a(context, com.google.android.gms.measurement.a.a.a(context, "FA-Ads", "am", str, bundle2));
    }

    @Nullable
    public final Thread a(final Context context, final String str) {
        if (!this.f9676a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.w4

            /* renamed from: e, reason: collision with root package name */
            private final Context f10029e;

            /* renamed from: f, reason: collision with root package name */
            private final String f10030f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10029e = context;
                this.f10030f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                u4.b(this.f10029e, this.f10030f);
            }
        });
        thread.start();
        return thread;
    }

    @Nullable
    public final Thread a(final Context context) {
        if (!this.f9676a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.v4

            /* renamed from: e, reason: collision with root package name */
            private final Context f9856e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9856e = context;
            }

            @Override // java.lang.Runnable
            public final void run() {
                u4.c(this.f9856e);
            }
        });
        thread.start();
        return thread;
    }

    private static void a(Context context, com.google.android.gms.measurement.a.a aVar) {
        try {
            ((zzbdn) td.a(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", z4.f10684a)).zza(ObjectWrapper.wrap(context), new zzaiw(aVar));
        } catch (RemoteException | vd | NullPointerException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }
}
