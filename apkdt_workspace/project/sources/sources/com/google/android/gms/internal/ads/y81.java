package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public enum y81 {
    DOUBLE(0, a91.SCALAR, q91.DOUBLE),
    FLOAT(1, a91.SCALAR, q91.FLOAT),
    INT64(2, a91.SCALAR, q91.LONG),
    UINT64(3, a91.SCALAR, q91.LONG),
    INT32(4, a91.SCALAR, q91.INT),
    FIXED64(5, a91.SCALAR, q91.LONG),
    FIXED32(6, a91.SCALAR, q91.INT),
    BOOL(7, a91.SCALAR, q91.BOOLEAN),
    STRING(8, a91.SCALAR, q91.STRING),
    MESSAGE(9, a91.SCALAR, q91.MESSAGE),
    BYTES(10, a91.SCALAR, q91.BYTE_STRING),
    UINT32(11, a91.SCALAR, q91.INT),
    ENUM(12, a91.SCALAR, q91.ENUM),
    SFIXED32(13, a91.SCALAR, q91.INT),
    SFIXED64(14, a91.SCALAR, q91.LONG),
    SINT32(15, a91.SCALAR, q91.INT),
    SINT64(16, a91.SCALAR, q91.LONG),
    GROUP(17, a91.SCALAR, q91.MESSAGE),
    DOUBLE_LIST(18, a91.VECTOR, q91.DOUBLE),
    FLOAT_LIST(19, a91.VECTOR, q91.FLOAT),
    INT64_LIST(20, a91.VECTOR, q91.LONG),
    UINT64_LIST(21, a91.VECTOR, q91.LONG),
    INT32_LIST(22, a91.VECTOR, q91.INT),
    FIXED64_LIST(23, a91.VECTOR, q91.LONG),
    FIXED32_LIST(24, a91.VECTOR, q91.INT),
    BOOL_LIST(25, a91.VECTOR, q91.BOOLEAN),
    STRING_LIST(26, a91.VECTOR, q91.STRING),
    MESSAGE_LIST(27, a91.VECTOR, q91.MESSAGE),
    BYTES_LIST(28, a91.VECTOR, q91.BYTE_STRING),
    UINT32_LIST(29, a91.VECTOR, q91.INT),
    ENUM_LIST(30, a91.VECTOR, q91.ENUM),
    SFIXED32_LIST(31, a91.VECTOR, q91.INT),
    SFIXED64_LIST(32, a91.VECTOR, q91.LONG),
    SINT32_LIST(33, a91.VECTOR, q91.INT),
    SINT64_LIST(34, a91.VECTOR, q91.LONG),
    DOUBLE_LIST_PACKED(35, a91.PACKED_VECTOR, q91.DOUBLE),
    FLOAT_LIST_PACKED(36, a91.PACKED_VECTOR, q91.FLOAT),
    INT64_LIST_PACKED(37, a91.PACKED_VECTOR, q91.LONG),
    UINT64_LIST_PACKED(38, a91.PACKED_VECTOR, q91.LONG),
    INT32_LIST_PACKED(39, a91.PACKED_VECTOR, q91.INT),
    FIXED64_LIST_PACKED(40, a91.PACKED_VECTOR, q91.LONG),
    FIXED32_LIST_PACKED(41, a91.PACKED_VECTOR, q91.INT),
    BOOL_LIST_PACKED(42, a91.PACKED_VECTOR, q91.BOOLEAN),
    UINT32_LIST_PACKED(43, a91.PACKED_VECTOR, q91.INT),
    ENUM_LIST_PACKED(44, a91.PACKED_VECTOR, q91.ENUM),
    SFIXED32_LIST_PACKED(45, a91.PACKED_VECTOR, q91.INT),
    SFIXED64_LIST_PACKED(46, a91.PACKED_VECTOR, q91.LONG),
    SINT32_LIST_PACKED(47, a91.PACKED_VECTOR, q91.INT),
    SINT64_LIST_PACKED(48, a91.PACKED_VECTOR, q91.LONG),
    GROUP_LIST(49, a91.VECTOR, q91.MESSAGE),
    MAP(50, a91.MAP, q91.VOID);

    private static final y81[] b0;
    private final int id;
    private final q91 zzhjj;
    private final a91 zzhjk;
    private final Class<?> zzhjl;
    private final boolean zzhjm;

    static {
        y81[] values = values();
        b0 = new y81[values.length];
        for (y81 y81Var : values) {
            b0[y81Var.id] = y81Var;
        }
    }

    y81(int i2, a91 a91Var, q91 q91Var) {
        int i3;
        this.id = i2;
        this.zzhjk = a91Var;
        this.zzhjj = q91Var;
        int i4 = x81.f10293a[a91Var.ordinal()];
        if (i4 == 1) {
            this.zzhjl = q91Var.zzbag();
        } else if (i4 != 2) {
            this.zzhjl = null;
        } else {
            this.zzhjl = q91Var.zzbag();
        }
        boolean z = false;
        if (a91Var == a91.SCALAR && (i3 = x81.f10294b[q91Var.ordinal()]) != 1 && i3 != 2 && i3 != 3) {
            z = true;
        }
        this.zzhjm = z;
    }

    public final int id() {
        return this.id;
    }
}
