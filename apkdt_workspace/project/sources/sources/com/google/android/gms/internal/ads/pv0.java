package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class pv0 implements BaseGmsClient.a, BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    private final aw0 f8791e;

    /* renamed from: f, reason: collision with root package name */
    private final wv0 f8792f;

    /* renamed from: g, reason: collision with root package name */
    private final Object f8793g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private boolean f8794h = false;

    /* renamed from: i, reason: collision with root package name */
    private boolean f8795i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pv0(@NonNull Context context, @NonNull Looper looper, @NonNull wv0 wv0Var) {
        this.f8792f = wv0Var;
        this.f8791e = new aw0(context, looper, this, this);
    }

    private final void b() {
        synchronized (this.f8793g) {
            if (this.f8791e.f() || this.f8791e.d()) {
                this.f8791e.a();
            }
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        synchronized (this.f8793g) {
            if (!this.f8794h) {
                this.f8794h = true;
                this.f8791e.k();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(@Nullable Bundle bundle) {
        synchronized (this.f8793g) {
            if (this.f8795i) {
                return;
            }
            this.f8795i = true;
            try {
                this.f8791e.A().zza(new zzcyt(this.f8792f.e()));
                b();
            } catch (Exception unused) {
                b();
            } catch (Throwable th) {
                b();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnectionSuspended(int i2) {
    }
}
