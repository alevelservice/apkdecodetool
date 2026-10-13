package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ws0 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final zzvs f10192a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final zzyc f10193b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final zzafj f10194c;

    /* renamed from: d, reason: collision with root package name */
    public final zztp f10195d;

    /* renamed from: e, reason: collision with root package name */
    public final zztw f10196e;

    /* renamed from: f, reason: collision with root package name */
    public final String f10197f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList<String> f10198g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList<String> f10199h;

    /* renamed from: i, reason: collision with root package name */
    public final zzaai f10200i;

    /* renamed from: j, reason: collision with root package name */
    public final zztx f10201j;

    /* renamed from: k, reason: collision with root package name */
    public final int f10202k;

    /* renamed from: l, reason: collision with root package name */
    public final PublisherAdViewOptions f10203l;
    public final zzvm m;
    public final Set<String> n;

    private ws0(ys0 ys0Var) {
        zzyc zzycVar;
        this.f10196e = ys0.a(ys0Var);
        this.f10197f = ys0.b(ys0Var);
        this.f10192a = ys0.c(ys0Var);
        this.f10195d = new zztp(ys0.k(ys0Var).f11237e, ys0.k(ys0Var).f11238f, ys0.k(ys0Var).f11239g, ys0.k(ys0Var).f11240h, ys0.k(ys0Var).f11241i, ys0.k(ys0Var).f11242j, ys0.k(ys0Var).f11243k, ys0.k(ys0Var).f11244l || ys0.l(ys0Var), ys0.k(ys0Var).m, ys0.k(ys0Var).n, ys0.k(ys0Var).o, ys0.k(ys0Var).p, ys0.k(ys0Var).q, ys0.k(ys0Var).r, ys0.k(ys0Var).s, ys0.k(ys0Var).t, ys0.k(ys0Var).u, ys0.k(ys0Var).v, ys0.k(ys0Var).w, ys0.k(ys0Var).x, ys0.k(ys0Var).y);
        zzaai zzaaiVar = null;
        if (ys0.m(ys0Var) != null) {
            zzycVar = ys0.m(ys0Var);
        } else {
            zzycVar = ys0.n(ys0Var) != null ? ys0.n(ys0Var).f10889j : null;
        }
        this.f10193b = zzycVar;
        this.f10198g = ys0.d(ys0Var);
        this.f10199h = ys0.e(ys0Var);
        if (ys0.d(ys0Var) != null) {
            if (ys0.n(ys0Var) == null) {
                zzaaiVar = new zzaai(new NativeAdOptions.a().a());
            } else {
                zzaaiVar = ys0.n(ys0Var);
            }
        }
        this.f10200i = zzaaiVar;
        this.f10201j = ys0.f(ys0Var);
        this.f10202k = ys0.g(ys0Var);
        this.f10203l = ys0.h(ys0Var);
        this.m = ys0.i(ys0Var);
        this.f10194c = ys0.j(ys0Var);
        this.n = ys0Var.o;
    }

    public final zzack a() {
        PublisherAdViewOptions publisherAdViewOptions = this.f10203l;
        if (publisherAdViewOptions == null) {
            return null;
        }
        return publisherAdViewOptions.l();
    }
}
