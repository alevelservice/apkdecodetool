package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public enum n4 {
    DOUBLE(0, p4.SCALAR, f5.DOUBLE),
    FLOAT(1, p4.SCALAR, f5.FLOAT),
    INT64(2, p4.SCALAR, f5.LONG),
    UINT64(3, p4.SCALAR, f5.LONG),
    INT32(4, p4.SCALAR, f5.INT),
    FIXED64(5, p4.SCALAR, f5.LONG),
    FIXED32(6, p4.SCALAR, f5.INT),
    BOOL(7, p4.SCALAR, f5.BOOLEAN),
    STRING(8, p4.SCALAR, f5.STRING),
    MESSAGE(9, p4.SCALAR, f5.MESSAGE),
    BYTES(10, p4.SCALAR, f5.BYTE_STRING),
    UINT32(11, p4.SCALAR, f5.INT),
    ENUM(12, p4.SCALAR, f5.ENUM),
    SFIXED32(13, p4.SCALAR, f5.INT),
    SFIXED64(14, p4.SCALAR, f5.LONG),
    SINT32(15, p4.SCALAR, f5.INT),
    SINT64(16, p4.SCALAR, f5.LONG),
    GROUP(17, p4.SCALAR, f5.MESSAGE),
    DOUBLE_LIST(18, p4.VECTOR, f5.DOUBLE),
    FLOAT_LIST(19, p4.VECTOR, f5.FLOAT),
    INT64_LIST(20, p4.VECTOR, f5.LONG),
    UINT64_LIST(21, p4.VECTOR, f5.LONG),
    INT32_LIST(22, p4.VECTOR, f5.INT),
    FIXED64_LIST(23, p4.VECTOR, f5.LONG),
    FIXED32_LIST(24, p4.VECTOR, f5.INT),
    BOOL_LIST(25, p4.VECTOR, f5.BOOLEAN),
    STRING_LIST(26, p4.VECTOR, f5.STRING),
    MESSAGE_LIST(27, p4.VECTOR, f5.MESSAGE),
    BYTES_LIST(28, p4.VECTOR, f5.BYTE_STRING),
    UINT32_LIST(29, p4.VECTOR, f5.INT),
    ENUM_LIST(30, p4.VECTOR, f5.ENUM),
    SFIXED32_LIST(31, p4.VECTOR, f5.INT),
    SFIXED64_LIST(32, p4.VECTOR, f5.LONG),
    SINT32_LIST(33, p4.VECTOR, f5.INT),
    SINT64_LIST(34, p4.VECTOR, f5.LONG),
    DOUBLE_LIST_PACKED(35, p4.PACKED_VECTOR, f5.DOUBLE),
    FLOAT_LIST_PACKED(36, p4.PACKED_VECTOR, f5.FLOAT),
    INT64_LIST_PACKED(37, p4.PACKED_VECTOR, f5.LONG),
    UINT64_LIST_PACKED(38, p4.PACKED_VECTOR, f5.LONG),
    INT32_LIST_PACKED(39, p4.PACKED_VECTOR, f5.INT),
    FIXED64_LIST_PACKED(40, p4.PACKED_VECTOR, f5.LONG),
    FIXED32_LIST_PACKED(41, p4.PACKED_VECTOR, f5.INT),
    BOOL_LIST_PACKED(42, p4.PACKED_VECTOR, f5.BOOLEAN),
    UINT32_LIST_PACKED(43, p4.PACKED_VECTOR, f5.INT),
    ENUM_LIST_PACKED(44, p4.PACKED_VECTOR, f5.ENUM),
    SFIXED32_LIST_PACKED(45, p4.PACKED_VECTOR, f5.INT),
    SFIXED64_LIST_PACKED(46, p4.PACKED_VECTOR, f5.LONG),
    SINT32_LIST_PACKED(47, p4.PACKED_VECTOR, f5.INT),
    SINT64_LIST_PACKED(48, p4.PACKED_VECTOR, f5.LONG),
    GROUP_LIST(49, p4.VECTOR, f5.MESSAGE),
    MAP(50, p4.MAP, f5.VOID);

    private static final n4[] b0;
    private final int id;
    private final f5 zzvj;
    private final p4 zzvk;
    private final Class<?> zzvl;
    private final boolean zzvm;

    static {
        n4[] values = values();
        b0 = new n4[values.length];
        for (n4 n4Var : values) {
            b0[n4Var.id] = n4Var;
        }
    }

    n4(int i2, p4 p4Var, f5 f5Var) {
        int i3;
        this.id = i2;
        this.zzvk = p4Var;
        this.zzvj = f5Var;
        int i4 = m4.f12433a[p4Var.ordinal()];
        if (i4 == 1) {
            this.zzvl = f5Var.zzgv();
        } else if (i4 != 2) {
            this.zzvl = null;
        } else {
            this.zzvl = f5Var.zzgv();
        }
        boolean z = false;
        if (p4Var == p4.SCALAR && (i3 = m4.f12434b[f5Var.ordinal()]) != 1 && i3 != 2 && i3 != 3) {
            z = true;
        }
        this.zzvm = z;
    }

    public final int id() {
        return this.id;
    }
}
