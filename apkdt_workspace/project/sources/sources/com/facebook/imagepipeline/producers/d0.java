package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.imagepipeline.producers.e0;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: NetworkFetchProducer.java */
/* loaded from: classes.dex */
public class d0 implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.c.f.h f3930a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.c.f.a f3931b;

    /* renamed from: c, reason: collision with root package name */
    private final e0 f3932c;

    public d0(e.f.c.f.h hVar, e.f.c.f.a aVar, e0 e0Var) {
        this.f3930a = hVar;
        this.f3931b = aVar;
        this.f3932c = e0Var;
    }

    protected void b(e.f.c.f.j jVar, r rVar) {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!b(rVar) || uptimeMillis - rVar.d() < 100) {
            return;
        }
        rVar.a(uptimeMillis);
        rVar.e().a(rVar.c(), "NetworkFetchProducer", "intermediate_result");
        a(jVar, rVar.f(), rVar.g(), rVar.a());
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        j0Var.e().a(j0Var.getId(), "NetworkFetchProducer");
        r a2 = this.f3932c.a(consumer, j0Var);
        this.f3932c.a((e0) a2, (e0.a) new a(a2));
    }

    /* compiled from: NetworkFetchProducer.java */
    /* loaded from: classes.dex */
    class a implements e0.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ r f3933a;

        a(r rVar) {
            this.f3933a = rVar;
        }

        @Override // com.facebook.imagepipeline.producers.e0.a
        public void a(InputStream inputStream, int i2) {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("NetworkFetcher->onResponse");
            }
            d0.this.a(this.f3933a, inputStream, i2);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }

        @Override // com.facebook.imagepipeline.producers.e0.a
        public void a(Throwable th) {
            d0.this.a(this.f3933a, th);
        }

        @Override // com.facebook.imagepipeline.producers.e0.a
        public void a() {
            d0.this.a(this.f3933a);
        }
    }

    protected void a(r rVar, InputStream inputStream, int i2) {
        e.f.c.f.j a2;
        if (i2 > 0) {
            a2 = this.f3930a.a(i2);
        } else {
            a2 = this.f3930a.a();
        }
        byte[] bArr = this.f3931b.get(16384);
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    this.f3932c.a((e0) rVar, a2.size());
                    a(a2, rVar);
                    return;
                } else if (read > 0) {
                    a2.write(bArr, 0, read);
                    b(a2, rVar);
                    rVar.a().a(a(a2.size(), i2));
                }
            } finally {
                this.f3931b.a(bArr);
                a2.close();
            }
        }
    }

    private boolean b(r rVar) {
        if (rVar.b().f()) {
            return this.f3932c.a(rVar);
        }
        return false;
    }

    protected static float a(int i2, int i3) {
        if (i3 > 0) {
            return i2 / i3;
        }
        double d2 = -i2;
        Double.isNaN(d2);
        return 1.0f - ((float) Math.exp(d2 / 50000.0d));
    }

    protected void a(e.f.c.f.j jVar, r rVar) {
        Map<String, String> a2 = a(rVar, jVar.size());
        l0 e2 = rVar.e();
        e2.b(rVar.c(), "NetworkFetchProducer", a2);
        e2.a(rVar.c(), "NetworkFetchProducer", true);
        a(jVar, rVar.f() | 1, rVar.g(), rVar.a());
    }

    protected static void a(e.f.c.f.j jVar, int i2, @Nullable com.facebook.imagepipeline.common.a aVar, Consumer<e.f.i.g.e> consumer) {
        e.f.i.g.e eVar;
        e.f.c.g.a a2 = e.f.c.g.a.a(jVar.i());
        try {
            eVar = new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) a2);
        } catch (Throwable th) {
            th = th;
            eVar = null;
        }
        try {
            eVar.a(aVar);
            eVar.z();
            consumer.a(eVar, i2);
            e.f.i.g.e.c(eVar);
            e.f.c.g.a.b(a2);
        } catch (Throwable th2) {
            th = th2;
            e.f.i.g.e.c(eVar);
            e.f.c.g.a.b(a2);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(r rVar, Throwable th) {
        rVar.e().a(rVar.c(), "NetworkFetchProducer", th, null);
        rVar.e().a(rVar.c(), "NetworkFetchProducer", false);
        rVar.a().a(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(r rVar) {
        rVar.e().a(rVar.c(), "NetworkFetchProducer", (Map<String, String>) null);
        rVar.a().a();
    }

    @Nullable
    private Map<String, String> a(r rVar, int i2) {
        if (rVar.e().a(rVar.c())) {
            return this.f3932c.b(rVar, i2);
        }
        return null;
    }
}
