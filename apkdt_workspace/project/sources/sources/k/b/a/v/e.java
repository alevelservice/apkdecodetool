package k.b.a.v;

/* compiled from: DateTimeParseException.java */
/* loaded from: classes2.dex */
public class e extends k.b.a.b {
    private static final long serialVersionUID = 4304633501674722597L;
    private final int errorIndex;
    private final String parsedString;

    public e(String str, CharSequence charSequence, int i2) {
        super(str);
        this.parsedString = charSequence.toString();
        this.errorIndex = i2;
    }

    public int getErrorIndex() {
        return this.errorIndex;
    }

    public String getParsedString() {
        return this.parsedString;
    }

    public e(String str, CharSequence charSequence, int i2, Throwable th) {
        super(str, th);
        this.parsedString = charSequence.toString();
        this.errorIndex = i2;
    }
}
