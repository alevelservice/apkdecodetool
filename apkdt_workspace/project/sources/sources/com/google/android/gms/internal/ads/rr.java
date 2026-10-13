package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rr<T> {

    /* renamed from: a, reason: collision with root package name */
    private final oa0 f9212a;

    /* renamed from: b, reason: collision with root package name */
    private final wa0 f9213b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<qz0<zzaok>> f9214c;

    /* renamed from: d, reason: collision with root package name */
    private final ws0 f9215d;

    /* renamed from: e, reason: collision with root package name */
    private final zu0 f9216e;

    /* renamed from: f, reason: collision with root package name */
    private final um f9217f;

    /* renamed from: g, reason: collision with root package name */
    private final eg0<T> f9218g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private final vs0 f9219h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rr(oa0 oa0Var, wa0 wa0Var, af1<qz0<zzaok>> af1Var, ws0 ws0Var, zu0 zu0Var, um umVar, eg0<T> eg0Var, aw awVar, @Nullable vs0 vs0Var) {
        this.f9212a = oa0Var;
        this.f9213b = wa0Var;
        this.f9214c = af1Var;
        this.f9215d = ws0Var;
        this.f9216e = zu0Var;
        this.f9217f = umVar;
        this.f9218g = eg0Var;
        this.f9219h = vs0Var;
    }

    public final qz0<T> a() {
        hu0 a2;
        if (this.f9219h != null) {
            a2 = this.f9216e.a((zu0) wu0.SERVER_TRANSACTION).a(gz0.a(this.f9219h)).a();
        } else {
            com.google.android.gms.ads.internal.n.i().a();
            if (this.f9215d.f10195d.w != null) {
                a2 = this.f9216e.a((zu0) wu0.SERVER_TRANSACTION).a(this.f9213b.a()).a();
            } else {
                a2 = this.f9216e.a((zu0) wu0.SERVER_TRANSACTION, (qz0) this.f9214c.get()).a((qy0<I, O2>) this.f9212a).a();
            }
        }
        if (((Boolean) mu1.e().a(aw1.X2)).booleanValue()) {
            return this.f9216e.a((zu0) wu0.RENDERER, (qz0) a2).a((qy0<I, O2>) this.f9217f).a((qy0) this.f9218g).a();
        }
        return this.f9216e.a((zu0) wu0.RENDERER, (qz0) a2).a((qy0<I, O2>) this.f9217f).a((qy0) this.f9218g).a(((Integer) mu1.e().a(aw1.Y2)).intValue(), TimeUnit.SECONDS).a();
    }
}
