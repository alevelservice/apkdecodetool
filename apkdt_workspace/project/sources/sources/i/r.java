package i;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: Headers.java */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    private final String[] f18778a;

    r(a aVar) {
        List<String> list = aVar.f18779a;
        this.f18778a = (String[]) list.toArray(new String[list.size()]);
    }

    static void c(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                int length = str.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = str.charAt(i2);
                    if (charAt <= ' ' || charAt >= 127) {
                        throw new IllegalArgumentException(i.g0.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str));
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }
        throw new NullPointerException("name == null");
    }

    @Nullable
    public String a(String str) {
        return a(this.f18778a, str);
    }

    public int b() {
        return this.f18778a.length / 2;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof r) && Arrays.equals(((r) obj).f18778a, this.f18778a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f18778a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int b2 = b();
        for (int i2 = 0; i2 < b2; i2++) {
            sb.append(a(i2));
            sb.append(": ");
            sb.append(b(i2));
            sb.append("\n");
        }
        return sb.toString();
    }

    /* compiled from: Headers.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final List<String> f18779a = new ArrayList(20);

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                b(str.substring(0, indexOf), str.substring(indexOf + 1));
                return this;
            }
            if (str.startsWith(":")) {
                b("", str.substring(1));
                return this;
            }
            b("", str);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a b(String str, String str2) {
            this.f18779a.add(str);
            this.f18779a.add(str2.trim());
            return this;
        }

        public a c(String str, String str2) {
            r.c(str);
            b(str, str2);
            return this;
        }

        public a d(String str, String str2) {
            r.c(str);
            r.a(str2, str);
            b(str);
            b(str, str2);
            return this;
        }

        public a b(String str) {
            int i2 = 0;
            while (i2 < this.f18779a.size()) {
                if (str.equalsIgnoreCase(this.f18779a.get(i2))) {
                    this.f18779a.remove(i2);
                    this.f18779a.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
            return this;
        }

        public a a(String str, String str2) {
            r.c(str);
            r.a(str2, str);
            b(str, str2);
            return this;
        }

        public r a() {
            return new r(this);
        }
    }

    public String a(int i2) {
        return this.f18778a[i2 * 2];
    }

    public String b(int i2) {
        return this.f18778a[(i2 * 2) + 1];
    }

    public a a() {
        a aVar = new a();
        Collections.addAll(aVar.f18779a, this.f18778a);
        return aVar;
    }

    public List<String> b(String str) {
        int b2 = b();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < b2; i2++) {
            if (str.equalsIgnoreCase(a(i2))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i2));
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    static void a(String str, String str2) {
        if (str != null) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    throw new IllegalArgumentException(i.g0.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException("value for name " + str2 + " == null");
    }
}
