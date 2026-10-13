package com.facebook.imagepipeline.producers;

import e.f.i.i.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: BaseProducerContext.java */
/* loaded from: classes.dex */
public class d implements j0 {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.i.b f3920a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3921b;

    /* renamed from: c, reason: collision with root package name */
    private final l0 f3922c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f3923d;

    /* renamed from: e, reason: collision with root package name */
    private final b.EnumC0196b f3924e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f3925f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private com.facebook.imagepipeline.common.d f3926g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f3927h;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f3928i = false;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private final List<k0> f3929j = new ArrayList();

    public d(e.f.i.i.b bVar, String str, l0 l0Var, Object obj, b.EnumC0196b enumC0196b, boolean z, boolean z2, com.facebook.imagepipeline.common.d dVar) {
        this.f3920a = bVar;
        this.f3921b = str;
        this.f3922c = l0Var;
        this.f3923d = obj;
        this.f3924e = enumC0196b;
        this.f3925f = z;
        this.f3926g = dVar;
        this.f3927h = z2;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public Object a() {
        return this.f3923d;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public synchronized com.facebook.imagepipeline.common.d b() {
        return this.f3926g;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public e.f.i.i.b c() {
        return this.f3920a;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public synchronized boolean d() {
        return this.f3925f;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public l0 e() {
        return this.f3922c;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public synchronized boolean f() {
        return this.f3927h;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public b.EnumC0196b g() {
        return this.f3924e;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public String getId() {
        return this.f3921b;
    }

    public void h() {
        a(i());
    }

    @Nullable
    public synchronized List<k0> i() {
        if (this.f3928i) {
            return null;
        }
        this.f3928i = true;
        return new ArrayList(this.f3929j);
    }

    public static void c(@Nullable List<k0> list) {
        if (list == null) {
            return;
        }
        Iterator<k0> it = list.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    public static void d(@Nullable List<k0> list) {
        if (list == null) {
            return;
        }
        Iterator<k0> it = list.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // com.facebook.imagepipeline.producers.j0
    public void a(k0 k0Var) {
        boolean z;
        synchronized (this) {
            this.f3929j.add(k0Var);
            z = this.f3928i;
        }
        if (z) {
            k0Var.a();
        }
    }

    @Nullable
    public synchronized List<k0> b(boolean z) {
        if (z == this.f3925f) {
            return null;
        }
        this.f3925f = z;
        return new ArrayList(this.f3929j);
    }

    public static void b(@Nullable List<k0> list) {
        if (list == null) {
            return;
        }
        Iterator<k0> it = list.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Nullable
    public synchronized List<k0> a(com.facebook.imagepipeline.common.d dVar) {
        if (dVar == this.f3926g) {
            return null;
        }
        this.f3926g = dVar;
        return new ArrayList(this.f3929j);
    }

    @Nullable
    public synchronized List<k0> a(boolean z) {
        if (z == this.f3927h) {
            return null;
        }
        this.f3927h = z;
        return new ArrayList(this.f3929j);
    }

    public static void a(@Nullable List<k0> list) {
        if (list == null) {
            return;
        }
        Iterator<k0> it = list.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }
}
