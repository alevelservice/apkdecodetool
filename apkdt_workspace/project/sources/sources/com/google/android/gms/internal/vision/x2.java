package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public enum x2 implements w4 {
    CONTACT_INFO(1),
    EMAIL(2),
    ISBN(3),
    PHONE(4),
    PRODUCT(5),
    SMS(6),
    TEXT(7),
    URL(8),
    WIFI(9),
    GEO(10),
    CALENDAR_EVENT(11),
    DRIVER_LICENSE(12);

    private final int value;

    static {
        new v4<x2>() { // from class: com.google.android.gms.internal.vision.w2
            @Override // com.google.android.gms.internal.vision.v4
            public final /* synthetic */ x2 a(int i2) {
                return x2.zzac(i2);
            }
        };
    }

    x2(int i2) {
        this.value = i2;
    }

    public static x2 zzac(int i2) {
        switch (i2) {
            case 1:
                return CONTACT_INFO;
            case 2:
                return EMAIL;
            case 3:
                return ISBN;
            case 4:
                return PHONE;
            case 5:
                return PRODUCT;
            case 6:
                return SMS;
            case 7:
                return TEXT;
            case 8:
                return URL;
            case 9:
                return WIFI;
            case 10:
                return GEO;
            case 11:
                return CALENDAR_EVENT;
            case 12:
                return DRIVER_LICENSE;
            default:
                return null;
        }
    }

    public static y4 zzah() {
        return z2.f12612a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + x2.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.vision.w4
    public final int zzag() {
        return this.value;
    }
}
