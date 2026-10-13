package com.mapbox.android.telemetry;

/* compiled from: SessionInterval.java */
/* loaded from: classes2.dex */
public class d0 {

    /* renamed from: a, reason: collision with root package name */
    private final int f15560a;

    public d0(int i2) {
        a(i2);
        this.f15560a = i2;
    }

    private void a(int i2) {
        if (i2 < 1 || i2 > 24) {
            throw new IllegalArgumentException("The interval passed in must be an an integer in the range of 1 to 24 hours.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f15560a;
    }
}
