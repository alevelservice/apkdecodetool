package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class zace extends zad implements f.a, f.b {

    /* renamed from: l, reason: collision with root package name */
    private static a.AbstractC0084a<? extends e.i.b.b.c.d, e.i.b.b.c.a> f5152l = e.i.b.b.c.c.f17835c;

    /* renamed from: e, reason: collision with root package name */
    private final Context f5153e;

    /* renamed from: f, reason: collision with root package name */
    private final Handler f5154f;

    /* renamed from: g, reason: collision with root package name */
    private final a.AbstractC0084a<? extends e.i.b.b.c.d, e.i.b.b.c.a> f5155g;

    /* renamed from: h, reason: collision with root package name */
    private Set<Scope> f5156h;

    /* renamed from: i, reason: collision with root package name */
    private com.google.android.gms.common.internal.c f5157i;

    /* renamed from: j, reason: collision with root package name */
    private e.i.b.b.c.d f5158j;

    /* renamed from: k, reason: collision with root package name */
    private t0 f5159k;

    @WorkerThread
    public zace(Context context, Handler handler, @NonNull com.google.android.gms.common.internal.c cVar) {
        this(context, handler, cVar, f5152l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(zak zakVar) {
        ConnectionResult j2 = zakVar.j();
        if (j2.o()) {
            ResolveAccountResponse k2 = zakVar.k();
            ConnectionResult k3 = k2.k();
            if (!k3.o()) {
                String valueOf = String.valueOf(k3);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                sb.toString();
                new Exception();
                this.f5159k.b(k3);
                this.f5158j.a();
                return;
            }
            this.f5159k.a(k2.j(), this.f5156h);
        } else {
            this.f5159k.b(j2);
        }
        this.f5158j.a();
    }

    @Override // com.google.android.gms.common.api.internal.f
    @WorkerThread
    public final void onConnected(@Nullable Bundle bundle) {
        this.f5158j.a(this);
    }

    @Override // com.google.android.gms.common.api.internal.m
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.f5159k.b(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.f
    @WorkerThread
    public final void onConnectionSuspended(int i2) {
        this.f5158j.a();
    }

    @WorkerThread
    public final void zaa(t0 t0Var) {
        e.i.b.b.c.d dVar = this.f5158j;
        if (dVar != null) {
            dVar.a();
        }
        this.f5157i.a(Integer.valueOf(System.identityHashCode(this)));
        a.AbstractC0084a<? extends e.i.b.b.c.d, e.i.b.b.c.a> abstractC0084a = this.f5155g;
        Context context = this.f5153e;
        Looper looper = this.f5154f.getLooper();
        com.google.android.gms.common.internal.c cVar = this.f5157i;
        this.f5158j = abstractC0084a.a(context, looper, cVar, (com.google.android.gms.common.internal.c) cVar.i(), (f.a) this, (f.b) this);
        this.f5159k = t0Var;
        Set<Scope> set = this.f5156h;
        if (set != null && !set.isEmpty()) {
            this.f5158j.b();
        } else {
            this.f5154f.post(new s0(this));
        }
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    @BinderThread
    public final void zab(zak zakVar) {
        this.f5154f.post(new u0(this, zakVar));
    }

    public final e.i.b.b.c.d zabo() {
        return this.f5158j;
    }

    public final void zabq() {
        e.i.b.b.c.d dVar = this.f5158j;
        if (dVar != null) {
            dVar.a();
        }
    }

    @WorkerThread
    public zace(Context context, Handler handler, @NonNull com.google.android.gms.common.internal.c cVar, a.AbstractC0084a<? extends e.i.b.b.c.d, e.i.b.b.c.a> abstractC0084a) {
        this.f5153e = context;
        this.f5154f = handler;
        com.google.android.gms.common.internal.m.a(cVar, "ClientSettings must not be null");
        this.f5157i = cVar;
        this.f5156h = cVar.h();
        this.f5155g = abstractC0084a;
    }
}
