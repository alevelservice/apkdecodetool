package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public enum bt1 implements i91 {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);

    private final int value;

    static {
        new h91<bt1>() { // from class: com.google.android.gms.internal.ads.dt1
        };
    }

    bt1(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return ct1.f6118a;
    }

    public static bt1 zzbu(int i2) {
        if (i2 == 0) {
            return ENUM_FALSE;
        }
        if (i2 == 1) {
            return ENUM_TRUE;
        }
        if (i2 != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + bt1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
