package e.i.b.a.i;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import e.i.b.a.i.c;

/* compiled from: TransportContext.java */
/* loaded from: classes.dex */
public abstract class m {

    /* compiled from: TransportContext.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        @RestrictTo({RestrictTo.a.LIBRARY})
        public abstract a a(e.i.b.a.d dVar);

        public abstract a a(String str);

        public abstract a a(@Nullable byte[] bArr);

        public abstract m a();
    }

    public static a d() {
        c.b bVar = new c.b();
        bVar.a(e.i.b.a.d.DEFAULT);
        return bVar;
    }

    @RestrictTo({RestrictTo.a.LIBRARY})
    public m a(e.i.b.a.d dVar) {
        a d2 = d();
        d2.a(a());
        d2.a(dVar);
        d2.a(b());
        return d2.a();
    }

    public abstract String a();

    @Nullable
    public abstract byte[] b();

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public abstract e.i.b.a.d c();

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = a();
        objArr[1] = c();
        objArr[2] = b() == null ? "" : Base64.encodeToString(b(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
