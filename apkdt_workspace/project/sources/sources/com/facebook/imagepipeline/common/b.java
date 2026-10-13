package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* compiled from: ImageDecodeOptions.java */
@Immutable
/* loaded from: classes.dex */
public class b {

    /* renamed from: j, reason: collision with root package name */
    private static final b f3658j = b().a();

    /* renamed from: a, reason: collision with root package name */
    public final int f3659a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3660b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3661c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3662d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3663e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f3664f;

    /* renamed from: g, reason: collision with root package name */
    public final Bitmap.Config f3665g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final e.f.i.e.c f3666h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    public final e.f.i.k.a f3667i;

    public b(c cVar) {
        this.f3659a = cVar.h();
        this.f3660b = cVar.f();
        this.f3661c = cVar.j();
        this.f3662d = cVar.e();
        this.f3663e = cVar.g();
        this.f3665g = cVar.b();
        this.f3666h = cVar.d();
        this.f3664f = cVar.i();
        this.f3667i = cVar.c();
    }

    public static b a() {
        return f3658j;
    }

    public static c b() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3660b == bVar.f3660b && this.f3661c == bVar.f3661c && this.f3662d == bVar.f3662d && this.f3663e == bVar.f3663e && this.f3664f == bVar.f3664f && this.f3665g == bVar.f3665g && this.f3666h == bVar.f3666h && this.f3667i == bVar.f3667i;
    }

    public int hashCode() {
        int ordinal = ((((((((((((this.f3659a * 31) + (this.f3660b ? 1 : 0)) * 31) + (this.f3661c ? 1 : 0)) * 31) + (this.f3662d ? 1 : 0)) * 31) + (this.f3663e ? 1 : 0)) * 31) + (this.f3664f ? 1 : 0)) * 31) + this.f3665g.ordinal()) * 31;
        e.f.i.e.c cVar = this.f3666h;
        int hashCode = (ordinal + (cVar != null ? cVar.hashCode() : 0)) * 31;
        e.f.i.k.a aVar = this.f3667i;
        return hashCode + (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return String.format(null, "%d-%b-%b-%b-%b-%b-%s-%s-%s", Integer.valueOf(this.f3659a), Boolean.valueOf(this.f3660b), Boolean.valueOf(this.f3661c), Boolean.valueOf(this.f3662d), Boolean.valueOf(this.f3663e), Boolean.valueOf(this.f3664f), this.f3665g.name(), this.f3666h, this.f3667i);
    }
}
