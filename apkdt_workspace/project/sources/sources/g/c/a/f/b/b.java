package g.c.a.f.b;

import g.c.a.e.c;

/* compiled from: ObjectHelper.java */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: ObjectHelper.java */
    /* loaded from: classes2.dex */
    static final class a implements c<Object, Object> {
        a() {
        }
    }

    static {
        new a();
    }

    public static int a(int i2, String str) {
        if (i2 > 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i2);
    }
}
