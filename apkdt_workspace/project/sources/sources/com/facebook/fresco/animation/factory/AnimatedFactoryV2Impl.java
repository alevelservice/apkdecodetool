package com.facebook.fresco.animation.factory;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.j;
import com.facebook.common.time.RealtimeSinceBootClock;
import e.f.c.b.i;
import e.f.i.c.h;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

@DoNotStrip
@NotThreadSafe
/* loaded from: classes.dex */
public class AnimatedFactoryV2Impl implements e.f.i.a.b.a {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.b.f f3629a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.e f3630b;

    /* renamed from: c, reason: collision with root package name */
    private final h<e.f.b.a.d, e.f.i.g.c> f3631c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f3632d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private e.f.i.a.b.d f3633e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private e.f.i.a.c.b f3634f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private e.f.i.a.d.a f3635g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private e.f.i.f.a f3636h;

    /* loaded from: classes.dex */
    class a implements e.f.i.e.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap.Config f3637a;

        a(Bitmap.Config config) {
            this.f3637a = config;
        }

        @Override // e.f.i.e.c
        public e.f.i.g.c a(e.f.i.g.e eVar, int i2, e.f.i.g.h hVar, com.facebook.imagepipeline.common.b bVar) {
            return AnimatedFactoryV2Impl.this.e().a(eVar, bVar, this.f3637a);
        }
    }

    /* loaded from: classes.dex */
    class b implements e.f.i.e.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap.Config f3639a;

        b(Bitmap.Config config) {
            this.f3639a = config;
        }

        @Override // e.f.i.e.c
        public e.f.i.g.c a(e.f.i.g.e eVar, int i2, e.f.i.g.h hVar, com.facebook.imagepipeline.common.b bVar) {
            return AnimatedFactoryV2Impl.this.e().b(eVar, bVar, this.f3639a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j<Integer> {
        c(AnimatedFactoryV2Impl animatedFactoryV2Impl) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.facebook.common.internal.j
        public Integer get() {
            return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements j<Integer> {
        d(AnimatedFactoryV2Impl animatedFactoryV2Impl) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.facebook.common.internal.j
        public Integer get() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements e.f.i.a.c.b {
        e() {
        }

        @Override // e.f.i.a.c.b
        public e.f.i.a.a.a a(e.f.i.a.a.e eVar, Rect rect) {
            return new e.f.i.a.c.a(AnimatedFactoryV2Impl.this.d(), eVar, rect, AnimatedFactoryV2Impl.this.f3632d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements e.f.i.a.c.b {
        f() {
        }

        @Override // e.f.i.a.c.b
        public e.f.i.a.a.a a(e.f.i.a.a.e eVar, Rect rect) {
            return new e.f.i.a.c.a(AnimatedFactoryV2Impl.this.d(), eVar, rect, AnimatedFactoryV2Impl.this.f3632d);
        }
    }

    @DoNotStrip
    public AnimatedFactoryV2Impl(e.f.i.b.f fVar, com.facebook.imagepipeline.core.e eVar, h<e.f.b.a.d, e.f.i.g.c> hVar, boolean z) {
        this.f3629a = fVar;
        this.f3630b = eVar;
        this.f3631c = hVar;
        this.f3632d = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e.f.i.a.d.a d() {
        if (this.f3635g == null) {
            this.f3635g = new e.f.i.a.d.a();
        }
        return this.f3635g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e.f.i.a.b.d e() {
        if (this.f3633e == null) {
            this.f3633e = a();
        }
        return this.f3633e;
    }

    private e.f.i.a.c.b c() {
        if (this.f3634f == null) {
            this.f3634f = new e();
        }
        return this.f3634f;
    }

    @Override // e.f.i.a.b.a
    @Nullable
    public e.f.i.f.a a(Context context) {
        if (this.f3636h == null) {
            this.f3636h = b();
        }
        return this.f3636h;
    }

    @Override // e.f.i.a.b.a
    public e.f.i.e.c b(Bitmap.Config config) {
        return new b(config);
    }

    private com.facebook.fresco.animation.factory.a b() {
        c cVar = new c(this);
        return new com.facebook.fresco.animation.factory.a(c(), i.b(), new e.f.c.b.c(this.f3630b.a()), RealtimeSinceBootClock.get(), this.f3629a, this.f3631c, cVar, new d(this));
    }

    @Override // e.f.i.a.b.a
    public e.f.i.e.c a(Bitmap.Config config) {
        return new a(config);
    }

    private e.f.i.a.b.d a() {
        return new e.f.i.a.b.e(new f(), this.f3629a);
    }
}
