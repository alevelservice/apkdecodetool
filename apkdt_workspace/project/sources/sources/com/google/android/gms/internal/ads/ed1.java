package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public enum ed1 implements i91 {
    TYPE_UNKNOWN(0),
    TYPE_CREATIVE(1);

    private final int value;

    static {
        new h91<ed1>() { // from class: com.google.android.gms.internal.ads.ld1
        };
    }

    ed1(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return md1.f8082a;
    }

    public static ed1 zzhi(int i2) {
        if (i2 == 0) {
            return TYPE_UNKNOWN;
        }
        if (i2 != 1) {
            return null;
        }
        return TYPE_CREATIVE;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + ed1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
