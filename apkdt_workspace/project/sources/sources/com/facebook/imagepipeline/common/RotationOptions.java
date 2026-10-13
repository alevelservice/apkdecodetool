package com.facebook.imagepipeline.common;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class RotationOptions {

    /* renamed from: c, reason: collision with root package name */
    private static final RotationOptions f3652c = new RotationOptions(-1, false);

    /* renamed from: d, reason: collision with root package name */
    private static final RotationOptions f3653d;

    /* renamed from: a, reason: collision with root package name */
    private final int f3654a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f3655b;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RotationAngle {
    }

    static {
        new RotationOptions(-2, false);
        f3653d = new RotationOptions(-1, true);
    }

    private RotationOptions(int i2, boolean z) {
        this.f3654a = i2;
        this.f3655b = z;
    }

    public static RotationOptions e() {
        return f3652c;
    }

    public static RotationOptions f() {
        return f3653d;
    }

    public boolean a() {
        return this.f3655b;
    }

    public int b() {
        if (!d()) {
            return this.f3654a;
        }
        throw new IllegalStateException("Rotation is set to use EXIF");
    }

    public boolean c() {
        return this.f3654a != -2;
    }

    public boolean d() {
        return this.f3654a == -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RotationOptions)) {
            return false;
        }
        RotationOptions rotationOptions = (RotationOptions) obj;
        return this.f3654a == rotationOptions.f3654a && this.f3655b == rotationOptions.f3655b;
    }

    public int hashCode() {
        return e.f.c.j.b.a(Integer.valueOf(this.f3654a), Boolean.valueOf(this.f3655b));
    }

    public String toString() {
        return String.format(null, "%d defer:%b", Integer.valueOf(this.f3654a), Boolean.valueOf(this.f3655b));
    }
}
