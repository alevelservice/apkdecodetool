package k.b.a.v;

/* compiled from: SignStyle.java */
/* loaded from: classes2.dex */
public enum j {
    NORMAL,
    ALWAYS,
    NEVER,
    NOT_NEGATIVE,
    EXCEEDS_PAD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean parse(boolean z, boolean z2, boolean z3) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return (z && z2) ? false : true;
        }
        if (ordinal == 1 || ordinal == 4) {
            return true;
        }
        return (z2 || z3) ? false : true;
    }
}
