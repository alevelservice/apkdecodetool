package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public abstract class h1 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: f, reason: collision with root package name */
    protected volatile boolean f5083f;

    /* renamed from: g, reason: collision with root package name */
    protected final AtomicReference<j1> f5084g;

    /* renamed from: h, reason: collision with root package name */
    private final Handler f5085h;

    /* renamed from: i, reason: collision with root package name */
    protected final com.google.android.gms.common.c f5086i;

    /* JADX INFO: Access modifiers changed from: protected */
    public h1(j jVar) {
        this(jVar, com.google.android.gms.common.c.a());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.f5084g.set(bundle.getBoolean("resolving_error", false) ? new j1(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(ConnectionResult connectionResult, int i2);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void b(Bundle bundle) {
        super.b(bundle);
        j1 j1Var = this.f5084g.get();
        if (j1Var != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", j1Var.b());
            bundle.putInt("failed_status", j1Var.a().j());
            bundle.putParcelable("failed_resolution", j1Var.a().l());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void d() {
        super.d();
        this.f5083f = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void e() {
        super.e();
        this.f5083f = false;
    }

    protected abstract void f();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g() {
        this.f5084g.set(null);
        f();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), a(this.f5084g.get()));
        g();
    }

    @VisibleForTesting
    private h1(j jVar, com.google.android.gms.common.c cVar) {
        super(jVar);
        this.f5084g = new AtomicReference<>(null);
        this.f5085h = new com.google.android.gms.internal.base.c(Looper.getMainLooper());
        this.f5086i = cVar;
    }

    public final void b(ConnectionResult connectionResult, int i2) {
        j1 j1Var = new j1(connectionResult, i2);
        if (this.f5084g.compareAndSet(null, j1Var)) {
            this.f5085h.post(new i1(this, j1Var));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void a(int i2, int i3, Intent intent) {
        j1 j1Var = this.f5084g.get();
        if (i2 != 1) {
            if (i2 == 2) {
                int b2 = this.f5086i.b(a());
                r1 = b2 == 0;
                if (j1Var == null) {
                    return;
                }
                if (j1Var.a().j() == 18 && b2 == 18) {
                    return;
                }
            }
            r1 = false;
        } else if (i3 != -1) {
            if (i3 == 0) {
                j1 j1Var2 = new j1(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, j1Var.a().toString()), a(j1Var));
                this.f5084g.set(j1Var2);
                j1Var = j1Var2;
            }
            r1 = false;
        }
        if (r1) {
            g();
        } else if (j1Var != null) {
            a(j1Var.a(), j1Var.b());
        }
    }

    private static int a(@Nullable j1 j1Var) {
        if (j1Var == null) {
            return -1;
        }
        return j1Var.b();
    }
}
