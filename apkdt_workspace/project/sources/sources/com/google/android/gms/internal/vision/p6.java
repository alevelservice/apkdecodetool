package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class p6 implements b6 {

    /* renamed from: a, reason: collision with root package name */
    private final d6 f12479a;

    /* renamed from: b, reason: collision with root package name */
    private final String f12480b;

    /* renamed from: c, reason: collision with root package name */
    private final Object[] f12481c;

    /* renamed from: d, reason: collision with root package name */
    private final int f12482d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p6(d6 d6Var, String str, Object[] objArr) {
        this.f12479a = d6Var;
        this.f12480b = str;
        this.f12481c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f12482d = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char charAt2 = str.charAt(i4);
            if (charAt2 < 55296) {
                this.f12482d = i2 | (charAt2 << i3);
                return;
            } else {
                i2 |= (charAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.b6
    public final boolean a() {
        return (this.f12482d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.vision.b6
    public final int b() {
        return (this.f12482d & 1) == 1 ? s4.e.f12519i : s4.e.f12520j;
    }

    @Override // com.google.android.gms.internal.vision.b6
    public final d6 c() {
        return this.f12479a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        return this.f12480b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] e() {
        return this.f12481c;
    }
}
