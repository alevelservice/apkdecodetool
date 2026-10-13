package i;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* compiled from: Cookie.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: j, reason: collision with root package name */
    private static final Pattern f18751j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k, reason: collision with root package name */
    private static final Pattern f18752k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l, reason: collision with root package name */
    private static final Pattern f18753l = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a, reason: collision with root package name */
    private final String f18754a;

    /* renamed from: b, reason: collision with root package name */
    private final String f18755b;

    /* renamed from: c, reason: collision with root package name */
    private final long f18756c;

    /* renamed from: d, reason: collision with root package name */
    private final String f18757d;

    /* renamed from: e, reason: collision with root package name */
    private final String f18758e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f18759f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f18760g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f18761h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f18762i;

    private l(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f18754a = str;
        this.f18755b = str2;
        this.f18756c = j2;
        this.f18757d = str3;
        this.f18758e = str4;
        this.f18759f = z;
        this.f18760g = z2;
        this.f18762i = z3;
        this.f18761h = z4;
    }

    public String a() {
        return this.f18754a;
    }

    public String b() {
        return this.f18755b;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return lVar.f18754a.equals(this.f18754a) && lVar.f18755b.equals(this.f18755b) && lVar.f18757d.equals(this.f18757d) && lVar.f18758e.equals(this.f18758e) && lVar.f18756c == this.f18756c && lVar.f18759f == this.f18759f && lVar.f18760g == this.f18760g && lVar.f18761h == this.f18761h && lVar.f18762i == this.f18762i;
    }

    public int hashCode() {
        int hashCode = (((((((527 + this.f18754a.hashCode()) * 31) + this.f18755b.hashCode()) * 31) + this.f18757d.hashCode()) * 31) + this.f18758e.hashCode()) * 31;
        long j2 = this.f18756c;
        return ((((((((hashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (!this.f18759f ? 1 : 0)) * 31) + (!this.f18760g ? 1 : 0)) * 31) + (!this.f18761h ? 1 : 0)) * 31) + (!this.f18762i ? 1 : 0);
    }

    public String toString() {
        return a(false);
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !i.g0.c.d(str);
    }

    private static long b(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e2) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e2;
        }
    }

    @Nullable
    public static l a(s sVar, String str) {
        return a(System.currentTimeMillis(), sVar, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f7  */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static i.l a(long r24, i.s r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.l.a(long, i.s, java.lang.String):i.l");
    }

    private static long a(String str, int i2, int i3) {
        int a2 = a(str, i2, i3, false);
        Matcher matcher = m.matcher(str);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (a2 < i3) {
            int a3 = a(str, a2 + 1, i3, true);
            matcher.region(a2, a3);
            if (i5 == -1 && matcher.usePattern(m).matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                int parseInt2 = Integer.parseInt(matcher.group(2));
                i9 = Integer.parseInt(matcher.group(3));
                i8 = parseInt2;
                i5 = parseInt;
            } else if (i6 == -1 && matcher.usePattern(f18753l).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (i7 == -1 && matcher.usePattern(f18752k).matches()) {
                i7 = f18752k.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i4 == -1 && matcher.usePattern(f18751j).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
            }
            a2 = a(str, a3 + 1, i3, false);
        }
        if (i4 >= 70 && i4 <= 99) {
            i4 += 1900;
        }
        if (i4 >= 0 && i4 <= 69) {
            i4 += 2000;
        }
        if (i4 < 1601) {
            throw new IllegalArgumentException();
        }
        if (i7 == -1) {
            throw new IllegalArgumentException();
        }
        if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        }
        if (i5 < 0 || i5 > 23) {
            throw new IllegalArgumentException();
        }
        if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        }
        if (i9 >= 0 && i9 <= 59) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(i.g0.c.n);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i4);
            gregorianCalendar.set(2, i7 - 1);
            gregorianCalendar.set(5, i6);
            gregorianCalendar.set(11, i5);
            gregorianCalendar.set(12, i8);
            gregorianCalendar.set(13, i9);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
        throw new IllegalArgumentException();
    }

    private static int a(String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    private static String a(String str) {
        if (!str.endsWith(".")) {
            if (str.startsWith(".")) {
                str = str.substring(1);
            }
            String a2 = i.g0.c.a(str);
            if (a2 != null) {
                return a2;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public static List<l> a(s sVar, r rVar) {
        List<String> b2 = rVar.b("Set-Cookie");
        int size = b2.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            l a2 = a(sVar, b2.get(i2));
            if (a2 != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(a2);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    String a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18754a);
        sb.append('=');
        sb.append(this.f18755b);
        if (this.f18761h) {
            if (this.f18756c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(i.g0.g.d.a(new Date(this.f18756c)));
            }
        }
        if (!this.f18762i) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f18757d);
        }
        sb.append("; path=");
        sb.append(this.f18758e);
        if (this.f18759f) {
            sb.append("; secure");
        }
        if (this.f18760g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
