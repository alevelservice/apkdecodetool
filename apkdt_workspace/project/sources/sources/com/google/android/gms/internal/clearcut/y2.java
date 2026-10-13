package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class y2 {

    /* renamed from: a, reason: collision with root package name */
    private final String f11624a;

    /* renamed from: b, reason: collision with root package name */
    private int f11625b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y2(String str) {
        this.f11624a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.f11625b < this.f11624a.length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        String str = this.f11624a;
        int i2 = this.f11625b;
        this.f11625b = i2 + 1;
        char charAt = str.charAt(i2);
        if (charAt < 55296) {
            return charAt;
        }
        int i3 = charAt & 8191;
        int i4 = 13;
        while (true) {
            String str2 = this.f11624a;
            int i5 = this.f11625b;
            this.f11625b = i5 + 1;
            char charAt2 = str2.charAt(i5);
            if (charAt2 < 55296) {
                return i3 | (charAt2 << i4);
            }
            i3 |= (charAt2 & 8191) << i4;
            i4 += 13;
        }
    }
}
