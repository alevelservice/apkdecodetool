package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.producers.t;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: DecodeProducer.java */
/* loaded from: classes.dex */
public class l implements i0<e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.c.f.a f3993a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f3994b;

    /* renamed from: c, reason: collision with root package name */
    private final e.f.i.e.c f3995c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.i.e.e f3996d;

    /* renamed from: e, reason: collision with root package name */
    private final i0<e.f.i.g.e> f3997e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f3998f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f3999g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f4000h;

    /* renamed from: i, reason: collision with root package name */
    private final int f4001i;

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private class a extends c {
        public a(l lVar, Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var, boolean z, int i2) {
            super(consumer, j0Var, z, i2);
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected int a(e.f.i.g.e eVar) {
            return eVar.t();
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected synchronized boolean b(e.f.i.g.e eVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.b(i2)) {
                return false;
            }
            return super.b(eVar, i2);
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected e.f.i.g.h d() {
            return e.f.i.g.g.a(0, false, false);
        }
    }

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private class b extends c {

        /* renamed from: i, reason: collision with root package name */
        private final e.f.i.e.f f4002i;

        /* renamed from: j, reason: collision with root package name */
        private final e.f.i.e.e f4003j;

        /* renamed from: k, reason: collision with root package name */
        private int f4004k;

        public b(l lVar, Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var, e.f.i.e.f fVar, e.f.i.e.e eVar, boolean z, int i2) {
            super(consumer, j0Var, z, i2);
            com.facebook.common.internal.h.a(fVar);
            this.f4002i = fVar;
            com.facebook.common.internal.h.a(eVar);
            this.f4003j = eVar;
            this.f4004k = 0;
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected int a(e.f.i.g.e eVar) {
            return this.f4002i.a();
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected synchronized boolean b(e.f.i.g.e eVar, int i2) {
            boolean b2 = super.b(eVar, i2);
            if ((com.facebook.imagepipeline.producers.b.b(i2) || com.facebook.imagepipeline.producers.b.b(i2, 8)) && !com.facebook.imagepipeline.producers.b.b(i2, 4) && e.f.i.g.e.e(eVar) && eVar.p() == e.f.h.b.f17450a) {
                if (!this.f4002i.a(eVar)) {
                    return false;
                }
                int b3 = this.f4002i.b();
                if (b3 <= this.f4004k) {
                    return false;
                }
                if (b3 < this.f4003j.b(this.f4004k) && !this.f4002i.c()) {
                    return false;
                }
                this.f4004k = b3;
            }
            return b2;
        }

        @Override // com.facebook.imagepipeline.producers.l.c
        protected e.f.i.g.h d() {
            return this.f4003j.a(this.f4002i.b());
        }
    }

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private abstract class c extends m<e.f.i.g.e, e.f.c.g.a<e.f.i.g.c>> {

        /* renamed from: c, reason: collision with root package name */
        private final j0 f4005c;

        /* renamed from: d, reason: collision with root package name */
        private final l0 f4006d;

        /* renamed from: e, reason: collision with root package name */
        private final com.facebook.imagepipeline.common.b f4007e;

        /* renamed from: f, reason: collision with root package name */
        @GuardedBy("this")
        private boolean f4008f;

        /* renamed from: g, reason: collision with root package name */
        private final t f4009g;

        /* compiled from: DecodeProducer.java */
        /* loaded from: classes.dex */
        class a implements t.d {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ j0 f4011a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f4012b;

            a(l lVar, j0 j0Var, int i2) {
                this.f4011a = j0Var;
                this.f4012b = i2;
            }

            @Override // com.facebook.imagepipeline.producers.t.d
            public void a(e.f.i.g.e eVar, int i2) {
                if (eVar != null) {
                    if (l.this.f3998f || !com.facebook.imagepipeline.producers.b.b(i2, 16)) {
                        e.f.i.i.b c2 = this.f4011a.c();
                        if (l.this.f3999g || !e.f.c.j.f.i(c2.p())) {
                            eVar.h(com.facebook.imagepipeline.transcoder.a.a(c2.n(), c2.l(), eVar, this.f4012b));
                        }
                    }
                    c.this.c(eVar, i2);
                }
            }
        }

        /* compiled from: DecodeProducer.java */
        /* loaded from: classes.dex */
        class b extends e {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f4014a;

            b(l lVar, boolean z) {
                this.f4014a = z;
            }

            @Override // com.facebook.imagepipeline.producers.k0
            public void a() {
                if (this.f4014a) {
                    c.this.e();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.k0
            public void b() {
                if (c.this.f4005c.f()) {
                    c.this.f4009g.c();
                }
            }
        }

        public c(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var, boolean z, int i2) {
            super(consumer);
            this.f4005c = j0Var;
            this.f4006d = j0Var.e();
            this.f4007e = j0Var.c().c();
            this.f4008f = false;
            this.f4009g = new t(l.this.f3994b, new a(l.this, j0Var, i2), this.f4007e.f3659a);
            this.f4005c.a(new b(l.this, z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            b(true);
            c().a();
        }

        private synchronized boolean f() {
            return this.f4008f;
        }

        protected abstract int a(e.f.i.g.e eVar);

        protected abstract e.f.i.g.h d();

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't wrap try/catch for region: R(3:(10:(14:28|(12:32|33|34|35|36|37|38|(1:40)|41|42|43|44)|58|33|34|35|36|37|38|(0)|41|42|43|44)|(12:32|33|34|35|36|37|38|(0)|41|42|43|44)|36|37|38|(0)|41|42|43|44)|34|35) */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00fd, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00fe, code lost:
        
            r2 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00dd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void c(e.f.i.g.e r19, int r20) {
            /*
                Method dump skipped, instructions count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.l.c.c(e.f.i.g.e, int):void");
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            boolean c2;
            try {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a("DecodeProducer#onNewResultImpl");
                }
                boolean a2 = com.facebook.imagepipeline.producers.b.a(i2);
                if (a2 && !e.f.i.g.e.e(eVar)) {
                    c(new e.f.c.j.a("Encoded image is not valid."));
                    if (c2) {
                        return;
                    } else {
                        return;
                    }
                }
                if (!b(eVar, i2)) {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                        return;
                    }
                    return;
                }
                boolean b2 = com.facebook.imagepipeline.producers.b.b(i2, 4);
                if (a2 || b2 || this.f4005c.f()) {
                    this.f4009g.c();
                }
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            } finally {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        public void b(float f2) {
            super.b(f2 * 0.99f);
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        public void b(Throwable th) {
            c(th);
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        public void b() {
            e();
        }

        protected boolean b(e.f.i.g.e eVar, int i2) {
            return this.f4009g.a(eVar, i2);
        }

        private void b(boolean z) {
            synchronized (this) {
                if (z) {
                    if (!this.f4008f) {
                        c().a(1.0f);
                        this.f4008f = true;
                        this.f4009g.a();
                    }
                }
            }
        }

        @Nullable
        private Map<String, String> a(@Nullable e.f.i.g.c cVar, long j2, e.f.i.g.h hVar, boolean z, String str, String str2, String str3, String str4) {
            if (!this.f4006d.a(this.f4005c.getId())) {
                return null;
            }
            String valueOf = String.valueOf(j2);
            String valueOf2 = String.valueOf(hVar.b());
            String valueOf3 = String.valueOf(z);
            if (cVar instanceof e.f.i.g.d) {
                Bitmap p = ((e.f.i.g.d) cVar).p();
                String str5 = p.getWidth() + "x" + p.getHeight();
                HashMap hashMap = new HashMap(8);
                hashMap.put("bitmapSize", str5);
                hashMap.put("queueTime", valueOf);
                hashMap.put("hasGoodQuality", valueOf2);
                hashMap.put("isFinal", valueOf3);
                hashMap.put("encodedImageSize", str2);
                hashMap.put("imageFormat", str);
                hashMap.put("requestedImageSize", str3);
                hashMap.put("sampleSize", str4);
                return com.facebook.common.internal.e.copyOf((Map) hashMap);
            }
            HashMap hashMap2 = new HashMap(7);
            hashMap2.put("queueTime", valueOf);
            hashMap2.put("hasGoodQuality", valueOf2);
            hashMap2.put("isFinal", valueOf3);
            hashMap2.put("encodedImageSize", str2);
            hashMap2.put("imageFormat", str);
            hashMap2.put("requestedImageSize", str3);
            hashMap2.put("sampleSize", str4);
            return com.facebook.common.internal.e.copyOf((Map) hashMap2);
        }

        private void c(Throwable th) {
            b(true);
            c().a(th);
        }

        private void a(e.f.i.g.c cVar, int i2) {
            e.f.c.g.a<e.f.i.g.c> a2 = e.f.c.g.a.a(cVar);
            try {
                b(com.facebook.imagepipeline.producers.b.a(i2));
                c().a(a2, i2);
            } finally {
                e.f.c.g.a.b(a2);
            }
        }
    }

    public l(e.f.c.f.a aVar, Executor executor, e.f.i.e.c cVar, e.f.i.e.e eVar, boolean z, boolean z2, boolean z3, i0<e.f.i.g.e> i0Var, int i2) {
        com.facebook.common.internal.h.a(aVar);
        this.f3993a = aVar;
        com.facebook.common.internal.h.a(executor);
        this.f3994b = executor;
        com.facebook.common.internal.h.a(cVar);
        this.f3995c = cVar;
        com.facebook.common.internal.h.a(eVar);
        this.f3996d = eVar;
        this.f3998f = z;
        this.f3999g = z2;
        com.facebook.common.internal.h.a(i0Var);
        this.f3997e = i0Var;
        this.f4000h = z3;
        this.f4001i = i2;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var) {
        Consumer<e.f.i.g.e> bVar;
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("DecodeProducer#produceResults");
            }
            if (!e.f.c.j.f.i(j0Var.c().p())) {
                bVar = new a(this, consumer, j0Var, this.f4000h, this.f4001i);
            } else {
                bVar = new b(this, consumer, j0Var, new e.f.i.e.f(this.f3993a), this.f3996d, this.f4000h, this.f4001i);
            }
            this.f3997e.a(bVar, j0Var);
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }
}
