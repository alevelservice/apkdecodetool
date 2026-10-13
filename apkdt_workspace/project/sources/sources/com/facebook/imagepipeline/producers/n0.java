package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.producers.t;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: ResizeAndRotateProducer.java */
/* loaded from: classes.dex */
public class n0 implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4028a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.c.f.h f4029b;

    /* renamed from: c, reason: collision with root package name */
    private final i0<e.f.i.g.e> f4030c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f4031d;

    /* renamed from: e, reason: collision with root package name */
    private final com.facebook.imagepipeline.transcoder.d f4032e;

    /* compiled from: ResizeAndRotateProducer.java */
    /* loaded from: classes.dex */
    private class a extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private final boolean f4033c;

        /* renamed from: d, reason: collision with root package name */
        private final com.facebook.imagepipeline.transcoder.d f4034d;

        /* renamed from: e, reason: collision with root package name */
        private final j0 f4035e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f4036f;

        /* renamed from: g, reason: collision with root package name */
        private final t f4037g;

        /* compiled from: ResizeAndRotateProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.n0$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0070a implements t.d {
            C0070a(n0 n0Var) {
            }

            @Override // com.facebook.imagepipeline.producers.t.d
            public void a(e.f.i.g.e eVar, int i2) {
                a aVar = a.this;
                com.facebook.imagepipeline.transcoder.c createImageTranscoder = aVar.f4034d.createImageTranscoder(eVar.p(), a.this.f4033c);
                com.facebook.common.internal.h.a(createImageTranscoder);
                aVar.a(eVar, i2, createImageTranscoder);
            }
        }

        /* compiled from: ResizeAndRotateProducer.java */
        /* loaded from: classes.dex */
        class b extends e {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Consumer f4040a;

            b(n0 n0Var, Consumer consumer) {
                this.f4040a = consumer;
            }

            @Override // com.facebook.imagepipeline.producers.k0
            public void a() {
                a.this.f4037g.a();
                a.this.f4036f = true;
                this.f4040a.a();
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.k0
            public void b() {
                if (a.this.f4035e.f()) {
                    a.this.f4037g.c();
                }
            }
        }

        a(Consumer<e.f.i.g.e> consumer, j0 j0Var, boolean z, com.facebook.imagepipeline.transcoder.d dVar) {
            super(consumer);
            this.f4036f = false;
            this.f4035e = j0Var;
            Boolean m = this.f4035e.c().m();
            this.f4033c = m != null ? m.booleanValue() : z;
            this.f4034d = dVar;
            this.f4037g = new t(n0.this.f4028a, new C0070a(n0.this), 100);
            this.f4035e.a(new b(n0.this, consumer));
        }

        @Nullable
        private e.f.i.g.e b(e.f.i.g.e eVar) {
            return (this.f4035e.c().n().a() || eVar.r() == 0 || eVar.r() == -1) ? eVar : b(eVar, 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(@Nullable e.f.i.g.e eVar, int i2) {
            if (this.f4036f) {
                return;
            }
            boolean a2 = com.facebook.imagepipeline.producers.b.a(i2);
            if (eVar == null) {
                if (a2) {
                    c().a(null, 1);
                    return;
                }
                return;
            }
            e.f.h.c p = eVar.p();
            e.f.i.i.b c2 = this.f4035e.c();
            com.facebook.imagepipeline.transcoder.c createImageTranscoder = this.f4034d.createImageTranscoder(p, this.f4033c);
            com.facebook.common.internal.h.a(createImageTranscoder);
            e.f.c.j.e b2 = n0.b(c2, eVar, createImageTranscoder);
            if (a2 || b2 != e.f.c.j.e.UNSET) {
                if (b2 != e.f.c.j.e.YES) {
                    a(eVar, i2, p);
                } else if (this.f4037g.a(eVar, i2)) {
                    if (a2 || this.f4035e.f()) {
                        this.f4037g.c();
                    }
                }
            }
        }

        @Nullable
        private e.f.i.g.e b(e.f.i.g.e eVar, int i2) {
            e.f.i.g.e b2 = e.f.i.g.e.b(eVar);
            eVar.close();
            if (b2 != null) {
                b2.g(i2);
            }
            return b2;
        }

        private void a(e.f.i.g.e eVar, int i2, e.f.h.c cVar) {
            e.f.i.g.e b2;
            if (cVar != e.f.h.b.f17450a && cVar != e.f.h.b.f17460k) {
                b2 = a(eVar);
            } else {
                b2 = b(eVar);
            }
            c().a(b2, i2);
        }

        @Nullable
        private e.f.i.g.e a(e.f.i.g.e eVar) {
            RotationOptions n = this.f4035e.c().n();
            return (n.d() || !n.c()) ? eVar : b(eVar, n.b());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(e.f.i.g.e eVar, int i2, com.facebook.imagepipeline.transcoder.c cVar) {
            this.f4035e.e().a(this.f4035e.getId(), "ResizeAndRotateProducer");
            e.f.i.i.b c2 = this.f4035e.c();
            e.f.c.f.j a2 = n0.this.f4029b.a();
            try {
                com.facebook.imagepipeline.transcoder.b a3 = cVar.a(eVar, a2, c2.n(), c2.l(), null, 85);
                if (a3.a() != 2) {
                    Map<String, String> a4 = a(eVar, c2.l(), a3, cVar.a());
                    e.f.c.g.a a5 = e.f.c.g.a.a(a2.i());
                    try {
                        e.f.i.g.e eVar2 = new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) a5);
                        eVar2.a(e.f.h.b.f17450a);
                        try {
                            eVar2.z();
                            this.f4035e.e().b(this.f4035e.getId(), "ResizeAndRotateProducer", a4);
                            if (a3.a() != 1) {
                                i2 |= 16;
                            }
                            c().a(eVar2, i2);
                            return;
                        } finally {
                            e.f.i.g.e.c(eVar2);
                        }
                    } finally {
                        e.f.c.g.a.b(a5);
                    }
                }
                throw new RuntimeException("Error while transcoding the image");
            } catch (Exception e2) {
                this.f4035e.e().a(this.f4035e.getId(), "ResizeAndRotateProducer", e2, null);
                if (com.facebook.imagepipeline.producers.b.a(i2)) {
                    c().a(e2);
                }
            } finally {
                a2.close();
            }
        }

        @Nullable
        private Map<String, String> a(e.f.i.g.e eVar, @Nullable com.facebook.imagepipeline.common.e eVar2, @Nullable com.facebook.imagepipeline.transcoder.b bVar, @Nullable String str) {
            String str2;
            if (!this.f4035e.e().a(this.f4035e.getId())) {
                return null;
            }
            String str3 = eVar.u() + "x" + eVar.o();
            if (eVar2 != null) {
                str2 = eVar2.f3678a + "x" + eVar2.f3679b;
            } else {
                str2 = "Unspecified";
            }
            HashMap hashMap = new HashMap();
            hashMap.put("Image format", String.valueOf(eVar.p()));
            hashMap.put("Original size", str3);
            hashMap.put("Requested size", str2);
            hashMap.put("queueTime", String.valueOf(this.f4037g.b()));
            hashMap.put("Transcoder id", str);
            hashMap.put("Transcoding result", String.valueOf(bVar));
            return com.facebook.common.internal.e.copyOf((Map) hashMap);
        }
    }

    public n0(Executor executor, e.f.c.f.h hVar, i0<e.f.i.g.e> i0Var, boolean z, com.facebook.imagepipeline.transcoder.d dVar) {
        com.facebook.common.internal.h.a(executor);
        this.f4028a = executor;
        com.facebook.common.internal.h.a(hVar);
        this.f4029b = hVar;
        com.facebook.common.internal.h.a(i0Var);
        this.f4030c = i0Var;
        com.facebook.common.internal.h.a(dVar);
        this.f4032e = dVar;
        this.f4031d = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e.f.c.j.e b(e.f.i.i.b bVar, e.f.i.g.e eVar, com.facebook.imagepipeline.transcoder.c cVar) {
        if (eVar != null && eVar.p() != e.f.h.c.f17461b) {
            if (!cVar.a(eVar.p())) {
                return e.f.c.j.e.NO;
            }
            return e.f.c.j.e.valueOf(a(bVar.n(), eVar) || cVar.a(eVar, bVar.n(), bVar.l()));
        }
        return e.f.c.j.e.UNSET;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        this.f4030c.a(new a(consumer, j0Var, this.f4031d, this.f4032e), j0Var);
    }

    private static boolean a(RotationOptions rotationOptions, e.f.i.g.e eVar) {
        return !rotationOptions.a() && (com.facebook.imagepipeline.transcoder.e.b(rotationOptions, eVar) != 0 || b(rotationOptions, eVar));
    }

    private static boolean b(RotationOptions rotationOptions, e.f.i.g.e eVar) {
        if (rotationOptions.c() && !rotationOptions.a()) {
            return com.facebook.imagepipeline.transcoder.e.f4141a.contains(Integer.valueOf(eVar.m()));
        }
        eVar.e(0);
        return false;
    }
}
