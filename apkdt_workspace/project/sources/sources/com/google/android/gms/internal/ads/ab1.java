package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class ab1 implements ma1 {

    /* renamed from: a, reason: collision with root package name */
    private final oa1 f5553a;

    /* renamed from: b, reason: collision with root package name */
    private final String f5554b;

    /* renamed from: c, reason: collision with root package name */
    private final Object[] f5555c;

    /* renamed from: d, reason: collision with root package name */
    private final int f5556d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab1(oa1 oa1Var, String str, Object[] objArr) {
        this.f5553a = oa1Var;
        this.f5554b = str;
        this.f5555c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f5556d = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char charAt2 = str.charAt(i4);
            if (charAt2 < 55296) {
                this.f5556d = i2 | (charAt2 << i3);
                return;
            } else {
                i2 |= (charAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ma1
    public final int a() {
        return (this.f5556d & 1) == 1 ? e91.d.f6380i : e91.d.f6381j;
    }

    @Override // com.google.android.gms.internal.ads.ma1
    public final boolean b() {
        return (this.f5556d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.ma1
    public final oa1 c() {
        return this.f5553a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        return this.f5554b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] e() {
        return this.f5555c;
    }
}
