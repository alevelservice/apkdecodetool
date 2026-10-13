package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public enum t2 implements w4 {
    CODE_128(1),
    CODE_39(2),
    CODE_93(3),
    CODABAR(4),
    DATA_MATRIX(5),
    EAN_13(6),
    EAN_8(7),
    ITF(8),
    QR_CODE(9),
    UPC_A(10),
    UPC_E(11),
    PDF417(12),
    AZTEC(13),
    DATABAR(14),
    YT_CODE(15),
    TEZ_CODE(16);

    private final int value;

    static {
        new v4<t2>() { // from class: com.google.android.gms.internal.vision.v2
            @Override // com.google.android.gms.internal.vision.v4
            public final /* synthetic */ t2 a(int i2) {
                return t2.zzab(i2);
            }
        };
    }

    t2(int i2) {
        this.value = i2;
    }

    public static t2 zzab(int i2) {
        switch (i2) {
            case 1:
                return CODE_128;
            case 2:
                return CODE_39;
            case 3:
                return CODE_93;
            case 4:
                return CODABAR;
            case 5:
                return DATA_MATRIX;
            case 6:
                return EAN_13;
            case 7:
                return EAN_8;
            case 8:
                return ITF;
            case 9:
                return QR_CODE;
            case 10:
                return UPC_A;
            case 11:
                return UPC_E;
            case 12:
                return PDF417;
            case 13:
                return AZTEC;
            case 14:
                return DATABAR;
            case 15:
                return YT_CODE;
            case 16:
                return TEZ_CODE;
            default:
                return null;
        }
    }

    public static y4 zzah() {
        return u2.f12543a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + t2.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.vision.w4
    public final int zzag() {
        return this.value;
    }
}
