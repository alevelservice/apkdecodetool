package com.google.android.gms.internal.clearcut;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzqk' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class g4 {

    /* renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ g4[] f11429e;
    public static final g4 zzqc = new g4("DOUBLE", 0, l4.DOUBLE, 1);
    public static final g4 zzqd = new g4("FLOAT", 1, l4.FLOAT, 5);
    public static final g4 zzqe = new g4("INT64", 2, l4.LONG, 0);
    public static final g4 zzqf = new g4("UINT64", 3, l4.LONG, 0);
    public static final g4 zzqg = new g4("INT32", 4, l4.INT, 0);
    public static final g4 zzqh = new g4("FIXED64", 5, l4.LONG, 1);
    public static final g4 zzqi = new g4("FIXED32", 6, l4.INT, 5);
    public static final g4 zzqj = new g4("BOOL", 7, l4.BOOLEAN, 0);
    public static final g4 zzqk;
    public static final g4 zzql;
    public static final g4 zzqm;
    public static final g4 zzqn;
    public static final g4 zzqo;
    public static final g4 zzqp;
    public static final g4 zzqq;
    public static final g4 zzqr;
    public static final g4 zzqs;
    public static final g4 zzqt;
    private final l4 zzqu;
    private final int zzqv;

    static {
        final int i2 = 2;
        final int i3 = 3;
        final l4 l4Var = l4.STRING;
        final int i4 = 8;
        final String str = "STRING";
        zzqk = new g4(str, i4, l4Var, i2) { // from class: com.google.android.gms.internal.clearcut.h4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i5 = 8;
                int i6 = 2;
                f4 f4Var = null;
            }
        };
        final l4 l4Var2 = l4.MESSAGE;
        final int i5 = 9;
        final String str2 = "GROUP";
        zzql = new g4(str2, i5, l4Var2, i3) { // from class: com.google.android.gms.internal.clearcut.i4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i6 = 9;
                int i7 = 3;
                f4 f4Var = null;
            }
        };
        final l4 l4Var3 = l4.MESSAGE;
        final int i6 = 10;
        final String str3 = "MESSAGE";
        zzqm = new g4(str3, i6, l4Var3, i2) { // from class: com.google.android.gms.internal.clearcut.j4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i7 = 10;
                int i8 = 2;
                f4 f4Var = null;
            }
        };
        final l4 l4Var4 = l4.BYTE_STRING;
        final int i7 = 11;
        final String str4 = "BYTES";
        zzqn = new g4(str4, i7, l4Var4, i2) { // from class: com.google.android.gms.internal.clearcut.k4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i8 = 11;
                int i9 = 2;
                f4 f4Var = null;
            }
        };
        zzqo = new g4("UINT32", 12, l4.INT, 0);
        zzqp = new g4("ENUM", 13, l4.ENUM, 0);
        zzqq = new g4("SFIXED32", 14, l4.INT, 5);
        zzqr = new g4("SFIXED64", 15, l4.LONG, 1);
        zzqs = new g4("SINT32", 16, l4.INT, 0);
        zzqt = new g4("SINT64", 17, l4.LONG, 0);
        f11429e = new g4[]{zzqc, zzqd, zzqe, zzqf, zzqg, zzqh, zzqi, zzqj, zzqk, zzql, zzqm, zzqn, zzqo, zzqp, zzqq, zzqr, zzqs, zzqt};
    }

    private g4(String str, int i2, l4 l4Var, int i3) {
        this.zzqu = l4Var;
        this.zzqv = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ g4(String str, int i2, l4 l4Var, int i3, f4 f4Var) {
        this(str, i2, l4Var, i3);
    }

    public static g4[] values() {
        return (g4[]) f11429e.clone();
    }

    public final l4 zzek() {
        return this.zzqu;
    }

    public final int zzel() {
        return this.zzqv;
    }
}
