package com.facebook.imagepipeline.producers;

import e.f.i.i.b;

/* compiled from: EncodedMemoryCacheProducer.java */
/* loaded from: classes.dex */
public class q implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.c.p<e.f.b.a.d, e.f.c.f.g> f4055a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.c.f f4056b;

    /* renamed from: c, reason: collision with root package name */
    private final i0<e.f.i.g.e> f4057c;

    /* compiled from: EncodedMemoryCacheProducer.java */
    /* loaded from: classes.dex */
    private static class a extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private final e.f.i.c.p<e.f.b.a.d, e.f.c.f.g> f4058c;

        /* renamed from: d, reason: collision with root package name */
        private final e.f.b.a.d f4059d;

        /* renamed from: e, reason: collision with root package name */
        private final boolean f4060e;

        public a(Consumer<e.f.i.g.e> consumer, e.f.i.c.p<e.f.b.a.d, e.f.c.f.g> pVar, e.f.b.a.d dVar, boolean z) {
            super(consumer);
            this.f4058c = pVar;
            this.f4059d = dVar;
            this.f4060e = z;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            boolean c2;
            try {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a("EncodedMemoryCacheProducer#onNewResultImpl");
                }
                if (!b.b(i2) && eVar != null && !b.a(i2, 10) && eVar.p() != e.f.h.c.f17461b) {
                    e.f.c.g.a<e.f.c.f.g> j2 = eVar.j();
                    if (j2 != null) {
                        try {
                            e.f.c.g.a<e.f.c.f.g> a2 = this.f4060e ? this.f4058c.a(this.f4059d, j2) : null;
                            if (a2 != null) {
                                try {
                                    e.f.i.g.e eVar2 = new e.f.i.g.e(a2);
                                    eVar2.a(eVar);
                                    try {
                                        c().a(1.0f);
                                        c().a(eVar2, i2);
                                        if (c2) {
                                            return;
                                        } else {
                                            return;
                                        }
                                    } finally {
                                        e.f.i.g.e.c(eVar2);
                                    }
                                } finally {
                                    e.f.c.g.a.b(a2);
                                }
                            }
                        } finally {
                            e.f.c.g.a.b(j2);
                        }
                    }
                    c().a(eVar, i2);
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                        return;
                    }
                    return;
                }
                c().a(eVar, i2);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            } finally {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        }
    }

    public q(e.f.i.c.p<e.f.b.a.d, e.f.c.f.g> pVar, e.f.i.c.f fVar, i0<e.f.i.g.e> i0Var) {
        this.f4055a = pVar;
        this.f4056b = fVar;
        this.f4057c = i0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        boolean c2;
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("EncodedMemoryCacheProducer#produceResults");
            }
            String id = j0Var.getId();
            l0 e2 = j0Var.e();
            e2.a(id, "EncodedMemoryCacheProducer");
            e.f.b.a.d c3 = this.f4056b.c(j0Var.c(), j0Var.a());
            e.f.c.g.a<e.f.c.f.g> aVar = this.f4055a.get(c3);
            try {
                if (aVar != null) {
                    e.f.i.g.e eVar = new e.f.i.g.e(aVar);
                    try {
                        e2.b(id, "EncodedMemoryCacheProducer", e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "true") : null);
                        e2.a(id, "EncodedMemoryCacheProducer", true);
                        consumer.a(1.0f);
                        consumer.a(eVar, 1);
                        if (c2) {
                            return;
                        } else {
                            return;
                        }
                    } finally {
                        e.f.i.g.e.c(eVar);
                    }
                }
                if (j0Var.g().getValue() >= b.EnumC0196b.ENCODED_MEMORY_CACHE.getValue()) {
                    e2.b(id, "EncodedMemoryCacheProducer", e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "false") : null);
                    e2.a(id, "EncodedMemoryCacheProducer", false);
                    consumer.a(null, 1);
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                        return;
                    }
                    return;
                }
                a aVar2 = new a(consumer, this.f4055a, c3, j0Var.c().s());
                e2.b(id, "EncodedMemoryCacheProducer", e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "false") : null);
                this.f4057c.a(aVar2, j0Var);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            } finally {
                e.f.c.g.a.b(aVar);
            }
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }
}
