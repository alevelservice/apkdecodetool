package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.hw;
import com.google.android.gms.internal.ads.ws;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kj0 implements gj0<sq> {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final ys0 f7703a;

    /* renamed from: b, reason: collision with root package name */
    private final mk f7704b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f7705c;

    /* renamed from: d, reason: collision with root package name */
    private final dj0 f7706d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private cr f7707e;

    public kj0(mk mkVar, Context context, dj0 dj0Var, ys0 ys0Var) {
        this.f7704b = mkVar;
        this.f7705c = context;
        this.f7706d = dj0Var;
        this.f7703a = ys0Var;
    }

    @Override // com.google.android.gms.internal.ads.gj0
    public final boolean a(zztp zztpVar, String str, ej0 ej0Var, ij0<? super sq> ij0Var) {
        if (str == null) {
            qd.b("Ad unit ID should not be null for NativeAdLoader.");
            this.f7704b.a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.jj0

                /* renamed from: e, reason: collision with root package name */
                private final kj0 f7511e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7511e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f7511e.a();
                }
            });
            return false;
        }
        ct0.a(this.f7705c, zztpVar.f11242j);
        int i2 = ej0Var instanceof hj0 ? ((hj0) ej0Var).f7089a : 1;
        ys0 ys0Var = this.f7703a;
        ys0Var.a(zztpVar);
        ys0Var.a(i2);
        ws0 c2 = ys0Var.c();
        i00 k2 = this.f7704b.k();
        ws.a aVar = new ws.a();
        aVar.a(this.f7705c);
        aVar.a(c2);
        k2.d(aVar.a());
        hw.a aVar2 = new hw.a();
        aVar2.a(this.f7706d.c(), this.f7704b.a());
        aVar2.a(this.f7706d.d(), this.f7704b.a());
        aVar2.a(this.f7706d.e(), this.f7704b.a());
        aVar2.a(this.f7706d.f(), this.f7704b.a());
        aVar2.a(this.f7706d.b(), this.f7704b.a());
        aVar2.a(c2.m, this.f7704b.a());
        k2.b(aVar2.a());
        k2.b(this.f7706d.a());
        f00 d2 = k2.d();
        d2.c().a(1);
        this.f7707e = new cr(this.f7704b.c(), this.f7704b.b(), d2.a().a());
        this.f7707e.a(new mj0(this, ij0Var, d2));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.gj0
    public final boolean isLoading() {
        cr crVar = this.f7707e;
        return crVar != null && crVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a() {
        this.f7706d.d().onAdFailedToLoad(1);
    }
}
