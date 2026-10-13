package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sr1 {

    /* renamed from: a, reason: collision with root package name */
    private final Runnable f9429a = new rr1(this);

    /* renamed from: b, reason: collision with root package name */
    private final Object f9430b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private wr1 f9431c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private Context f9432d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private zzrm f9433e;

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        synchronized (this.f9430b) {
            if (this.f9432d != null && this.f9431c == null) {
                this.f9431c = a(new tr1(this), new vr1(this));
                this.f9431c.k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        synchronized (this.f9430b) {
            if (this.f9431c == null) {
                return;
            }
            if (this.f9431c.f() || this.f9431c.d()) {
                this.f9431c.a();
            }
            this.f9431c = null;
            this.f9433e = null;
            Binder.flushPendingCommands();
        }
    }

    public final void a(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f9430b) {
            if (this.f9432d != null) {
                return;
            }
            this.f9432d = context.getApplicationContext();
            if (((Boolean) mu1.e().a(aw1.l2)).booleanValue()) {
                b();
            } else {
                if (((Boolean) mu1.e().a(aw1.k2)).booleanValue()) {
                    com.google.android.gms.ads.internal.n.f().a(new ur1(this));
                }
            }
        }
    }

    public final void a() {
        if (((Boolean) mu1.e().a(aw1.m2)).booleanValue()) {
            synchronized (this.f9430b) {
                b();
                com.google.android.gms.ads.internal.n.c();
                wa.f10063h.removeCallbacks(this.f9429a);
                com.google.android.gms.ads.internal.n.c();
                wa.f10063h.postDelayed(this.f9429a, ((Long) mu1.e().a(aw1.n2)).longValue());
            }
        }
    }

    public final zzrg a(zzrl zzrlVar) {
        synchronized (this.f9430b) {
            if (this.f9433e == null) {
                return new zzrg();
            }
            try {
                return this.f9433e.zza(zzrlVar);
            } catch (RemoteException e2) {
                qd.b("Unable to call into cache service.", e2);
                return new zzrg();
            }
        }
    }

    @VisibleForTesting
    private final synchronized wr1 a(BaseGmsClient.a aVar, BaseGmsClient.b bVar) {
        return new wr1(this.f9432d, com.google.android.gms.ads.internal.n.q().b(), aVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ wr1 a(sr1 sr1Var, wr1 wr1Var) {
        sr1Var.f9431c = null;
        return null;
    }
}
