package com.google.android.material.bottomappbar;

import e.i.b.c.t.b;
import e.i.b.c.t.d;

/* compiled from: BottomAppBarTopEdgeTreatment.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: a, reason: collision with root package name */
    private float f13669a;

    /* renamed from: b, reason: collision with root package name */
    private float f13670b;

    /* renamed from: c, reason: collision with root package name */
    private float f13671c;

    /* renamed from: d, reason: collision with root package name */
    private float f13672d;

    /* renamed from: e, reason: collision with root package name */
    private float f13673e;

    public a(float f2, float f3, float f4) {
        this.f13670b = f2;
        this.f13669a = f3;
        this.f13672d = f4;
        if (f4 >= 0.0f) {
            this.f13673e = 0.0f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    @Override // e.i.b.c.t.b
    public void a(float f2, float f3, d dVar) {
        float f4 = this.f13671c;
        if (f4 == 0.0f) {
            dVar.a(f2, 0.0f);
            return;
        }
        float f5 = ((this.f13670b * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.f13669a;
        float f7 = (f2 / 2.0f) + this.f13673e;
        float f8 = (this.f13672d * f3) + ((1.0f - f3) * f5);
        if (f8 / f5 >= 1.0f) {
            dVar.a(f2, 0.0f);
            return;
        }
        float f9 = f5 + f6;
        float f10 = f8 + f6;
        float sqrt = (float) Math.sqrt((f9 * f9) - (f10 * f10));
        float f11 = f7 - sqrt;
        float f12 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f10));
        float f13 = 90.0f - degrees;
        float f14 = f11 - f6;
        dVar.a(f14, 0.0f);
        float f15 = f6 * 2.0f;
        dVar.a(f14, 0.0f, f11 + f6, f15, 270.0f, degrees);
        dVar.a(f7 - f5, (-f5) - f8, f7 + f5, f5 - f8, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        dVar.a(f12 - f6, 0.0f, f12 + f6, f15, 270.0f - degrees, degrees);
        dVar.a(f2, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f13670b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.f13669a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.f13671c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(float f2) {
        this.f13673e = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f2) {
        this.f13670b = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(float f2) {
        this.f13669a = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(float f2) {
        this.f13671c = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        return this.f13673e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.f13672d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2) {
        this.f13672d = f2;
    }
}
