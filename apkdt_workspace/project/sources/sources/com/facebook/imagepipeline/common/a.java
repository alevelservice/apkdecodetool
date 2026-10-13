package com.facebook.imagepipeline.common;

import com.facebook.common.internal.h;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* compiled from: BytesRange.java */
@Immutable
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f3656a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3657b;

    public a(int i2, int i3) {
        this.f3656a = i2;
        this.f3657b = i3;
    }

    public static a b(int i2) {
        h.a(i2 > 0);
        return new a(0, i2);
    }

    private static String c(int i2) {
        return i2 == Integer.MAX_VALUE ? "" : Integer.toString(i2);
    }

    public boolean a(@Nullable a aVar) {
        return aVar != null && this.f3656a <= aVar.f3656a && this.f3657b >= aVar.f3657b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3656a == aVar.f3656a && this.f3657b == aVar.f3657b;
    }

    public int hashCode() {
        return e.f.c.j.b.a(this.f3656a, this.f3657b);
    }

    public String toString() {
        return String.format(null, "%s-%s", c(this.f3656a), c(this.f3657b));
    }

    public static a a(int i2) {
        h.a(i2 >= 0);
        return new a(i2, Integer.MAX_VALUE);
    }
}
