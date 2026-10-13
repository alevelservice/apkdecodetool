package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eo0 implements ko0<bo0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f6478a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f6479b;

    /* renamed from: c, reason: collision with root package name */
    private final zzawv f6480c;

    public eo0(tz0 tz0Var, Context context, zzawv zzawvVar) {
        this.f6478a = tz0Var;
        this.f6479b = context;
        this.f6480c = zzawvVar;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<bo0> a() {
        return this.f6478a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.do0

            /* renamed from: e, reason: collision with root package name */
            private final eo0 f6268e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6268e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f6268e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ bo0 b() {
        boolean a2 = com.google.android.gms.common.o.c.a(this.f6479b).a();
        com.google.android.gms.ads.internal.n.c();
        boolean k2 = wa.k(this.f6479b);
        String str = this.f6480c.f11000e;
        com.google.android.gms.ads.internal.n.e();
        boolean e2 = db.e();
        com.google.android.gms.ads.internal.n.c();
        return new bo0(a2, k2, str, e2, wa.h(this.f6479b), DynamiteModule.b(this.f6479b, ModuleDescriptor.MODULE_ID), DynamiteModule.a(this.f6479b, ModuleDescriptor.MODULE_ID));
    }
}
