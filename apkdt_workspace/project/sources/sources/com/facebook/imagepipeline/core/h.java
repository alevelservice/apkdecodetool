package com.facebook.imagepipeline.core;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.imagepipeline.core.i;
import com.facebook.imagepipeline.memory.d0;
import com.facebook.imagepipeline.producers.e0;
import com.facebook.imagepipeline.producers.s;
import e.f.c.k.b;
import e.f.i.c.h;
import e.f.i.c.n;
import e.f.i.c.q;
import e.f.i.c.t;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: ImagePipelineConfig.java */
/* loaded from: classes.dex */
public class h {
    private static c B = new c(null);
    private final boolean A;

    /* renamed from: a, reason: collision with root package name */
    private final Bitmap.Config f3692a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.common.internal.j<q> f3693b;

    /* renamed from: c, reason: collision with root package name */
    private final h.c f3694c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.i.c.f f3695d;

    /* renamed from: e, reason: collision with root package name */
    private final Context f3696e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f3697f;

    /* renamed from: g, reason: collision with root package name */
    private final f f3698g;

    /* renamed from: h, reason: collision with root package name */
    private final com.facebook.common.internal.j<q> f3699h;

    /* renamed from: i, reason: collision with root package name */
    private final e f3700i;

    /* renamed from: j, reason: collision with root package name */
    private final n f3701j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private final e.f.i.e.c f3702k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.transcoder.d f3703l;

    @Nullable
    private final Integer m;
    private final com.facebook.common.internal.j<Boolean> n;
    private final com.facebook.cache.disk.b o;
    private final e.f.c.f.c p;
    private final int q;
    private final e0 r;
    private final int s;
    private final com.facebook.imagepipeline.memory.e0 t;
    private final e.f.i.e.e u;
    private final Set<e.f.i.h.c> v;
    private final boolean w;
    private final com.facebook.cache.disk.b x;

    @Nullable
    private final e.f.i.e.d y;
    private final i z;

    /* compiled from: ImagePipelineConfig.java */
    /* loaded from: classes.dex */
    class a implements com.facebook.common.internal.j<Boolean> {
        a(h hVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.facebook.common.internal.j
        public Boolean get() {
            return true;
        }
    }

    /* compiled from: ImagePipelineConfig.java */
    /* loaded from: classes.dex */
    public static class b {
        private final i.b A;
        private boolean B;

        /* renamed from: a, reason: collision with root package name */
        private Bitmap.Config f3704a;

        /* renamed from: b, reason: collision with root package name */
        private com.facebook.common.internal.j<q> f3705b;

        /* renamed from: c, reason: collision with root package name */
        private h.c f3706c;

        /* renamed from: d, reason: collision with root package name */
        private e.f.i.c.f f3707d;

        /* renamed from: e, reason: collision with root package name */
        private final Context f3708e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f3709f;

        /* renamed from: g, reason: collision with root package name */
        private com.facebook.common.internal.j<q> f3710g;

        /* renamed from: h, reason: collision with root package name */
        private e f3711h;

        /* renamed from: i, reason: collision with root package name */
        private n f3712i;

        /* renamed from: j, reason: collision with root package name */
        private e.f.i.e.c f3713j;

        /* renamed from: k, reason: collision with root package name */
        private com.facebook.imagepipeline.transcoder.d f3714k;

        /* renamed from: l, reason: collision with root package name */
        @Nullable
        private Integer f3715l;
        private com.facebook.common.internal.j<Boolean> m;
        private com.facebook.cache.disk.b n;
        private e.f.c.f.c o;

        @Nullable
        private Integer p;
        private e0 q;
        private e.f.i.b.f r;
        private com.facebook.imagepipeline.memory.e0 s;
        private e.f.i.e.e t;
        private Set<e.f.i.h.c> u;
        private boolean v;
        private com.facebook.cache.disk.b w;
        private f x;
        private e.f.i.e.d y;
        private int z;

        /* synthetic */ b(Context context, a aVar) {
            this(context);
        }

        private b(Context context) {
            this.f3709f = false;
            this.f3715l = null;
            this.p = null;
            this.v = true;
            this.z = -1;
            this.A = new i.b(this);
            this.B = true;
            com.facebook.common.internal.h.a(context);
            this.f3708e = context;
        }

        public h a() {
            return new h(this, null);
        }
    }

    /* compiled from: ImagePipelineConfig.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private boolean f3716a;

        /* synthetic */ c(a aVar) {
            this();
        }

        public boolean a() {
            return this.f3716a;
        }

        private c() {
            this.f3716a = false;
        }
    }

    /* synthetic */ h(b bVar, a aVar) {
        this(bVar);
    }

    public static c A() {
        return B;
    }

    private static void a(e.f.c.k.b bVar, i iVar, e.f.c.k.a aVar) {
        e.f.c.k.c.f17195b = bVar;
        b.a i2 = iVar.i();
        if (i2 != null) {
            bVar.a(i2);
        }
        if (aVar != null) {
            bVar.a(aVar);
        }
    }

    public com.facebook.common.internal.j<q> b() {
        return this.f3693b;
    }

    public h.c c() {
        return this.f3694c;
    }

    public e.f.i.c.f d() {
        return this.f3695d;
    }

    public Context e() {
        return this.f3696e;
    }

    public com.facebook.common.internal.j<q> f() {
        return this.f3699h;
    }

    public e g() {
        return this.f3700i;
    }

    public i h() {
        return this.z;
    }

    public f i() {
        return this.f3698g;
    }

    public n j() {
        return this.f3701j;
    }

    @Nullable
    public e.f.i.e.c k() {
        return this.f3702k;
    }

    @Nullable
    public e.f.i.e.d l() {
        return this.y;
    }

    @Nullable
    public com.facebook.imagepipeline.transcoder.d m() {
        return this.f3703l;
    }

    @Nullable
    public Integer n() {
        return this.m;
    }

    public com.facebook.common.internal.j<Boolean> o() {
        return this.n;
    }

    public com.facebook.cache.disk.b p() {
        return this.o;
    }

    public int q() {
        return this.q;
    }

    public e.f.c.f.c r() {
        return this.p;
    }

    public e0 s() {
        return this.r;
    }

    public com.facebook.imagepipeline.memory.e0 t() {
        return this.t;
    }

    public e.f.i.e.e u() {
        return this.u;
    }

    public Set<e.f.i.h.c> v() {
        return Collections.unmodifiableSet(this.v);
    }

    public com.facebook.cache.disk.b w() {
        return this.x;
    }

    public boolean x() {
        return this.A;
    }

    public boolean y() {
        return this.f3697f;
    }

    public boolean z() {
        return this.w;
    }

    private h(b bVar) {
        e.f.i.c.f fVar;
        n nVar;
        e.f.c.f.c cVar;
        com.facebook.imagepipeline.memory.e0 e0Var;
        e.f.c.k.b b2;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ImagePipelineConfig()");
        }
        this.z = bVar.A.a();
        this.f3693b = bVar.f3705b == null ? new e.f.i.c.i((ActivityManager) bVar.f3708e.getSystemService("activity")) : bVar.f3705b;
        this.f3694c = bVar.f3706c == null ? new e.f.i.c.d() : bVar.f3706c;
        this.f3692a = bVar.f3704a == null ? Bitmap.Config.ARGB_8888 : bVar.f3704a;
        if (bVar.f3707d != null) {
            fVar = bVar.f3707d;
        } else {
            fVar = e.f.i.c.j.a();
        }
        this.f3695d = fVar;
        Context context = bVar.f3708e;
        com.facebook.common.internal.h.a(context);
        this.f3696e = context;
        this.f3698g = bVar.x == null ? new com.facebook.imagepipeline.core.b(new d()) : bVar.x;
        this.f3697f = bVar.f3709f;
        this.f3699h = bVar.f3710g == null ? new e.f.i.c.k() : bVar.f3710g;
        if (bVar.f3712i != null) {
            nVar = bVar.f3712i;
        } else {
            nVar = t.h();
        }
        this.f3701j = nVar;
        this.f3702k = bVar.f3713j;
        this.f3703l = a(bVar);
        this.m = bVar.f3715l;
        this.n = bVar.m == null ? new a(this) : bVar.m;
        this.o = bVar.n == null ? a(bVar.f3708e) : bVar.n;
        if (bVar.o != null) {
            cVar = bVar.o;
        } else {
            cVar = e.f.c.f.d.a();
        }
        this.p = cVar;
        this.q = a(bVar, this.z);
        this.s = bVar.z < 0 ? e.b.b.a.a.a.c.WARN_INT : bVar.z;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("ImagePipelineConfig->mNetworkFetcher");
        }
        this.r = bVar.q == null ? new s(this.s) : bVar.q;
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        e.f.i.b.f unused = bVar.r;
        if (bVar.s != null) {
            e0Var = bVar.s;
        } else {
            e0Var = new com.facebook.imagepipeline.memory.e0(d0.m().a());
        }
        this.t = e0Var;
        this.u = bVar.t == null ? new e.f.i.e.g() : bVar.t;
        this.v = bVar.u == null ? new HashSet<>() : bVar.u;
        this.w = bVar.v;
        this.x = bVar.w == null ? this.o : bVar.w;
        this.y = bVar.y;
        this.f3700i = bVar.f3711h == null ? new com.facebook.imagepipeline.core.a(this.t.d()) : bVar.f3711h;
        this.A = bVar.B;
        e.f.c.k.b h2 = this.z.h();
        if (h2 != null) {
            a(h2, this.z, new e.f.i.b.d(t()));
        } else if (this.z.o() && e.f.c.k.c.f17194a && (b2 = e.f.c.k.c.b()) != null) {
            a(b2, this.z, new e.f.i.b.d(t()));
        }
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
    }

    public static b b(Context context) {
        return new b(context, null);
    }

    private static com.facebook.cache.disk.b a(Context context) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("DiskCacheConfig.getDefaultMainDiskCacheConfig");
            }
            return com.facebook.cache.disk.b.a(context).a();
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    public Bitmap.Config a() {
        return this.f3692a;
    }

    @Nullable
    private static com.facebook.imagepipeline.transcoder.d a(b bVar) {
        if (bVar.f3714k == null || bVar.f3715l == null) {
            if (bVar.f3714k != null) {
                return bVar.f3714k;
            }
            return null;
        }
        throw new IllegalStateException("You can't define a custom ImageTranscoderFactory and provide an ImageTranscoderType");
    }

    private static int a(b bVar, i iVar) {
        if (bVar.p != null) {
            return bVar.p.intValue();
        }
        return iVar.m() ? 1 : 0;
    }
}
