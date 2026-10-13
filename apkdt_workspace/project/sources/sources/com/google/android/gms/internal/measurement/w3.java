package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public enum w3 {
    DOUBLE(0, y3.SCALAR, n4.DOUBLE),
    FLOAT(1, y3.SCALAR, n4.FLOAT),
    INT64(2, y3.SCALAR, n4.LONG),
    UINT64(3, y3.SCALAR, n4.LONG),
    INT32(4, y3.SCALAR, n4.INT),
    FIXED64(5, y3.SCALAR, n4.LONG),
    FIXED32(6, y3.SCALAR, n4.INT),
    BOOL(7, y3.SCALAR, n4.BOOLEAN),
    STRING(8, y3.SCALAR, n4.STRING),
    MESSAGE(9, y3.SCALAR, n4.MESSAGE),
    BYTES(10, y3.SCALAR, n4.BYTE_STRING),
    UINT32(11, y3.SCALAR, n4.INT),
    ENUM(12, y3.SCALAR, n4.ENUM),
    SFIXED32(13, y3.SCALAR, n4.INT),
    SFIXED64(14, y3.SCALAR, n4.LONG),
    SINT32(15, y3.SCALAR, n4.INT),
    SINT64(16, y3.SCALAR, n4.LONG),
    GROUP(17, y3.SCALAR, n4.MESSAGE),
    DOUBLE_LIST(18, y3.VECTOR, n4.DOUBLE),
    FLOAT_LIST(19, y3.VECTOR, n4.FLOAT),
    INT64_LIST(20, y3.VECTOR, n4.LONG),
    UINT64_LIST(21, y3.VECTOR, n4.LONG),
    INT32_LIST(22, y3.VECTOR, n4.INT),
    FIXED64_LIST(23, y3.VECTOR, n4.LONG),
    FIXED32_LIST(24, y3.VECTOR, n4.INT),
    BOOL_LIST(25, y3.VECTOR, n4.BOOLEAN),
    STRING_LIST(26, y3.VECTOR, n4.STRING),
    MESSAGE_LIST(27, y3.VECTOR, n4.MESSAGE),
    BYTES_LIST(28, y3.VECTOR, n4.BYTE_STRING),
    UINT32_LIST(29, y3.VECTOR, n4.INT),
    ENUM_LIST(30, y3.VECTOR, n4.ENUM),
    SFIXED32_LIST(31, y3.VECTOR, n4.INT),
    SFIXED64_LIST(32, y3.VECTOR, n4.LONG),
    SINT32_LIST(33, y3.VECTOR, n4.INT),
    SINT64_LIST(34, y3.VECTOR, n4.LONG),
    DOUBLE_LIST_PACKED(35, y3.PACKED_VECTOR, n4.DOUBLE),
    FLOAT_LIST_PACKED(36, y3.PACKED_VECTOR, n4.FLOAT),
    INT64_LIST_PACKED(37, y3.PACKED_VECTOR, n4.LONG),
    UINT64_LIST_PACKED(38, y3.PACKED_VECTOR, n4.LONG),
    INT32_LIST_PACKED(39, y3.PACKED_VECTOR, n4.INT),
    FIXED64_LIST_PACKED(40, y3.PACKED_VECTOR, n4.LONG),
    FIXED32_LIST_PACKED(41, y3.PACKED_VECTOR, n4.INT),
    BOOL_LIST_PACKED(42, y3.PACKED_VECTOR, n4.BOOLEAN),
    UINT32_LIST_PACKED(43, y3.PACKED_VECTOR, n4.INT),
    ENUM_LIST_PACKED(44, y3.PACKED_VECTOR, n4.ENUM),
    SFIXED32_LIST_PACKED(45, y3.PACKED_VECTOR, n4.INT),
    SFIXED64_LIST_PACKED(46, y3.PACKED_VECTOR, n4.LONG),
    SINT32_LIST_PACKED(47, y3.PACKED_VECTOR, n4.INT),
    SINT64_LIST_PACKED(48, y3.PACKED_VECTOR, n4.LONG),
    GROUP_LIST(49, y3.VECTOR, n4.MESSAGE),
    MAP(50, y3.MAP, n4.VOID);

    private static final w3[] b0;
    private final int id;
    private final n4 zzahf;
    private final y3 zzahg;
    private final Class<?> zzahh;
    private final boolean zzahi;

    static {
        w3[] values = values();
        b0 = new w3[values.length];
        for (w3 w3Var : values) {
            b0[w3Var.id] = w3Var;
        }
    }

    w3(int i2, y3 y3Var, n4 n4Var) {
        int i3;
        this.id = i2;
        this.zzahg = y3Var;
        this.zzahf = n4Var;
        int i4 = v3.f12147a[y3Var.ordinal()];
        if (i4 == 1) {
            this.zzahh = n4Var.zzvd();
        } else if (i4 != 2) {
            this.zzahh = null;
        } else {
            this.zzahh = n4Var.zzvd();
        }
        boolean z = false;
        if (y3Var == y3.SCALAR && (i3 = v3.f12148b[n4Var.ordinal()]) != 1 && i3 != 2 && i3 != 3) {
            z = true;
        }
        this.zzahi = z;
    }

    public final int id() {
        return this.id;
    }
}
