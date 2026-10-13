package com.mapbox.android.gestures;

/* compiled from: MoveDistancesObject.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final float f15525a;

    /* renamed from: b, reason: collision with root package name */
    private final float f15526b;

    /* renamed from: c, reason: collision with root package name */
    private float f15527c;

    /* renamed from: d, reason: collision with root package name */
    private float f15528d;

    /* renamed from: e, reason: collision with root package name */
    private float f15529e;

    /* renamed from: f, reason: collision with root package name */
    private float f15530f;

    /* renamed from: g, reason: collision with root package name */
    private float f15531g;

    /* renamed from: h, reason: collision with root package name */
    private float f15532h;

    /* renamed from: i, reason: collision with root package name */
    private float f15533i;

    /* renamed from: j, reason: collision with root package name */
    private float f15534j;

    public b(float f2, float f3) {
        this.f15525a = f2;
        this.f15526b = f3;
    }

    public void a(float f2, float f3) {
        this.f15527c = this.f15529e;
        this.f15528d = this.f15530f;
        this.f15529e = f2;
        this.f15530f = f3;
        float f4 = this.f15527c;
        float f5 = this.f15529e;
        this.f15531g = f4 - f5;
        float f6 = this.f15528d;
        float f7 = this.f15530f;
        this.f15532h = f6 - f7;
        this.f15533i = this.f15525a - f5;
        this.f15534j = this.f15526b - f7;
    }

    public float b() {
        return this.f15530f;
    }

    public float c() {
        return this.f15531g;
    }

    public float d() {
        return this.f15533i;
    }

    public float e() {
        return this.f15532h;
    }

    public float f() {
        return this.f15534j;
    }

    public float a() {
        return this.f15529e;
    }
}
