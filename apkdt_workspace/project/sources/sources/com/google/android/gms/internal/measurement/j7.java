package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzanj' uses external variables
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
public class j7 {

    /* renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ j7[] f11932e;
    public static final j7 zzanb = new j7("DOUBLE", 0, m7.DOUBLE, 1);
    public static final j7 zzanc = new j7("FLOAT", 1, m7.FLOAT, 5);
    public static final j7 zzand = new j7("INT64", 2, m7.LONG, 0);
    public static final j7 zzane = new j7("UINT64", 3, m7.LONG, 0);
    public static final j7 zzanf = new j7("INT32", 4, m7.INT, 0);
    public static final j7 zzang = new j7("FIXED64", 5, m7.LONG, 1);
    public static final j7 zzanh = new j7("FIXED32", 6, m7.INT, 5);
    public static final j7 zzani = new j7("BOOL", 7, m7.BOOLEAN, 0);
    public static final j7 zzanj;
    public static final j7 zzank;
    public static final j7 zzanl;
    public static final j7 zzanm;
    public static final j7 zzann;
    public static final j7 zzano;
    public static final j7 zzanp;
    public static final j7 zzanq;
    public static final j7 zzanr;
    public static final j7 zzans;
    private final m7 zzant;
    private final int zzanu;

    static {
        final int i2 = 2;
        final int i3 = 3;
        final m7 m7Var = m7.STRING;
        final int i4 = 8;
        final String str = "STRING";
        zzanj = new j7(str, i4, m7Var, i2) { // from class: com.google.android.gms.internal.measurement.i7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i5 = 8;
                int i6 = 2;
                g7 g7Var = null;
            }
        };
        final m7 m7Var2 = m7.MESSAGE;
        final int i5 = 9;
        final String str2 = "GROUP";
        zzank = new j7(str2, i5, m7Var2, i3) { // from class: com.google.android.gms.internal.measurement.l7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i6 = 9;
                int i7 = 3;
                g7 g7Var = null;
            }
        };
        final m7 m7Var3 = m7.MESSAGE;
        final int i6 = 10;
        final String str3 = "MESSAGE";
        zzanl = new j7(str3, i6, m7Var3, i2) { // from class: com.google.android.gms.internal.measurement.k7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i7 = 10;
                int i8 = 2;
                g7 g7Var = null;
            }
        };
        final m7 m7Var4 = m7.BYTE_STRING;
        final int i7 = 11;
        final String str4 = "BYTES";
        zzanm = new j7(str4, i7, m7Var4, i2) { // from class: com.google.android.gms.internal.measurement.n7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i8 = 11;
                int i9 = 2;
                g7 g7Var = null;
            }
        };
        zzann = new j7("UINT32", 12, m7.INT, 0);
        zzano = new j7("ENUM", 13, m7.ENUM, 0);
        zzanp = new j7("SFIXED32", 14, m7.INT, 5);
        zzanq = new j7("SFIXED64", 15, m7.LONG, 1);
        zzanr = new j7("SINT32", 16, m7.INT, 0);
        zzans = new j7("SINT64", 17, m7.LONG, 0);
        f11932e = new j7[]{zzanb, zzanc, zzand, zzane, zzanf, zzang, zzanh, zzani, zzanj, zzank, zzanl, zzanm, zzann, zzano, zzanp, zzanq, zzanr, zzans};
    }

    private j7(String str, int i2, m7 m7Var, int i3) {
        this.zzant = m7Var;
        this.zzanu = i3;
    }

    public static j7[] values() {
        return (j7[]) f11932e.clone();
    }

    public final m7 zzwz() {
        return this.zzant;
    }

    public final int zzxa() {
        return this.zzanu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j7(String str, int i2, m7 m7Var, int i3, g7 g7Var) {
        this(str, i2, m7Var, i3);
    }
}
