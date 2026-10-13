package com.facebook.imagepipeline.core;

import android.content.Context;
import com.facebook.imagepipeline.core.h;
import e.f.c.k.b;
import e.f.i.c.p;

/* compiled from: ImagePipelineExperiments.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f3717a;

    /* renamed from: b, reason: collision with root package name */
    private final b.a f3718b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f3719c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.c.k.b f3720d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f3721e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f3722f;

    /* renamed from: g, reason: collision with root package name */
    private final int f3723g;

    /* renamed from: h, reason: collision with root package name */
    private final int f3724h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f3725i;

    /* renamed from: j, reason: collision with root package name */
    private final int f3726j;

    /* renamed from: k, reason: collision with root package name */
    private final boolean f3727k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f3728l;
    private final d m;
    private final com.facebook.common.internal.j<Boolean> n;
    private final boolean o;
    private final boolean p;

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: b, reason: collision with root package name */
        private b.a f3730b;

        /* renamed from: d, reason: collision with root package name */
        private e.f.c.k.b f3732d;
        private d m;
        public com.facebook.common.internal.j<Boolean> n;
        public boolean o;
        public boolean p;

        /* renamed from: a, reason: collision with root package name */
        private boolean f3729a = false;

        /* renamed from: c, reason: collision with root package name */
        private boolean f3731c = false;

        /* renamed from: e, reason: collision with root package name */
        private boolean f3733e = false;

        /* renamed from: f, reason: collision with root package name */
        private boolean f3734f = false;

        /* renamed from: g, reason: collision with root package name */
        private int f3735g = 0;

        /* renamed from: h, reason: collision with root package name */
        private int f3736h = 0;

        /* renamed from: i, reason: collision with root package name */
        public boolean f3737i = false;

        /* renamed from: j, reason: collision with root package name */
        private int f3738j = 2048;

        /* renamed from: k, reason: collision with root package name */
        private boolean f3739k = false;

        /* renamed from: l, reason: collision with root package name */
        private boolean f3740l = false;

        public b(h.b bVar) {
        }

        public i a() {
            return new i(this);
        }
    }

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes.dex */
    public static class c implements d {
        @Override // com.facebook.imagepipeline.core.i.d
        public l a(Context context, e.f.c.f.a aVar, e.f.i.e.c cVar, e.f.i.e.e eVar, boolean z, boolean z2, boolean z3, e eVar2, e.f.c.f.h hVar, p<e.f.b.a.d, e.f.i.g.c> pVar, p<e.f.b.a.d, e.f.c.f.g> pVar2, e.f.i.c.e eVar3, e.f.i.c.e eVar4, e.f.i.c.f fVar, e.f.i.b.f fVar2, int i2, int i3, boolean z4, int i4) {
            return new l(context, aVar, cVar, eVar, z, z2, z3, eVar2, hVar, pVar, pVar2, eVar3, eVar4, fVar, fVar2, i2, i3, z4, i4);
        }
    }

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes.dex */
    public interface d {
        l a(Context context, e.f.c.f.a aVar, e.f.i.e.c cVar, e.f.i.e.e eVar, boolean z, boolean z2, boolean z3, e eVar2, e.f.c.f.h hVar, p<e.f.b.a.d, e.f.i.g.c> pVar, p<e.f.b.a.d, e.f.c.f.g> pVar2, e.f.i.c.e eVar3, e.f.i.c.e eVar4, e.f.i.c.f fVar, e.f.i.b.f fVar2, int i2, int i3, boolean z4, int i4);
    }

    public boolean a() {
        return this.f3725i;
    }

    public int b() {
        return this.f3724h;
    }

    public int c() {
        return this.f3723g;
    }

    public int d() {
        return this.f3726j;
    }

    public d e() {
        return this.m;
    }

    public boolean f() {
        return this.f3722f;
    }

    public boolean g() {
        return this.f3721e;
    }

    public e.f.c.k.b h() {
        return this.f3720d;
    }

    public b.a i() {
        return this.f3718b;
    }

    public boolean j() {
        return this.f3719c;
    }

    public boolean k() {
        return this.o;
    }

    public com.facebook.common.internal.j<Boolean> l() {
        return this.n;
    }

    public boolean m() {
        return this.f3727k;
    }

    public boolean n() {
        return this.f3728l;
    }

    public boolean o() {
        return this.f3717a;
    }

    public boolean p() {
        return this.p;
    }

    private i(b bVar) {
        this.f3717a = bVar.f3729a;
        this.f3718b = bVar.f3730b;
        this.f3719c = bVar.f3731c;
        this.f3720d = bVar.f3732d;
        this.f3721e = bVar.f3733e;
        this.f3722f = bVar.f3734f;
        this.f3723g = bVar.f3735g;
        this.f3724h = bVar.f3736h;
        this.f3725i = bVar.f3737i;
        this.f3726j = bVar.f3738j;
        this.f3727k = bVar.f3739k;
        this.f3728l = bVar.f3740l;
        if (bVar.m != null) {
            this.m = bVar.m;
        } else {
            this.m = new c();
        }
        this.n = bVar.n;
        this.o = bVar.o;
        this.p = bVar.p;
    }
}
