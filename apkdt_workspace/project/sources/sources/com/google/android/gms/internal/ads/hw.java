package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class hw {

    /* renamed from: a, reason: collision with root package name */
    private final Set<ox<st1>> f7173a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<ox<jt>> f7174b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<ox<wt>> f7175c;

    /* renamed from: d, reason: collision with root package name */
    private final Set<ox<zu>> f7176d;

    /* renamed from: e, reason: collision with root package name */
    private final Set<ox<qu>> f7177e;

    /* renamed from: f, reason: collision with root package name */
    private final Set<ox<ot>> f7178f;

    /* renamed from: g, reason: collision with root package name */
    private final Set<ox<st>> f7179g;

    /* renamed from: h, reason: collision with root package name */
    private final Set<ox<com.google.android.gms.ads.o.a>> f7180h;

    /* renamed from: i, reason: collision with root package name */
    private final Set<ox<com.google.android.gms.ads.doubleclick.a>> f7181i;

    /* renamed from: j, reason: collision with root package name */
    private mt f7182j;

    /* renamed from: k, reason: collision with root package name */
    private zf0 f7183k;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Set<ox<st1>> f7184a = new HashSet();

        /* renamed from: b, reason: collision with root package name */
        private Set<ox<jt>> f7185b = new HashSet();

        /* renamed from: c, reason: collision with root package name */
        private Set<ox<wt>> f7186c = new HashSet();

        /* renamed from: d, reason: collision with root package name */
        private Set<ox<zu>> f7187d = new HashSet();

        /* renamed from: e, reason: collision with root package name */
        private Set<ox<qu>> f7188e = new HashSet();

        /* renamed from: f, reason: collision with root package name */
        private Set<ox<ot>> f7189f = new HashSet();

        /* renamed from: g, reason: collision with root package name */
        private Set<ox<com.google.android.gms.ads.o.a>> f7190g = new HashSet();

        /* renamed from: h, reason: collision with root package name */
        private Set<ox<com.google.android.gms.ads.doubleclick.a>> f7191h = new HashSet();

        /* renamed from: i, reason: collision with root package name */
        private Set<ox<st>> f7192i = new HashSet();

        public final a a(jt jtVar, Executor executor) {
            this.f7185b.add(new ox<>(jtVar, executor));
            return this;
        }

        public final a a(qu quVar, Executor executor) {
            this.f7188e.add(new ox<>(quVar, executor));
            return this;
        }

        public final a a(ot otVar, Executor executor) {
            this.f7189f.add(new ox<>(otVar, executor));
            return this;
        }

        public final a a(st stVar, Executor executor) {
            this.f7192i.add(new ox<>(stVar, executor));
            return this;
        }

        public final a a(com.google.android.gms.ads.o.a aVar, Executor executor) {
            this.f7190g.add(new ox<>(aVar, executor));
            return this;
        }

        public final a a(com.google.android.gms.ads.doubleclick.a aVar, Executor executor) {
            this.f7191h.add(new ox<>(aVar, executor));
            return this;
        }

        public final a a(@Nullable zzvm zzvmVar, Executor executor) {
            if (this.f7191h != null) {
                yi0 yi0Var = new yi0();
                yi0Var.a(zzvmVar);
                this.f7191h.add(new ox<>(yi0Var, executor));
            }
            return this;
        }

        public final a a(st1 st1Var, Executor executor) {
            this.f7184a.add(new ox<>(st1Var, executor));
            return this;
        }

        public final a a(wt wtVar, Executor executor) {
            this.f7186c.add(new ox<>(wtVar, executor));
            return this;
        }

        public final a a(zu zuVar, Executor executor) {
            this.f7187d.add(new ox<>(zuVar, executor));
            return this;
        }

        public final hw a() {
            return new hw(this);
        }
    }

    private hw(a aVar) {
        this.f7173a = aVar.f7184a;
        this.f7175c = aVar.f7186c;
        this.f7176d = aVar.f7187d;
        this.f7174b = aVar.f7185b;
        this.f7177e = aVar.f7188e;
        this.f7178f = aVar.f7189f;
        this.f7179g = aVar.f7192i;
        this.f7180h = aVar.f7190g;
        this.f7181i = aVar.f7191h;
    }

    public final Set<ox<jt>> a() {
        return this.f7174b;
    }

    public final Set<ox<qu>> b() {
        return this.f7177e;
    }

    public final Set<ox<ot>> c() {
        return this.f7178f;
    }

    public final Set<ox<st>> d() {
        return this.f7179g;
    }

    public final Set<ox<com.google.android.gms.ads.o.a>> e() {
        return this.f7180h;
    }

    public final Set<ox<com.google.android.gms.ads.doubleclick.a>> f() {
        return this.f7181i;
    }

    public final Set<ox<st1>> g() {
        return this.f7173a;
    }

    public final Set<ox<wt>> h() {
        return this.f7175c;
    }

    public final Set<ox<zu>> i() {
        return this.f7176d;
    }

    public final mt a(Set<ox<ot>> set) {
        if (this.f7182j == null) {
            this.f7182j = new mt(set);
        }
        return this.f7182j;
    }

    public final zf0 a(com.google.android.gms.common.util.e eVar) {
        if (this.f7183k == null) {
            this.f7183k = new zf0(eVar);
        }
        return this.f7183k;
    }
}
