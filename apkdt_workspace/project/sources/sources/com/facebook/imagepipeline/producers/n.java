package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.VisibleForTesting;
import e.f.i.i.b;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* compiled from: DiskCacheReadProducer.java */
/* loaded from: classes.dex */
public class n implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.c.e f4018a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.c.e f4019b;

    /* renamed from: c, reason: collision with root package name */
    private final e.f.i.c.f f4020c;

    /* renamed from: d, reason: collision with root package name */
    private final i0<e.f.i.g.e> f4021d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes.dex */
    public class a implements c.d<e.f.i.g.e, Void> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ l0 f4022a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f4023b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Consumer f4024c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ j0 f4025d;

        a(l0 l0Var, String str, Consumer consumer, j0 j0Var) {
            this.f4022a = l0Var;
            this.f4023b = str;
            this.f4024c = consumer;
            this.f4025d = j0Var;
        }

        @Override // c.d
        public Void a(c.f<e.f.i.g.e> fVar) {
            if (n.b(fVar)) {
                this.f4022a.a(this.f4023b, "DiskCacheProducer", (Map<String, String>) null);
                this.f4024c.a();
            } else if (fVar.e()) {
                this.f4022a.a(this.f4023b, "DiskCacheProducer", fVar.a(), null);
                n.this.f4021d.a(this.f4024c, this.f4025d);
            } else {
                e.f.i.g.e b2 = fVar.b();
                if (b2 != null) {
                    l0 l0Var = this.f4022a;
                    String str = this.f4023b;
                    l0Var.b(str, "DiskCacheProducer", n.a(l0Var, str, true, b2.t()));
                    this.f4022a.a(this.f4023b, "DiskCacheProducer", true);
                    this.f4024c.a(1.0f);
                    this.f4024c.a(b2, 1);
                    b2.close();
                } else {
                    l0 l0Var2 = this.f4022a;
                    String str2 = this.f4023b;
                    l0Var2.b(str2, "DiskCacheProducer", n.a(l0Var2, str2, false, 0));
                    n.this.f4021d.a(this.f4024c, this.f4025d);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f4027a;

        b(n nVar, AtomicBoolean atomicBoolean) {
            this.f4027a = atomicBoolean;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            this.f4027a.set(true);
        }
    }

    public n(e.f.i.c.e eVar, e.f.i.c.e eVar2, e.f.i.c.f fVar, i0<e.f.i.g.e> i0Var) {
        this.f4018a = eVar;
        this.f4019b = eVar2;
        this.f4020c = fVar;
        this.f4021d = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(c.f<?> fVar) {
        return fVar.c() || (fVar.e() && (fVar.a() instanceof CancellationException));
    }

    private c.d<e.f.i.g.e, Void> c(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        return new a(j0Var.e(), j0Var.getId(), consumer, j0Var);
    }

    private void b(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        if (j0Var.g().getValue() >= b.EnumC0196b.DISK_CACHE.getValue()) {
            consumer.a(null, 1);
        } else {
            this.f4021d.a(consumer, j0Var);
        }
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        e.f.i.i.b c2 = j0Var.c();
        if (!c2.r()) {
            b(consumer, j0Var);
            return;
        }
        j0Var.e().a(j0Var.getId(), "DiskCacheProducer");
        e.f.b.a.d c3 = this.f4020c.c(c2, j0Var.a());
        e.f.i.c.e eVar = c2.b() == b.a.SMALL ? this.f4019b : this.f4018a;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        eVar.a(c3, atomicBoolean).a((c.d<e.f.i.g.e, TContinuationResult>) c(consumer, j0Var));
        a(atomicBoolean, j0Var);
    }

    @VisibleForTesting
    @Nullable
    static Map<String, String> a(l0 l0Var, String str, boolean z, int i2) {
        if (!l0Var.a(str)) {
            return null;
        }
        if (z) {
            return com.facebook.common.internal.e.of("cached_value_found", String.valueOf(z), "encodedImageSize", String.valueOf(i2));
        }
        return com.facebook.common.internal.e.of("cached_value_found", String.valueOf(z));
    }

    private void a(AtomicBoolean atomicBoolean, j0 j0Var) {
        j0Var.a(new b(this, atomicBoolean));
    }
}
