package com.facebook.drawee.backends.pipeline.info.i;

import android.graphics.drawable.Animatable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.backends.pipeline.info.g;
import com.facebook.drawee.backends.pipeline.info.h;
import e.f.i.g.f;
import javax.annotation.Nullable;

/* compiled from: ImagePerfControllerListener.java */
/* loaded from: classes.dex */
public class a extends e.f.f.d.c<f> {

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.common.time.b f3566b;

    /* renamed from: c, reason: collision with root package name */
    private final h f3567c;

    /* renamed from: d, reason: collision with root package name */
    private final g f3568d;

    public a(com.facebook.common.time.b bVar, h hVar, g gVar) {
        this.f3566b = bVar;
        this.f3567c = hVar;
        this.f3568d = gVar;
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void b(String str, Object obj) {
        long now = this.f3566b.now();
        this.f3567c.e(now);
        this.f3567c.a(str);
        this.f3567c.a(obj);
        this.f3568d.b(this.f3567c, 0);
        a(now);
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void a(String str, @Nullable f fVar) {
        this.f3567c.d(this.f3566b.now());
        this.f3567c.a(str);
        this.f3567c.a(fVar);
        this.f3568d.b(this.f3567c, 2);
    }

    @VisibleForTesting
    private void b(long j2) {
        this.f3567c.b(false);
        this.f3567c.h(j2);
        this.f3568d.a(this.f3567c, 2);
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void a(String str, @Nullable f fVar, @Nullable Animatable animatable) {
        long now = this.f3566b.now();
        this.f3567c.c(now);
        this.f3567c.f(now);
        this.f3567c.a(str);
        this.f3567c.a(fVar);
        this.f3568d.b(this.f3567c, 3);
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void a(String str, Throwable th) {
        long now = this.f3566b.now();
        this.f3567c.b(now);
        this.f3567c.a(str);
        this.f3568d.b(this.f3567c, 5);
        b(now);
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void a(String str) {
        super.a(str);
        long now = this.f3566b.now();
        int a2 = this.f3567c.a();
        if (a2 != 3 && a2 != 5) {
            this.f3567c.a(now);
            this.f3567c.a(str);
            this.f3568d.b(this.f3567c, 4);
        }
        b(now);
    }

    @VisibleForTesting
    public void a(long j2) {
        this.f3567c.b(true);
        this.f3567c.i(j2);
        this.f3568d.a(this.f3567c, 1);
    }
}
