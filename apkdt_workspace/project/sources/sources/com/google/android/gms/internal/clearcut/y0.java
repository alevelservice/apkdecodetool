package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public enum y0 {
    DOUBLE(0, a1.SCALAR, l1.DOUBLE),
    FLOAT(1, a1.SCALAR, l1.FLOAT),
    INT64(2, a1.SCALAR, l1.LONG),
    UINT64(3, a1.SCALAR, l1.LONG),
    INT32(4, a1.SCALAR, l1.INT),
    FIXED64(5, a1.SCALAR, l1.LONG),
    FIXED32(6, a1.SCALAR, l1.INT),
    BOOL(7, a1.SCALAR, l1.BOOLEAN),
    STRING(8, a1.SCALAR, l1.STRING),
    MESSAGE(9, a1.SCALAR, l1.MESSAGE),
    BYTES(10, a1.SCALAR, l1.BYTE_STRING),
    UINT32(11, a1.SCALAR, l1.INT),
    ENUM(12, a1.SCALAR, l1.ENUM),
    SFIXED32(13, a1.SCALAR, l1.INT),
    SFIXED64(14, a1.SCALAR, l1.LONG),
    SINT32(15, a1.SCALAR, l1.INT),
    SINT64(16, a1.SCALAR, l1.LONG),
    GROUP(17, a1.SCALAR, l1.MESSAGE),
    DOUBLE_LIST(18, a1.VECTOR, l1.DOUBLE),
    FLOAT_LIST(19, a1.VECTOR, l1.FLOAT),
    INT64_LIST(20, a1.VECTOR, l1.LONG),
    UINT64_LIST(21, a1.VECTOR, l1.LONG),
    INT32_LIST(22, a1.VECTOR, l1.INT),
    FIXED64_LIST(23, a1.VECTOR, l1.LONG),
    FIXED32_LIST(24, a1.VECTOR, l1.INT),
    BOOL_LIST(25, a1.VECTOR, l1.BOOLEAN),
    STRING_LIST(26, a1.VECTOR, l1.STRING),
    MESSAGE_LIST(27, a1.VECTOR, l1.MESSAGE),
    BYTES_LIST(28, a1.VECTOR, l1.BYTE_STRING),
    UINT32_LIST(29, a1.VECTOR, l1.INT),
    ENUM_LIST(30, a1.VECTOR, l1.ENUM),
    SFIXED32_LIST(31, a1.VECTOR, l1.INT),
    SFIXED64_LIST(32, a1.VECTOR, l1.LONG),
    SINT32_LIST(33, a1.VECTOR, l1.INT),
    SINT64_LIST(34, a1.VECTOR, l1.LONG),
    DOUBLE_LIST_PACKED(35, a1.PACKED_VECTOR, l1.DOUBLE),
    FLOAT_LIST_PACKED(36, a1.PACKED_VECTOR, l1.FLOAT),
    INT64_LIST_PACKED(37, a1.PACKED_VECTOR, l1.LONG),
    UINT64_LIST_PACKED(38, a1.PACKED_VECTOR, l1.LONG),
    INT32_LIST_PACKED(39, a1.PACKED_VECTOR, l1.INT),
    FIXED64_LIST_PACKED(40, a1.PACKED_VECTOR, l1.LONG),
    FIXED32_LIST_PACKED(41, a1.PACKED_VECTOR, l1.INT),
    BOOL_LIST_PACKED(42, a1.PACKED_VECTOR, l1.BOOLEAN),
    UINT32_LIST_PACKED(43, a1.PACKED_VECTOR, l1.INT),
    ENUM_LIST_PACKED(44, a1.PACKED_VECTOR, l1.ENUM),
    SFIXED32_LIST_PACKED(45, a1.PACKED_VECTOR, l1.INT),
    SFIXED64_LIST_PACKED(46, a1.PACKED_VECTOR, l1.LONG),
    SINT32_LIST_PACKED(47, a1.PACKED_VECTOR, l1.INT),
    SINT64_LIST_PACKED(48, a1.PACKED_VECTOR, l1.LONG),
    GROUP_LIST(49, a1.VECTOR, l1.MESSAGE),
    MAP(50, a1.MAP, l1.VOID);

    private static final y0[] S;
    private final int id;
    private final l1 zzix;
    private final a1 zziy;
    private final Class<?> zziz;
    private final boolean zzja;

    static {
        y0[] values = values();
        S = new y0[values.length];
        for (y0 y0Var : values) {
            S[y0Var.id] = y0Var;
        }
    }

    y0(int i2, a1 a1Var, l1 l1Var) {
        int i3;
        this.id = i2;
        this.zziy = a1Var;
        this.zzix = l1Var;
        int i4 = z0.f11657a[a1Var.ordinal()];
        this.zziz = (i4 == 1 || i4 == 2) ? l1Var.zzbq() : null;
        boolean z = false;
        if (a1Var == a1.SCALAR && (i3 = z0.f11658b[l1Var.ordinal()]) != 1 && i3 != 2 && i3 != 3) {
            z = true;
        }
        this.zzja = z;
    }

    public final int id() {
        return this.id;
    }
}
