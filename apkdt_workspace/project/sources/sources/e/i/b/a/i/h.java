package e.i.b.a.i;

import androidx.annotation.Nullable;
import e.i.b.a.i.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: EventInternal.java */
/* loaded from: classes.dex */
public abstract class h {

    /* compiled from: EventInternal.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract a a(long j2);

        public abstract a a(g gVar);

        public abstract a a(Integer num);

        public abstract a a(String str);

        public final a a(String str, String str2) {
            b().put(str, str2);
            return this;
        }

        protected abstract a a(Map<String, String> map);

        public abstract h a();

        public abstract a b(long j2);

        protected abstract Map<String, String> b();

        public final a a(String str, long j2) {
            b().put(str, String.valueOf(j2));
            return this;
        }

        public final a a(String str, int i2) {
            b().put(str, String.valueOf(i2));
            return this;
        }
    }

    public static a i() {
        a.b bVar = new a.b();
        bVar.a(new HashMap());
        return bVar;
    }

    public final String a(String str) {
        String str2 = a().get(str);
        return str2 == null ? "" : str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Map<String, String> a();

    public final int b(String str) {
        String str2 = a().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    @Nullable
    public abstract Integer b();

    public final long c(String str) {
        String str2 = a().get(str);
        if (str2 == null) {
            return 0L;
        }
        return Long.valueOf(str2).longValue();
    }

    public abstract g c();

    public abstract long d();

    public final Map<String, String> e() {
        return Collections.unmodifiableMap(a());
    }

    public abstract String f();

    public abstract long g();

    public a h() {
        a.b bVar = new a.b();
        bVar.a(f());
        bVar.a(b());
        bVar.a(c());
        bVar.a(d());
        bVar.b(g());
        bVar.a(new HashMap(a()));
        return bVar;
    }
}
