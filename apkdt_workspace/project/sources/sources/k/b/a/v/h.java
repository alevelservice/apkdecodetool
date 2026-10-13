package k.b.a.v;

import java.util.concurrent.ConcurrentHashMap;

/* compiled from: DecimalStyle.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: e, reason: collision with root package name */
    public static final h f19859e = new h('0', '+', '-', '.');

    /* renamed from: a, reason: collision with root package name */
    private final char f19860a;

    /* renamed from: b, reason: collision with root package name */
    private final char f19861b;

    /* renamed from: c, reason: collision with root package name */
    private final char f19862c;

    /* renamed from: d, reason: collision with root package name */
    private final char f19863d;

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    private h(char c2, char c3, char c4, char c5) {
        this.f19860a = c2;
        this.f19861b = c3;
        this.f19862c = c4;
        this.f19863d = c5;
    }

    public char a() {
        return this.f19863d;
    }

    public char b() {
        return this.f19862c;
    }

    public char c() {
        return this.f19861b;
    }

    public char d() {
        return this.f19860a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f19860a == hVar.f19860a && this.f19861b == hVar.f19861b && this.f19862c == hVar.f19862c && this.f19863d == hVar.f19863d;
    }

    public int hashCode() {
        return this.f19860a + this.f19861b + this.f19862c + this.f19863d;
    }

    public String toString() {
        return "DecimalStyle[" + this.f19860a + this.f19861b + this.f19862c + this.f19863d + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(char c2) {
        int i2 = c2 - this.f19860a;
        if (i2 < 0 || i2 > 9) {
            return -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        char c2 = this.f19860a;
        if (c2 == '0') {
            return str;
        }
        int i2 = c2 - '0';
        char[] charArray = str.toCharArray();
        for (int i3 = 0; i3 < charArray.length; i3++) {
            charArray[i3] = (char) (charArray[i3] + i2);
        }
        return new String(charArray);
    }
}
