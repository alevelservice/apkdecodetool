package i;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: HttpUrl.java */
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: i, reason: collision with root package name */
    private static final char[] f18780i = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a, reason: collision with root package name */
    final String f18781a;

    /* renamed from: b, reason: collision with root package name */
    private final String f18782b;

    /* renamed from: c, reason: collision with root package name */
    private final String f18783c;

    /* renamed from: d, reason: collision with root package name */
    final String f18784d;

    /* renamed from: e, reason: collision with root package name */
    final int f18785e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final List<String> f18786f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private final String f18787g;

    /* renamed from: h, reason: collision with root package name */
    private final String f18788h;

    /* compiled from: HttpUrl.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        String f18789a;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        String f18792d;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        List<String> f18795g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        String f18796h;

        /* renamed from: b, reason: collision with root package name */
        String f18790b = "";

        /* renamed from: c, reason: collision with root package name */
        String f18791c = "";

        /* renamed from: e, reason: collision with root package name */
        int f18793e = -1;

        /* renamed from: f, reason: collision with root package name */
        final List<String> f18794f = new ArrayList();

        public a() {
            this.f18794f.add("");
        }

        private boolean g(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean h(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public a a(int i2) {
            if (i2 > 0 && i2 <= 65535) {
                this.f18793e = i2;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i2);
        }

        int b() {
            int i2 = this.f18793e;
            return i2 != -1 ? i2 : s.c(this.f18789a);
        }

        public a c(String str) {
            if (str != null) {
                String a2 = a(str, 0, str.length());
                if (a2 != null) {
                    this.f18792d = a2;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new NullPointerException("host == null");
        }

        public a d(String str) {
            if (str != null) {
                this.f18791c = s.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("password == null");
        }

        public a e(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f18789a = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.f18789a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        public a f(String str) {
            if (str != null) {
                this.f18790b = s.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("username == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f18789a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f18790b.isEmpty() || !this.f18791c.isEmpty()) {
                sb.append(this.f18790b);
                if (!this.f18791c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f18791c);
                }
                sb.append('@');
            }
            String str2 = this.f18792d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f18792d);
                    sb.append(']');
                } else {
                    sb.append(this.f18792d);
                }
            }
            if (this.f18793e != -1 || this.f18789a != null) {
                int b2 = b();
                String str3 = this.f18789a;
                if (str3 == null || b2 != s.c(str3)) {
                    sb.append(':');
                    sb.append(b2);
                }
            }
            s.b(sb, this.f18794f);
            if (this.f18795g != null) {
                sb.append('?');
                s.a(sb, this.f18795g);
            }
            if (this.f18796h != null) {
                sb.append('#');
                sb.append(this.f18796h);
            }
            return sb.toString();
        }

        public a b(@Nullable String str) {
            this.f18795g = str != null ? s.f(s.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        private void d(String str, int i2, int i3) {
            if (i2 == i3) {
                return;
            }
            char charAt = str.charAt(i2);
            if (charAt != '/' && charAt != '\\') {
                List<String> list = this.f18794f;
                list.set(list.size() - 1, "");
            } else {
                this.f18794f.clear();
                this.f18794f.add("");
                i2++;
            }
            while (true) {
                int i4 = i2;
                if (i4 >= i3) {
                    return;
                }
                i2 = i.g0.c.a(str, i4, i3, "/\\");
                boolean z = i2 < i3;
                a(str, i4, i2, z, true);
                if (z) {
                    i2++;
                }
            }
        }

        private static int f(String str, int i2, int i3) {
            int i4 = 0;
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i4++;
                i2++;
            }
            return i4;
        }

        public a a(String str) {
            if (str != null) {
                a(str, 0, str.length(), false, false);
                return this;
            }
            throw new NullPointerException("pathSegment == null");
        }

        public a a(String str, @Nullable String str2) {
            if (str != null) {
                if (this.f18795g == null) {
                    this.f18795g = new ArrayList();
                }
                this.f18795g.add(s.a(str, " \"'<>#&=", true, false, true, true));
                this.f18795g.add(str2 != null ? s.a(str2, " \"'<>#&=", true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        public a b(String str, @Nullable String str2) {
            if (str != null) {
                if (this.f18795g == null) {
                    this.f18795g = new ArrayList();
                }
                this.f18795g.add(s.a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
                this.f18795g.add(str2 != null ? s.a(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("name == null");
        }

        a c() {
            int size = this.f18794f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f18794f.set(i2, s.a(this.f18794f.get(i2), "[]", true, true, false, true));
            }
            List<String> list = this.f18795g;
            if (list != null) {
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    String str = this.f18795g.get(i3);
                    if (str != null) {
                        this.f18795g.set(i3, s.a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f18796h;
            if (str2 != null) {
                this.f18796h = s.a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        private static int e(String str, int i2, int i3) {
            if (i3 - i2 < 2) {
                return -1;
            }
            char charAt = str.charAt(i2);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i2++;
                    if (i2 >= i3) {
                        break;
                    }
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i2;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private void d() {
            if (this.f18794f.remove(r0.size() - 1).isEmpty() && !this.f18794f.isEmpty()) {
                this.f18794f.set(r0.size() - 1, "");
            } else {
                this.f18794f.add("");
            }
        }

        private static int b(String str, int i2, int i3) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(s.a(str, i2, i3, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        public s a() {
            if (this.f18789a != null) {
                if (this.f18792d != null) {
                    return new s(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        private static int c(String str, int i2, int i3) {
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt == ':') {
                    return i2;
                }
                if (charAt != '[') {
                    i2++;
                }
                do {
                    i2++;
                    if (i2 < i3) {
                    }
                    i2++;
                } while (str.charAt(i2) != ']');
                i2++;
            }
            return i3;
        }

        a a(@Nullable s sVar, String str) {
            int a2;
            int i2;
            int b2 = i.g0.c.b(str, 0, str.length());
            int c2 = i.g0.c.c(str, b2, str.length());
            int e2 = e(str, b2, c2);
            if (e2 != -1) {
                if (str.regionMatches(true, b2, "https:", 0, 6)) {
                    this.f18789a = "https";
                    b2 += 6;
                } else if (str.regionMatches(true, b2, "http:", 0, 5)) {
                    this.f18789a = "http";
                    b2 += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, e2) + "'");
                }
            } else if (sVar != null) {
                this.f18789a = sVar.f18781a;
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int f2 = f(str, b2, c2);
            char c3 = '?';
            char c4 = '#';
            if (f2 < 2 && sVar != null && sVar.f18781a.equals(this.f18789a)) {
                this.f18790b = sVar.f();
                this.f18791c = sVar.b();
                this.f18792d = sVar.f18784d;
                this.f18793e = sVar.f18785e;
                this.f18794f.clear();
                this.f18794f.addAll(sVar.d());
                if (b2 == c2 || str.charAt(b2) == '#') {
                    b(sVar.e());
                }
            } else {
                int i3 = b2 + f2;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    a2 = i.g0.c.a(str, i3, c2, "@/\\?#");
                    char charAt = a2 != c2 ? str.charAt(a2) : (char) 65535;
                    if (charAt == 65535 || charAt == c4 || charAt == '/' || charAt == '\\' || charAt == c3) {
                        break;
                    }
                    if (charAt == '@') {
                        if (!z) {
                            int a3 = i.g0.c.a(str, i3, a2, ':');
                            i2 = a2;
                            String a4 = s.a(str, i3, a3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z2) {
                                a4 = this.f18790b + "%40" + a4;
                            }
                            this.f18790b = a4;
                            if (a3 != i2) {
                                this.f18791c = s.a(str, a3 + 1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z2 = true;
                        } else {
                            i2 = a2;
                            this.f18791c += "%40" + s.a(str, i3, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i3 = i2 + 1;
                    }
                    c3 = '?';
                    c4 = '#';
                }
                int c5 = c(str, i3, a2);
                int i4 = c5 + 1;
                if (i4 < a2) {
                    this.f18792d = a(str, i3, c5);
                    this.f18793e = b(str, i4, a2);
                    if (this.f18793e == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i4, a2) + '\"');
                    }
                } else {
                    this.f18792d = a(str, i3, c5);
                    this.f18793e = s.c(this.f18789a);
                }
                if (this.f18792d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i3, c5) + '\"');
                }
                b2 = a2;
            }
            int a5 = i.g0.c.a(str, b2, c2, "?#");
            d(str, b2, a5);
            if (a5 < c2 && str.charAt(a5) == '?') {
                int a6 = i.g0.c.a(str, a5, c2, '#');
                this.f18795g = s.f(s.a(str, a5 + 1, a6, " \"'<>#", true, false, true, true, null));
                a5 = a6;
            }
            if (a5 < c2 && str.charAt(a5) == '#') {
                this.f18796h = s.a(str, 1 + a5, c2, "", true, false, false, false, null);
            }
            return this;
        }

        private void a(String str, int i2, int i3, boolean z, boolean z2) {
            String a2 = s.a(str, i2, i3, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (g(a2)) {
                return;
            }
            if (h(a2)) {
                d();
                return;
            }
            if (this.f18794f.get(r11.size() - 1).isEmpty()) {
                this.f18794f.set(r11.size() - 1, a2);
            } else {
                this.f18794f.add(a2);
            }
            if (z) {
                this.f18794f.add("");
            }
        }

        private static String a(String str, int i2, int i3) {
            return i.g0.c.a(s.a(str, i2, i3, false));
        }
    }

    s(a aVar) {
        this.f18781a = aVar.f18789a;
        this.f18782b = a(aVar.f18790b, false);
        this.f18783c = a(aVar.f18791c, false);
        this.f18784d = aVar.f18792d;
        this.f18785e = aVar.b();
        a(aVar.f18794f, false);
        List<String> list = aVar.f18795g;
        this.f18786f = list != null ? a(list, true) : null;
        String str = aVar.f18796h;
        this.f18787g = str != null ? a(str, false) : null;
        this.f18788h = aVar.toString();
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            String str = list.get(i2);
            String str2 = list.get(i2 + 1);
            if (i2 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    public static int c(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public String b() {
        if (this.f18783c.isEmpty()) {
            return "";
        }
        return this.f18788h.substring(this.f18788h.indexOf(58, this.f18781a.length() + 3) + 1, this.f18788h.indexOf(64));
    }

    public List<String> d() {
        int indexOf = this.f18788h.indexOf(47, this.f18781a.length() + 3);
        String str = this.f18788h;
        int a2 = i.g0.c.a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < a2) {
            int i2 = indexOf + 1;
            int a3 = i.g0.c.a(this.f18788h, i2, a2, '/');
            arrayList.add(this.f18788h.substring(i2, a3));
            indexOf = a3;
        }
        return arrayList;
    }

    @Nullable
    public String e() {
        if (this.f18786f == null) {
            return null;
        }
        int indexOf = this.f18788h.indexOf(63) + 1;
        String str = this.f18788h;
        return this.f18788h.substring(indexOf, i.g0.c.a(str, indexOf, str.length(), '#'));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof s) && ((s) obj).f18788h.equals(this.f18788h);
    }

    public String f() {
        if (this.f18782b.isEmpty()) {
            return "";
        }
        int length = this.f18781a.length() + 3;
        String str = this.f18788h;
        return this.f18788h.substring(length, i.g0.c.a(str, length, str.length(), ":@"));
    }

    public String g() {
        return this.f18784d;
    }

    public boolean h() {
        return this.f18781a.equals("https");
    }

    public int hashCode() {
        return this.f18788h.hashCode();
    }

    public a i() {
        a aVar = new a();
        aVar.f18789a = this.f18781a;
        aVar.f18790b = f();
        aVar.f18791c = b();
        aVar.f18792d = this.f18784d;
        aVar.f18793e = this.f18785e != c(this.f18781a) ? this.f18785e : -1;
        aVar.f18794f.clear();
        aVar.f18794f.addAll(d());
        aVar.b(e());
        aVar.f18796h = a();
        return aVar;
    }

    public int j() {
        return this.f18785e;
    }

    @Nullable
    public String k() {
        if (this.f18786f == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        a(sb, this.f18786f);
        return sb.toString();
    }

    public int l() {
        List<String> list = this.f18786f;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public String m() {
        a a2 = a("/...");
        a2.f("");
        a2.d("");
        return a2.a().toString();
    }

    public String n() {
        return this.f18781a;
    }

    public URI o() {
        a i2 = i();
        i2.c();
        String aVar = i2.toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public String toString() {
        return this.f18788h;
    }

    public String c() {
        int indexOf = this.f18788h.indexOf(47, this.f18781a.length() + 3);
        String str = this.f18788h;
        return this.f18788h.substring(indexOf, i.g0.c.a(str, indexOf, str.length(), "?#"));
    }

    static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append('/');
            sb.append(list.get(i2));
        }
    }

    @Nullable
    public static s e(String str) {
        try {
            return d(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static List<String> f(String str) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 <= str.length()) {
            int indexOf = str.indexOf(38, i2);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i2);
            if (indexOf2 != -1 && indexOf2 <= indexOf) {
                arrayList.add(str.substring(i2, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            } else {
                arrayList.add(str.substring(i2, indexOf));
                arrayList.add(null);
            }
            i2 = indexOf + 1;
        }
        return arrayList;
    }

    public static s d(String str) {
        a aVar = new a();
        aVar.a((s) null, str);
        return aVar.a();
    }

    @Nullable
    public String a() {
        if (this.f18787g == null) {
            return null;
        }
        return this.f18788h.substring(this.f18788h.indexOf(35) + 1);
    }

    @Nullable
    public s b(String str) {
        a a2 = a(str);
        if (a2 != null) {
            return a2.a();
        }
        return null;
    }

    @Nullable
    public a a(String str) {
        try {
            a aVar = new a();
            aVar.a(this, str);
            return aVar;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    private List<String> a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            arrayList.add(str != null ? a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String a(String str, int i2, int i3, boolean z) {
        for (int i4 = i2; i4 < i3; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '%' || (charAt == '+' && z)) {
                j.c cVar = new j.c();
                cVar.a(str, i2, i4);
                a(cVar, str, i4, i3, z);
                return cVar.y();
            }
        }
        return str.substring(i2, i3);
    }

    static void a(j.c cVar, String str, int i2, int i3, boolean z) {
        int i4;
        while (i2 < i3) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt == 37 && (i4 = i2 + 2) < i3) {
                int a2 = i.g0.c.a(str.charAt(i2 + 1));
                int a3 = i.g0.c.a(str.charAt(i4));
                if (a2 != -1 && a3 != -1) {
                    cVar.writeByte((a2 << 4) + a3);
                    i2 = i4;
                }
                cVar.d(codePointAt);
            } else {
                if (codePointAt == 43 && z) {
                    cVar.writeByte(32);
                }
                cVar.d(codePointAt);
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    static boolean a(String str, int i2, int i3) {
        int i4 = i2 + 2;
        return i4 < i3 && str.charAt(i2) == '%' && i.g0.c.a(str.charAt(i2 + 1)) != -1 && i.g0.c.a(str.charAt(i4)) != -1;
    }

    static String a(String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i4 = i2;
        while (i4 < i3) {
            int codePointAt = str.codePointAt(i4);
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || !z4)) {
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z && (!z2 || a(str, i4, i3)))) && (codePointAt != 43 || !z3))) {
                    i4 += Character.charCount(codePointAt);
                }
            }
            j.c cVar = new j.c();
            cVar.a(str, i2, i4);
            a(cVar, str, i4, i3, str2, z, z2, z3, z4, charset);
            return cVar.y();
        }
        return str.substring(i2, i3);
    }

    static void a(j.c cVar, String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        j.c cVar2 = null;
        while (i2 < i3) {
            int codePointAt = str.codePointAt(i2);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z3) {
                    cVar.a(z ? "+" : "%2B");
                } else if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z4) && str2.indexOf(codePointAt) == -1 && (codePointAt != 37 || (z && (!z2 || a(str, i2, i3)))))) {
                    cVar.d(codePointAt);
                } else {
                    if (cVar2 == null) {
                        cVar2 = new j.c();
                    }
                    if (charset != null && !charset.equals(i.g0.c.f18456i)) {
                        cVar2.a(str, i2, Character.charCount(codePointAt) + i2, charset);
                    } else {
                        cVar2.d(codePointAt);
                    }
                    while (!cVar2.d()) {
                        int readByte = cVar2.readByte() & 255;
                        cVar.writeByte(37);
                        cVar.writeByte((int) f18780i[(readByte >> 4) & 15]);
                        cVar.writeByte((int) f18780i[readByte & 15]);
                    }
                }
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }
}
