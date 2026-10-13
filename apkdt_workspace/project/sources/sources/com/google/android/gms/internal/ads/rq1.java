package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class rq1 {

    /* renamed from: a, reason: collision with root package name */
    private final Object f9209a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("activityTrackerLock")
    private qq1 f9210b = null;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("activityTrackerLock")
    private boolean f9211c = false;

    public final void a(Context context) {
        synchronized (this.f9209a) {
            if (!this.f9211c) {
                if (!com.google.android.gms.common.util.o.a()) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    qd.d("Can not cast Context to Application");
                    return;
                }
                if (this.f9210b == null) {
                    this.f9210b = new qq1();
                }
                this.f9210b.a(application, context);
                this.f9211c = true;
            }
        }
    }

    public final void b(sq1 sq1Var) {
        synchronized (this.f9209a) {
            if (this.f9210b == null) {
                return;
            }
            this.f9210b.b(sq1Var);
        }
    }

    @Nullable
    public final Context b() {
        synchronized (this.f9209a) {
            if (!com.google.android.gms.common.util.o.a()) {
                return null;
            }
            if (this.f9210b == null) {
                return null;
            }
            return this.f9210b.b();
        }
    }

    public final void a(sq1 sq1Var) {
        synchronized (this.f9209a) {
            if (com.google.android.gms.common.util.o.a()) {
                if (this.f9210b == null) {
                    this.f9210b = new qq1();
                }
                this.f9210b.a(sq1Var);
            }
        }
    }

    @Nullable
    public final Activity a() {
        synchronized (this.f9209a) {
            if (!com.google.android.gms.common.util.o.a()) {
                return null;
            }
            if (this.f9210b == null) {
                return null;
            }
            return this.f9210b.a();
        }
    }
}
