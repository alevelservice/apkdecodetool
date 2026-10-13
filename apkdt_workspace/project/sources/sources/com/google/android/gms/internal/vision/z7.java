package com.google.android.gms.internal.vision;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzabu' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class z7 {

    /* renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ z7[] f12615e;
    public static final z7 zzabm = new z7("DOUBLE", 0, c8.DOUBLE, 1);
    public static final z7 zzabn = new z7("FLOAT", 1, c8.FLOAT, 5);
    public static final z7 zzabo = new z7("INT64", 2, c8.LONG, 0);
    public static final z7 zzabp = new z7("UINT64", 3, c8.LONG, 0);
    public static final z7 zzabq = new z7("INT32", 4, c8.INT, 0);
    public static final z7 zzabr = new z7("FIXED64", 5, c8.LONG, 1);
    public static final z7 zzabs = new z7("FIXED32", 6, c8.INT, 5);
    public static final z7 zzabt = new z7("BOOL", 7, c8.BOOLEAN, 0);
    public static final z7 zzabu;
    public static final z7 zzabv;
    public static final z7 zzabw;
    public static final z7 zzabx;
    public static final z7 zzaby;
    public static final z7 zzabz;
    public static final z7 zzaca;
    public static final z7 zzacb;
    public static final z7 zzacc;
    public static final z7 zzacd;
    private final c8 zzace;
    private final int zzacf;

    static {
        final int i2 = 2;
        final int i3 = 3;
        final c8 c8Var = c8.STRING;
        final int i4 = 8;
        final String str = "STRING";
        zzabu = new z7(str, i4, c8Var, i2) { // from class: com.google.android.gms.internal.vision.y7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i5 = 8;
                int i6 = 2;
                w7 w7Var = null;
            }
        };
        final c8 c8Var2 = c8.MESSAGE;
        final int i5 = 9;
        final String str2 = "GROUP";
        zzabv = new z7(str2, i5, c8Var2, i3) { // from class: com.google.android.gms.internal.vision.b8
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i6 = 9;
                int i7 = 3;
                w7 w7Var = null;
            }
        };
        final c8 c8Var3 = c8.MESSAGE;
        final int i6 = 10;
        final String str3 = "MESSAGE";
        zzabw = new z7(str3, i6, c8Var3, i2) { // from class: com.google.android.gms.internal.vision.a8
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i7 = 10;
                int i8 = 2;
                w7 w7Var = null;
            }
        };
        final c8 c8Var4 = c8.BYTE_STRING;
        final int i7 = 11;
        final String str4 = "BYTES";
        zzabx = new z7(str4, i7, c8Var4, i2) { // from class: com.google.android.gms.internal.vision.d8
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i8 = 11;
                int i9 = 2;
                w7 w7Var = null;
            }
        };
        zzaby = new z7("UINT32", 12, c8.INT, 0);
        zzabz = new z7("ENUM", 13, c8.ENUM, 0);
        zzaca = new z7("SFIXED32", 14, c8.INT, 5);
        zzacb = new z7("SFIXED64", 15, c8.LONG, 1);
        zzacc = new z7("SINT32", 16, c8.INT, 0);
        zzacd = new z7("SINT64", 17, c8.LONG, 0);
        f12615e = new z7[]{zzabm, zzabn, zzabo, zzabp, zzabq, zzabr, zzabs, zzabt, zzabu, zzabv, zzabw, zzabx, zzaby, zzabz, zzaca, zzacb, zzacc, zzacd};
    }

    private z7(String str, int i2, c8 c8Var, int i3) {
        this.zzace = c8Var;
        this.zzacf = i3;
    }

    public static z7[] values() {
        return (z7[]) f12615e.clone();
    }

    public final c8 zzip() {
        return this.zzace;
    }

    public final int zziq() {
        return this.zzacf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ z7(String str, int i2, c8 c8Var, int i3, w7 w7Var) {
        this(str, i2, c8Var, i3);
    }
}
