package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import e.f.f.c.b;
import e.f.f.f.t;
import e.f.f.f.u;
import e.f.f.i.b;
import javax.annotation.Nullable;

/* compiled from: DraweeHolder.java */
/* loaded from: classes.dex */
public class b<DH extends e.f.f.i.b> implements u {

    /* renamed from: d, reason: collision with root package name */
    private DH f3586d;

    /* renamed from: a, reason: collision with root package name */
    private boolean f3583a = false;

    /* renamed from: b, reason: collision with root package name */
    private boolean f3584b = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f3585c = true;

    /* renamed from: e, reason: collision with root package name */
    private e.f.f.i.a f3587e = null;

    /* renamed from: f, reason: collision with root package name */
    private final e.f.f.c.b f3588f = e.f.f.c.b.a();

    public b(@Nullable DH dh) {
        if (dh != null) {
            a((b<DH>) dh);
        }
    }

    public static <DH extends e.f.f.i.b> b<DH> a(@Nullable DH dh, Context context) {
        b<DH> bVar = new b<>(dh);
        bVar.a(context);
        return bVar;
    }

    private void h() {
        if (this.f3583a) {
            return;
        }
        this.f3588f.a(b.a.ON_ATTACH_CONTROLLER);
        this.f3583a = true;
        e.f.f.i.a aVar = this.f3587e;
        if (aVar == null || aVar.c() == null) {
            return;
        }
        this.f3587e.e();
    }

    private void i() {
        if (this.f3584b && this.f3585c) {
            h();
        } else {
            j();
        }
    }

    private void j() {
        if (this.f3583a) {
            this.f3588f.a(b.a.ON_DETACH_CONTROLLER);
            this.f3583a = false;
            if (e()) {
                this.f3587e.b();
            }
        }
    }

    public void a(Context context) {
    }

    public DH b() {
        DH dh = this.f3586d;
        h.a(dh);
        return dh;
    }

    @Nullable
    public Drawable c() {
        DH dh = this.f3586d;
        if (dh == null) {
            return null;
        }
        return dh.b();
    }

    public boolean d() {
        return this.f3586d != null;
    }

    public boolean e() {
        e.f.f.i.a aVar = this.f3587e;
        return aVar != null && aVar.c() == this.f3586d;
    }

    public void f() {
        this.f3588f.a(b.a.ON_HOLDER_ATTACH);
        this.f3584b = true;
        i();
    }

    public void g() {
        this.f3588f.a(b.a.ON_HOLDER_DETACH);
        this.f3584b = false;
        i();
    }

    @Override // e.f.f.f.u
    public void onDraw() {
        if (this.f3583a) {
            return;
        }
        e.f.c.d.a.c((Class<?>) e.f.f.c.b.class, "%x: Draw requested for a non-attached controller %x. %s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f3587e)), toString());
        this.f3584b = true;
        this.f3585c = true;
        i();
    }

    public String toString() {
        g.b a2 = g.a(this);
        a2.a("controllerAttached", this.f3583a);
        a2.a("holderAttached", this.f3584b);
        a2.a("drawableVisible", this.f3585c);
        a2.a("events", this.f3588f.toString());
        return a2.toString();
    }

    public boolean a(MotionEvent motionEvent) {
        if (e()) {
            return this.f3587e.a(motionEvent);
        }
        return false;
    }

    @Override // e.f.f.f.u
    public void a(boolean z) {
        if (this.f3585c == z) {
            return;
        }
        this.f3588f.a(z ? b.a.ON_DRAWABLE_SHOW : b.a.ON_DRAWABLE_HIDE);
        this.f3585c = z;
        i();
    }

    private void a(@Nullable u uVar) {
        Object c2 = c();
        if (c2 instanceof t) {
            ((t) c2).a(uVar);
        }
    }

    public void a(@Nullable e.f.f.i.a aVar) {
        boolean z = this.f3583a;
        if (z) {
            j();
        }
        if (e()) {
            this.f3588f.a(b.a.ON_CLEAR_OLD_CONTROLLER);
            this.f3587e.a((e.f.f.i.b) null);
        }
        this.f3587e = aVar;
        if (this.f3587e != null) {
            this.f3588f.a(b.a.ON_SET_CONTROLLER);
            this.f3587e.a(this.f3586d);
        } else {
            this.f3588f.a(b.a.ON_CLEAR_CONTROLLER);
        }
        if (z) {
            h();
        }
    }

    @Nullable
    public e.f.f.i.a a() {
        return this.f3587e;
    }

    public void a(DH dh) {
        this.f3588f.a(b.a.ON_SET_HIERARCHY);
        boolean e2 = e();
        a((u) null);
        h.a(dh);
        this.f3586d = dh;
        Drawable b2 = this.f3586d.b();
        a(b2 == null || b2.isVisible());
        a(this);
        if (e2) {
            this.f3587e.a(dh);
        }
    }
}
