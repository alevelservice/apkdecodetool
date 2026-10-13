package com.google.android.gms.internal.ads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzhpl' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class nc1 {

    /* renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ nc1[] f8317e;
    public static final nc1 zzhpd = new nc1("DOUBLE", 0, qc1.DOUBLE, 1);
    public static final nc1 zzhpe = new nc1("FLOAT", 1, qc1.FLOAT, 5);
    public static final nc1 zzhpf = new nc1("INT64", 2, qc1.LONG, 0);
    public static final nc1 zzhpg = new nc1("UINT64", 3, qc1.LONG, 0);
    public static final nc1 zzhph = new nc1("INT32", 4, qc1.INT, 0);
    public static final nc1 zzhpi = new nc1("FIXED64", 5, qc1.LONG, 1);
    public static final nc1 zzhpj = new nc1("FIXED32", 6, qc1.INT, 5);
    public static final nc1 zzhpk = new nc1("BOOL", 7, qc1.BOOLEAN, 0);
    public static final nc1 zzhpl;
    public static final nc1 zzhpm;
    public static final nc1 zzhpn;
    public static final nc1 zzhpo;
    public static final nc1 zzhpp;
    public static final nc1 zzhpq;
    public static final nc1 zzhpr;
    public static final nc1 zzhps;
    public static final nc1 zzhpt;
    public static final nc1 zzhpu;
    private final qc1 zzhpv;
    private final int zzhpw;

    static {
        final int i2 = 2;
        final int i3 = 3;
        final qc1 qc1Var = qc1.STRING;
        final int i4 = 8;
        final String str = "STRING";
        zzhpl = new nc1(str, i4, qc1Var, i2) { // from class: com.google.android.gms.internal.ads.mc1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i5 = 8;
                int i6 = 2;
                kc1 kc1Var = null;
            }
        };
        final qc1 qc1Var2 = qc1.MESSAGE;
        final int i5 = 9;
        final String str2 = "GROUP";
        zzhpm = new nc1(str2, i5, qc1Var2, i3) { // from class: com.google.android.gms.internal.ads.pc1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i6 = 9;
                int i7 = 3;
                kc1 kc1Var = null;
            }
        };
        final qc1 qc1Var3 = qc1.MESSAGE;
        final int i6 = 10;
        final String str3 = "MESSAGE";
        zzhpn = new nc1(str3, i6, qc1Var3, i2) { // from class: com.google.android.gms.internal.ads.oc1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i7 = 10;
                int i8 = 2;
                kc1 kc1Var = null;
            }
        };
        final qc1 qc1Var4 = qc1.BYTE_STRING;
        final int i7 = 11;
        final String str4 = "BYTES";
        zzhpo = new nc1(str4, i7, qc1Var4, i2) { // from class: com.google.android.gms.internal.ads.rc1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i8 = 11;
                int i9 = 2;
                kc1 kc1Var = null;
            }
        };
        zzhpp = new nc1("UINT32", 12, qc1.INT, 0);
        zzhpq = new nc1("ENUM", 13, qc1.ENUM, 0);
        zzhpr = new nc1("SFIXED32", 14, qc1.INT, 5);
        zzhps = new nc1("SFIXED64", 15, qc1.LONG, 1);
        zzhpt = new nc1("SINT32", 16, qc1.INT, 0);
        zzhpu = new nc1("SINT64", 17, qc1.LONG, 0);
        f8317e = new nc1[]{zzhpd, zzhpe, zzhpf, zzhpg, zzhph, zzhpi, zzhpj, zzhpk, zzhpl, zzhpm, zzhpn, zzhpo, zzhpp, zzhpq, zzhpr, zzhps, zzhpt, zzhpu};
    }

    private nc1(String str, int i2, qc1 qc1Var, int i3) {
        this.zzhpv = qc1Var;
        this.zzhpw = i3;
    }

    public static nc1[] values() {
        return (nc1[]) f8317e.clone();
    }

    public final qc1 zzbcb() {
        return this.zzhpv;
    }

    public final int zzbcc() {
        return this.zzhpw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ nc1(String str, int i2, qc1 qc1Var, int i3, kc1 kc1Var) {
        this(str, i2, qc1Var, i3);
    }
}
