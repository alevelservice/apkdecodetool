package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.lk;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class mk implements wm {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("AppComponent.class")
    private static mk f8149a;

    public static mk a(Context context, zzajd zzajdVar, int i2) {
        mk a2 = a(context, i2);
        a2.f().a(zzajdVar);
        return a2;
    }

    protected abstract cp0 a(kq0 kq0Var);

    public abstract Executor a();

    public abstract ScheduledExecutorService b();

    public abstract Executor c();

    public abstract tz0 d();

    public abstract kv e();

    public abstract ke0 f();

    public abstract zzbfk g();

    public abstract tp h();

    public abstract ko i();

    public abstract kz j();

    public abstract i00 k();

    public abstract x50 l();

    public abstract es0 m();

    public abstract nj0 n();

    @Deprecated
    public static mk a(Context context, int i2) {
        synchronized (mk.class) {
            if (f8149a != null) {
                return f8149a;
            }
            return a(new zzawv(15300000, i2, true, false), context, new cl());
        }
    }

    @Deprecated
    private static mk a(zzawv zzawvVar, Context context, cm.a aVar) {
        mk mkVar;
        synchronized (mk.class) {
            if (f8149a == null) {
                pl plVar = new pl();
                lk.a aVar2 = new lk.a();
                aVar2.a(zzawvVar);
                aVar2.a(context);
                plVar.a(new lk(aVar2));
                plVar.a(new cm(aVar));
                f8149a = plVar.a();
                aw1.a(context);
                com.google.android.gms.ads.internal.n.g().a(context, zzawvVar);
                com.google.android.gms.ads.internal.n.i().a(context);
                com.google.android.gms.ads.internal.n.c().a(context);
                com.google.android.gms.ads.internal.n.c().b(context);
                la.a(context);
                com.google.android.gms.ads.internal.n.f().a(context);
                com.google.android.gms.ads.internal.n.x().a(context);
                if (((Boolean) mu1.e().a(aw1.D3)).booleanValue()) {
                    new wc0(context, zzawvVar, new ks1(new ps1(context)), new ec0(new cc0(context), f8149a.d())).a();
                }
            }
            mkVar = f8149a;
        }
        return mkVar;
    }

    @Override // com.google.android.gms.internal.ads.wm
    public final cp0 a(zzaok zzaokVar) {
        return a(new kq0(zzaokVar));
    }
}
