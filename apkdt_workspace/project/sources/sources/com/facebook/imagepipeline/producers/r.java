package com.facebook.imagepipeline.producers;

import android.net.Uri;
import javax.annotation.Nullable;

/* compiled from: FetchState.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    private final Consumer<e.f.i.g.e> f4068a;

    /* renamed from: b, reason: collision with root package name */
    private final j0 f4069b;

    /* renamed from: c, reason: collision with root package name */
    private long f4070c = 0;

    /* renamed from: d, reason: collision with root package name */
    private int f4071d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.common.a f4072e;

    public r(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        this.f4068a = consumer;
        this.f4069b = j0Var;
    }

    public Consumer<e.f.i.g.e> a() {
        return this.f4068a;
    }

    public j0 b() {
        return this.f4069b;
    }

    public String c() {
        return this.f4069b.getId();
    }

    public long d() {
        return this.f4070c;
    }

    public l0 e() {
        return this.f4069b.e();
    }

    public int f() {
        return this.f4071d;
    }

    @Nullable
    public com.facebook.imagepipeline.common.a g() {
        return this.f4072e;
    }

    public Uri h() {
        return this.f4069b.c().p();
    }

    public void a(long j2) {
        this.f4070c = j2;
    }
}
