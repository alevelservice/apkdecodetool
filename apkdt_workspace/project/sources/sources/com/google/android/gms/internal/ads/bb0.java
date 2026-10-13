package com.google.android.gms.internal.ads;

import android.os.Binder;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.InputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class bb0 implements BaseGmsClient.a, BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    protected final he<InputStream> f5741e = new he<>();

    /* renamed from: f, reason: collision with root package name */
    protected final Object f5742f = new Object();

    /* renamed from: g, reason: collision with root package name */
    protected boolean f5743g = false;

    /* renamed from: h, reason: collision with root package name */
    protected boolean f5744h = false;

    /* renamed from: i, reason: collision with root package name */
    protected zzaok f5745i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("mLock")
    @VisibleForTesting(otherwise = 3)
    protected a7 f5746j;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        synchronized (this.f5742f) {
            this.f5744h = true;
            if (this.f5746j.f() || this.f5746j.d()) {
                this.f5746j.a();
            }
            Binder.flushPendingCommands();
        }
    }

    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        qd.a("Disconnected from remote ad request service.");
        this.f5741e.a(new gb0(0));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public void onConnectionSuspended(int i2) {
        qd.a("Cannot connect to remote service, fallback to local instance.");
    }
}
