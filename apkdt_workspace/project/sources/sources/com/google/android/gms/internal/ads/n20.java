package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public enum n20 implements i91 {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3);

    private final int value;

    static {
        new h91<n20>() { // from class: com.google.android.gms.internal.ads.p40
        };
    }

    n20(int i2) {
        this.value = i2;
    }

    public static k91 zzac() {
        return o30.f8463a;
    }

    public static n20 zzi(int i2) {
        if (i2 == 0) {
            return UNKNOWN_ENCRYPTION_METHOD;
        }
        if (i2 == 1) {
            return BITSLICER;
        }
        if (i2 == 2) {
            return TINK_HYBRID;
        }
        if (i2 != 3) {
            return null;
        }
        return UNENCRYPTED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + n20.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.i91
    public final int zzab() {
        return this.value;
    }
}
