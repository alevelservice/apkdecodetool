package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.util.concurrent.Future;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cs1 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private wr1 f6111a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6112b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f6113c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f6114d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public cs1(Context context) {
        this.f6113c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Future<InputStream> a(zzrl zzrlVar) {
        bs1 bs1Var = new bs1(this);
        es1 es1Var = new es1(this, zzrlVar, bs1Var);
        is1 is1Var = new is1(this, bs1Var);
        synchronized (this.f6114d) {
            this.f6111a = new wr1(this.f6113c, com.google.android.gms.ads.internal.n.q().b(), es1Var, is1Var);
            this.f6111a.k();
        }
        return bs1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        synchronized (this.f6114d) {
            if (this.f6111a == null) {
                return;
            }
            this.f6111a.a();
            this.f6111a = null;
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(cs1 cs1Var, boolean z) {
        cs1Var.f6112b = true;
        return true;
    }
}
