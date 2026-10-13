package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class bj1 {

    /* renamed from: a, reason: collision with root package name */
    private int f5781a;

    public void a() {
        this.f5781a = 0;
    }

    public final boolean b() {
        return c(e.b.b.a.a.a.c.ALL_INT);
    }

    public final boolean c() {
        return c(4);
    }

    public final boolean d() {
        return c(1);
    }

    public final void a(int i2) {
        this.f5781a = i2;
    }

    public final void b(int i2) {
        this.f5781a |= e.b.b.a.a.a.c.ALL_INT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean c(int i2) {
        return (this.f5781a & i2) == i2;
    }
}
