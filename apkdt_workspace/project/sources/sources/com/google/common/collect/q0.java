package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.r0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import e.i.c.a.g;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* compiled from: MapMaker.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class q0 {

    /* renamed from: a, reason: collision with root package name */
    boolean f14141a;

    /* renamed from: b, reason: collision with root package name */
    int f14142b = -1;

    /* renamed from: c, reason: collision with root package name */
    int f14143c = -1;

    /* renamed from: d, reason: collision with root package name */
    @MonotonicNonNullDecl
    r0.p f14144d;

    /* renamed from: e, reason: collision with root package name */
    @MonotonicNonNullDecl
    r0.p f14145e;

    /* renamed from: f, reason: collision with root package name */
    @MonotonicNonNullDecl
    e.i.c.a.b<Object> f14146f;

    /* compiled from: MapMaker.java */
    /* loaded from: classes.dex */
    enum a {
        VALUE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    @GwtIncompatible
    public q0 a(e.i.c.a.b<Object> bVar) {
        e.i.c.a.j.b(this.f14146f == null, "key equivalence was already set to %s", this.f14146f);
        e.i.c.a.j.a(bVar);
        this.f14146f = bVar;
        this.f14141a = true;
        return this;
    }

    @CanIgnoreReturnValue
    public q0 b(int i2) {
        e.i.c.a.j.b(this.f14142b == -1, "initial capacity was already set to %s", this.f14142b);
        e.i.c.a.j.a(i2 >= 0);
        this.f14142b = i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.c.a.b<Object> c() {
        return (e.i.c.a.b) e.i.c.a.g.a(this.f14146f, d().defaultEquivalence());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0.p d() {
        return (r0.p) e.i.c.a.g.a(this.f14144d, r0.p.STRONG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0.p e() {
        return (r0.p) e.i.c.a.g.a(this.f14145e, r0.p.STRONG);
    }

    public <K, V> ConcurrentMap<K, V> f() {
        if (!this.f14141a) {
            return new ConcurrentHashMap(b(), 0.75f, a());
        }
        return r0.create(this);
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public q0 g() {
        a(r0.p.WEAK);
        return this;
    }

    public String toString() {
        g.b a2 = e.i.c.a.g.a(this);
        int i2 = this.f14142b;
        if (i2 != -1) {
            a2.a("initialCapacity", i2);
        }
        int i3 = this.f14143c;
        if (i3 != -1) {
            a2.a("concurrencyLevel", i3);
        }
        r0.p pVar = this.f14144d;
        if (pVar != null) {
            a2.a("keyStrength", e.i.c.a.a.a(pVar.toString()));
        }
        r0.p pVar2 = this.f14145e;
        if (pVar2 != null) {
            a2.a("valueStrength", e.i.c.a.a.a(pVar2.toString()));
        }
        if (this.f14146f != null) {
            a2.a("keyEquivalence");
        }
        return a2.toString();
    }

    @CanIgnoreReturnValue
    public q0 a(int i2) {
        e.i.c.a.j.b(this.f14143c == -1, "concurrency level was already set to %s", this.f14143c);
        e.i.c.a.j.a(i2 > 0);
        this.f14143c = i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i2 = this.f14142b;
        if (i2 == -1) {
            return 16;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0 b(r0.p pVar) {
        e.i.c.a.j.b(this.f14145e == null, "Value strength was already set to %s", this.f14145e);
        e.i.c.a.j.a(pVar);
        this.f14145e = pVar;
        if (pVar != r0.p.STRONG) {
            this.f14141a = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        int i2 = this.f14143c;
        if (i2 == -1) {
            return 4;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0 a(r0.p pVar) {
        e.i.c.a.j.b(this.f14144d == null, "Key strength was already set to %s", this.f14144d);
        e.i.c.a.j.a(pVar);
        this.f14144d = pVar;
        if (pVar != r0.p.STRONG) {
            this.f14141a = true;
        }
        return this;
    }
}
