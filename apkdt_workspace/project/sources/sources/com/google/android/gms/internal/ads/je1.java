package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class je1 {

    /* renamed from: j, reason: collision with root package name */
    public static final je1 f7461j = new je1(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k, reason: collision with root package name */
    private static final je1 f7462k = new je1(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l, reason: collision with root package name */
    private static final je1 f7463l = new je1(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final je1 m = new je1(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a, reason: collision with root package name */
    private final double f7464a;

    /* renamed from: b, reason: collision with root package name */
    private final double f7465b;

    /* renamed from: c, reason: collision with root package name */
    private final double f7466c;

    /* renamed from: d, reason: collision with root package name */
    private final double f7467d;

    /* renamed from: e, reason: collision with root package name */
    private final double f7468e;

    /* renamed from: f, reason: collision with root package name */
    private final double f7469f;

    /* renamed from: g, reason: collision with root package name */
    private final double f7470g;

    /* renamed from: h, reason: collision with root package name */
    private final double f7471h;

    /* renamed from: i, reason: collision with root package name */
    private final double f7472i;

    private je1(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        this.f7464a = d6;
        this.f7465b = d7;
        this.f7466c = d8;
        this.f7467d = d2;
        this.f7468e = d3;
        this.f7469f = d4;
        this.f7470g = d5;
        this.f7471h = d9;
        this.f7472i = d10;
    }

    public static je1 a(ByteBuffer byteBuffer) {
        double d2 = bj.d(byteBuffer);
        double d3 = bj.d(byteBuffer);
        double e2 = bj.e(byteBuffer);
        return new je1(d2, d3, bj.d(byteBuffer), bj.d(byteBuffer), e2, bj.e(byteBuffer), bj.e(byteBuffer), bj.d(byteBuffer), bj.d(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || je1.class != obj.getClass()) {
            return false;
        }
        je1 je1Var = (je1) obj;
        return Double.compare(je1Var.f7467d, this.f7467d) == 0 && Double.compare(je1Var.f7468e, this.f7468e) == 0 && Double.compare(je1Var.f7469f, this.f7469f) == 0 && Double.compare(je1Var.f7470g, this.f7470g) == 0 && Double.compare(je1Var.f7471h, this.f7471h) == 0 && Double.compare(je1Var.f7472i, this.f7472i) == 0 && Double.compare(je1Var.f7464a, this.f7464a) == 0 && Double.compare(je1Var.f7465b, this.f7465b) == 0 && Double.compare(je1Var.f7466c, this.f7466c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f7464a);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f7465b);
        int i2 = (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f7466c);
        int i3 = (i2 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f7467d);
        int i4 = (i3 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f7468e);
        int i5 = (i4 * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f7469f);
        int i6 = (i5 * 31) + ((int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32)));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f7470g);
        int i7 = (i6 * 31) + ((int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32)));
        long doubleToLongBits8 = Double.doubleToLongBits(this.f7471h);
        int i8 = (i7 * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)));
        long doubleToLongBits9 = Double.doubleToLongBits(this.f7472i);
        return (i8 * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f7461j)) {
            return "Rotate 0°";
        }
        if (equals(f7462k)) {
            return "Rotate 90°";
        }
        if (equals(f7463l)) {
            return "Rotate 180°";
        }
        if (equals(m)) {
            return "Rotate 270°";
        }
        double d2 = this.f7464a;
        double d3 = this.f7465b;
        double d4 = this.f7466c;
        double d5 = this.f7467d;
        double d6 = this.f7468e;
        double d7 = this.f7469f;
        double d8 = this.f7470g;
        double d9 = this.f7471h;
        double d10 = this.f7472i;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d2);
        sb.append(", v=");
        sb.append(d3);
        sb.append(", w=");
        sb.append(d4);
        sb.append(", a=");
        sb.append(d5);
        sb.append(", b=");
        sb.append(d6);
        sb.append(", c=");
        sb.append(d7);
        sb.append(", d=");
        sb.append(d8);
        sb.append(", tx=");
        sb.append(d9);
        sb.append(", ty=");
        sb.append(d10);
        sb.append("}");
        return sb.toString();
    }
}
