package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class x extends h1 {

    /* renamed from: j, reason: collision with root package name */
    private final a.e.b<b<?>> f5144j;

    /* renamed from: k, reason: collision with root package name */
    private g f5145k;

    private x(j jVar) {
        super(jVar);
        this.f5144j = new a.e.b<>();
        this.f5027e.a("ConnectionlessLifecycleHelper", this);
    }

    public static void a(Activity activity, g gVar, b<?> bVar) {
        j a2 = LifecycleCallback.a(activity);
        x xVar = (x) a2.a("ConnectionlessLifecycleHelper", x.class);
        if (xVar == null) {
            xVar = new x(a2);
        }
        xVar.f5145k = gVar;
        com.google.android.gms.common.internal.m.a(bVar, "ApiKey cannot be null");
        xVar.f5144j.add(bVar);
        gVar.a(xVar);
    }

    private final void i() {
        if (this.f5144j.isEmpty()) {
            return;
        }
        this.f5145k.a(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void c() {
        super.c();
        i();
    }

    @Override // com.google.android.gms.common.api.internal.h1, com.google.android.gms.common.api.internal.LifecycleCallback
    public void d() {
        super.d();
        i();
    }

    @Override // com.google.android.gms.common.api.internal.h1, com.google.android.gms.common.api.internal.LifecycleCallback
    public void e() {
        super.e();
        this.f5145k.b(this);
    }

    @Override // com.google.android.gms.common.api.internal.h1
    protected final void f() {
        this.f5145k.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a.e.b<b<?>> h() {
        return this.f5144j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.h1
    public final void a(ConnectionResult connectionResult, int i2) {
        this.f5145k.a(connectionResult, i2);
    }
}
