package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w5 implements i5 {

    /* renamed from: a, reason: collision with root package name */
    private final k5 f12174a;

    /* renamed from: b, reason: collision with root package name */
    private final String f12175b;

    /* renamed from: c, reason: collision with root package name */
    private final Object[] f12176c;

    /* renamed from: d, reason: collision with root package name */
    private final int f12177d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w5(k5 k5Var, String str, Object[] objArr) {
        this.f12174a = k5Var;
        this.f12175b = str;
        this.f12176c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f12177d = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char charAt2 = str.charAt(i4);
            if (charAt2 < 55296) {
                this.f12177d = i2 | (charAt2 << i3);
                return;
            } else {
                i2 |= (charAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.i5
    public final k5 a() {
        return this.f12174a;
    }

    @Override // com.google.android.gms.internal.measurement.i5
    public final boolean b() {
        return (this.f12177d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.i5
    public final int c() {
        return (this.f12177d & 1) == 1 ? b4.d.f11773i : b4.d.f11774j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        return this.f12175b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] e() {
        return this.f12176c;
    }
}
