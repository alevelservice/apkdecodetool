package e.f.c.j;

import javax.annotation.Nullable;

/* compiled from: TriState.java */
/* loaded from: classes.dex */
public enum e {
    YES,
    NO,
    UNSET;

    /* compiled from: TriState.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17192a = new int[e.values().length];

        static {
            try {
                f17192a[e.YES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17192a[e.NO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17192a[e.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static e fromDbValue(int i2) {
        if (i2 == 1) {
            return YES;
        }
        if (i2 != 2) {
            return UNSET;
        }
        return NO;
    }

    public boolean asBoolean() {
        int i2 = a.f17192a[ordinal()];
        if (i2 == 1) {
            return true;
        }
        if (i2 == 2) {
            return false;
        }
        if (i2 != 3) {
            throw new IllegalStateException("Unrecognized TriState value: " + this);
        }
        throw new IllegalStateException("No boolean equivalent for UNSET");
    }

    @Nullable
    public Boolean asBooleanObject() {
        int i2 = a.f17192a[ordinal()];
        if (i2 == 1) {
            return Boolean.TRUE;
        }
        if (i2 == 2) {
            return Boolean.FALSE;
        }
        if (i2 == 3) {
            return null;
        }
        throw new IllegalStateException("Unrecognized TriState value: " + this);
    }

    public int getDbValue() {
        int i2 = a.f17192a[ordinal()];
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                return 3;
            }
        }
        return i3;
    }

    public boolean isSet() {
        return this != UNSET;
    }

    public static e valueOf(boolean z) {
        return z ? YES : NO;
    }

    public static e valueOf(Boolean bool) {
        return bool != null ? valueOf(bool.booleanValue()) : UNSET;
    }

    public boolean asBoolean(boolean z) {
        int i2 = a.f17192a[ordinal()];
        if (i2 == 1) {
            return true;
        }
        if (i2 == 2) {
            return false;
        }
        if (i2 == 3) {
            return z;
        }
        throw new IllegalStateException("Unrecognized TriState value: " + this);
    }
}
