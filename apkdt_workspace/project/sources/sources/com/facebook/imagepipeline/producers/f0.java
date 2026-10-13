package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* compiled from: PartialDiskCacheProducer.java */
/* loaded from: classes.dex */
public class f0 implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.c.e f3935a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.c.f f3936b;

    /* renamed from: c, reason: collision with root package name */
    private final e.f.c.f.h f3937c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.c.f.a f3938d;

    /* renamed from: e, reason: collision with root package name */
    private final i0<e.f.i.g.e> f3939e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public class a implements c.d<e.f.i.g.e, Void> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ l0 f3940a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3941b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Consumer f3942c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ j0 f3943d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e.f.b.a.d f3944e;

        a(l0 l0Var, String str, Consumer consumer, j0 j0Var, e.f.b.a.d dVar) {
            this.f3940a = l0Var;
            this.f3941b = str;
            this.f3942c = consumer;
            this.f3943d = j0Var;
            this.f3944e = dVar;
        }

        @Override // c.d
        public Void a(c.f<e.f.i.g.e> fVar) {
            if (f0.b(fVar)) {
                this.f3940a.a(this.f3941b, "PartialDiskCacheProducer", (Map<String, String>) null);
                this.f3942c.a();
            } else if (fVar.e()) {
                this.f3940a.a(this.f3941b, "PartialDiskCacheProducer", fVar.a(), null);
                f0.this.a((Consumer<e.f.i.g.e>) this.f3942c, this.f3943d, this.f3944e, (e.f.i.g.e) null);
            } else {
                e.f.i.g.e b2 = fVar.b();
                if (b2 != null) {
                    l0 l0Var = this.f3940a;
                    String str = this.f3941b;
                    l0Var.b(str, "PartialDiskCacheProducer", f0.a(l0Var, str, true, b2.t()));
                    com.facebook.imagepipeline.common.a b3 = com.facebook.imagepipeline.common.a.b(b2.t() - 1);
                    b2.a(b3);
                    int t = b2.t();
                    e.f.i.i.b c2 = this.f3943d.c();
                    if (b3.a(c2.a())) {
                        this.f3940a.a(this.f3941b, "PartialDiskCacheProducer", true);
                        this.f3942c.a(b2, 9);
                    } else {
                        this.f3942c.a(b2, 8);
                        e.f.i.i.c a2 = e.f.i.i.c.a(c2);
                        a2.a(com.facebook.imagepipeline.common.a.a(t - 1));
                        f0.this.a((Consumer<e.f.i.g.e>) this.f3942c, new o0(a2.a(), this.f3943d), this.f3944e, b2);
                    }
                } else {
                    l0 l0Var2 = this.f3940a;
                    String str2 = this.f3941b;
                    l0Var2.b(str2, "PartialDiskCacheProducer", f0.a(l0Var2, str2, false, 0));
                    f0.this.a((Consumer<e.f.i.g.e>) this.f3942c, this.f3943d, this.f3944e, b2);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f3946a;

        b(f0 f0Var, AtomicBoolean atomicBoolean) {
            this.f3946a = atomicBoolean;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            this.f3946a.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public static class c extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private final e.f.i.c.e f3947c;

        /* renamed from: d, reason: collision with root package name */
        private final e.f.b.a.d f3948d;

        /* renamed from: e, reason: collision with root package name */
        private final e.f.c.f.h f3949e;

        /* renamed from: f, reason: collision with root package name */
        private final e.f.c.f.a f3950f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        private final e.f.i.g.e f3951g;

        /* synthetic */ c(Consumer consumer, e.f.i.c.e eVar, e.f.b.a.d dVar, e.f.c.f.h hVar, e.f.c.f.a aVar, e.f.i.g.e eVar2, a aVar2) {
            this(consumer, eVar, dVar, hVar, aVar, eVar2);
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.b(i2)) {
                return;
            }
            if (this.f3951g != null) {
                try {
                    if (eVar.k() != null) {
                        try {
                            a(a(this.f3951g, eVar));
                        } catch (IOException e2) {
                            e.f.c.d.a.b("PartialDiskCacheProducer", "Error while merging image data", e2);
                            c().a(e2);
                        }
                        this.f3947c.a(this.f3948d);
                        return;
                    }
                } finally {
                    eVar.close();
                    this.f3951g.close();
                }
            }
            if (com.facebook.imagepipeline.producers.b.b(i2, 8) && com.facebook.imagepipeline.producers.b.a(i2) && eVar.p() != e.f.h.c.f17461b) {
                this.f3947c.a(this.f3948d, eVar);
                c().a(eVar, i2);
            } else {
                c().a(eVar, i2);
            }
        }

        private c(Consumer<e.f.i.g.e> consumer, e.f.i.c.e eVar, e.f.b.a.d dVar, e.f.c.f.h hVar, e.f.c.f.a aVar, @Nullable e.f.i.g.e eVar2) {
            super(consumer);
            this.f3947c = eVar;
            this.f3948d = dVar;
            this.f3949e = hVar;
            this.f3950f = aVar;
            this.f3951g = eVar2;
        }

        private e.f.c.f.j a(e.f.i.g.e eVar, e.f.i.g.e eVar2) {
            e.f.c.f.j a2 = this.f3949e.a(eVar2.t() + eVar2.k().f3656a);
            a(eVar.q(), a2, eVar2.k().f3656a);
            a(eVar2.q(), a2, eVar2.t());
            return a2;
        }

        private void a(InputStream inputStream, OutputStream outputStream, int i2) {
            byte[] bArr = this.f3950f.get(16384);
            int i3 = i2;
            while (i3 > 0) {
                try {
                    int read = inputStream.read(bArr, 0, Math.min(16384, i3));
                    if (read < 0) {
                        break;
                    } else if (read > 0) {
                        outputStream.write(bArr, 0, read);
                        i3 -= read;
                    }
                } finally {
                    this.f3950f.a(bArr);
                }
            }
            if (i3 > 0) {
                throw new IOException(String.format(null, "Failed to read %d bytes - finished %d short", Integer.valueOf(i2), Integer.valueOf(i3)));
            }
        }

        private void a(e.f.c.f.j jVar) {
            e.f.i.g.e eVar;
            Throwable th;
            e.f.c.g.a a2 = e.f.c.g.a.a(jVar.i());
            try {
                eVar = new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) a2);
                try {
                    eVar.z();
                    c().a(eVar, 1);
                    e.f.i.g.e.c(eVar);
                    e.f.c.g.a.b(a2);
                } catch (Throwable th2) {
                    th = th2;
                    e.f.i.g.e.c(eVar);
                    e.f.c.g.a.b(a2);
                    throw th;
                }
            } catch (Throwable th3) {
                eVar = null;
                th = th3;
            }
        }
    }

    public f0(e.f.i.c.e eVar, e.f.i.c.f fVar, e.f.c.f.h hVar, e.f.c.f.a aVar, i0<e.f.i.g.e> i0Var) {
        this.f3935a = eVar;
        this.f3936b = fVar;
        this.f3937c = hVar;
        this.f3938d = aVar;
        this.f3939e = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(c.f<?> fVar) {
        return fVar.c() || (fVar.e() && (fVar.a() instanceof CancellationException));
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        e.f.i.i.b c2 = j0Var.c();
        if (!c2.r()) {
            this.f3939e.a(consumer, j0Var);
            return;
        }
        j0Var.e().a(j0Var.getId(), "PartialDiskCacheProducer");
        e.f.b.a.d a2 = this.f3936b.a(c2, a(c2), j0Var.a());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f3935a.a(a2, atomicBoolean).a((c.d<e.f.i.g.e, TContinuationResult>) a(consumer, j0Var, a2));
        a(atomicBoolean, j0Var);
    }

    private c.d<e.f.i.g.e, Void> a(Consumer<e.f.i.g.e> consumer, j0 j0Var, e.f.b.a.d dVar) {
        return new a(j0Var.e(), j0Var.getId(), consumer, j0Var, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var, e.f.b.a.d dVar, @Nullable e.f.i.g.e eVar) {
        this.f3939e.a(new c(consumer, this.f3935a, dVar, this.f3937c, this.f3938d, eVar, null), j0Var);
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

    private static Uri a(e.f.i.i.b bVar) {
        return bVar.p().buildUpon().appendQueryParameter("fresco_partial", "true").build();
    }
}
