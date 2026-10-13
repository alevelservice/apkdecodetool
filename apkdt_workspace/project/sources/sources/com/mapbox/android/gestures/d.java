package com.mapbox.android.gestures;

/* compiled from: MultiFingerDistancesObject.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final float f15535a;

    /* renamed from: b, reason: collision with root package name */
    private final float f15536b;

    /* renamed from: c, reason: collision with root package name */
    private final float f15537c;

    /* renamed from: d, reason: collision with root package name */
    private final float f15538d;

    /* renamed from: e, reason: collision with root package name */
    private final float f15539e;

    public d(float f2, float f3, float f4, float f5) {
        this.f15535a = f2;
        this.f15536b = f3;
        this.f15537c = f4;
        this.f15538d = f5;
        Math.sqrt((f2 * f2) + (f3 * f3));
        this.f15539e = (float) Math.sqrt((f4 * f4) + (f5 * f5));
    }

    public float a() {
        return this.f15537c;
    }

    public float b() {
        return this.f15539e;
    }

    public float c() {
        return this.f15538d;
    }

    public float d() {
        return this.f15535a;
    }

    public float e() {
        return this.f15536b;
    }
}
