package k.b.a.v;

/* compiled from: TextStyle.java */
/* loaded from: classes2.dex */
public enum l {
    FULL,
    FULL_STANDALONE,
    SHORT,
    SHORT_STANDALONE,
    NARROW,
    NARROW_STANDALONE;

    public l asNormal() {
        return values()[ordinal() & (-2)];
    }

    public l asStandalone() {
        return values()[ordinal() | 1];
    }

    public boolean isStandalone() {
        return (ordinal() & 1) == 1;
    }
}
