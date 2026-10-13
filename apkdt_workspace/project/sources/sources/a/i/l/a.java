package a.i.l;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* compiled from: BidiFormatter.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    static final d f318d = e.f350c;

    /* renamed from: e, reason: collision with root package name */
    private static final String f319e = Character.toString(8206);

    /* renamed from: f, reason: collision with root package name */
    private static final String f320f = Character.toString(8207);

    /* renamed from: g, reason: collision with root package name */
    static final a f321g = new a(false, 2, f318d);

    /* renamed from: h, reason: collision with root package name */
    static final a f322h = new a(true, 2, f318d);

    /* renamed from: a, reason: collision with root package name */
    private final boolean f323a;

    /* renamed from: b, reason: collision with root package name */
    private final int f324b;

    /* renamed from: c, reason: collision with root package name */
    private final d f325c;

    /* compiled from: BidiFormatter.java */
    /* renamed from: a.i.l.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0006a {

        /* renamed from: a, reason: collision with root package name */
        private boolean f326a;

        /* renamed from: b, reason: collision with root package name */
        private int f327b;

        /* renamed from: c, reason: collision with root package name */
        private d f328c;

        public C0006a() {
            b(a.a(Locale.getDefault()));
        }

        private static a a(boolean z) {
            return z ? a.f322h : a.f321g;
        }

        private void b(boolean z) {
            this.f326a = z;
            this.f328c = a.f318d;
            this.f327b = 2;
        }

        public a a() {
            if (this.f327b == 2 && this.f328c == a.f318d) {
                return a(this.f326a);
            }
            return new a(this.f326a, this.f327b, this.f328c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BidiFormatter.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: f, reason: collision with root package name */
        private static final byte[] f329f = new byte[1792];

        /* renamed from: a, reason: collision with root package name */
        private final CharSequence f330a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f331b;

        /* renamed from: c, reason: collision with root package name */
        private final int f332c;

        /* renamed from: d, reason: collision with root package name */
        private int f333d;

        /* renamed from: e, reason: collision with root package name */
        private char f334e;

        static {
            for (int i2 = 0; i2 < 1792; i2++) {
                f329f[i2] = Character.getDirectionality(i2);
            }
        }

        b(CharSequence charSequence, boolean z) {
            this.f330a = charSequence;
            this.f331b = z;
            this.f332c = charSequence.length();
        }

        private static byte a(char c2) {
            return c2 < 1792 ? f329f[c2] : Character.getDirectionality(c2);
        }

        private byte e() {
            char c2;
            int i2 = this.f333d;
            do {
                int i3 = this.f333d;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f330a;
                int i4 = i3 - 1;
                this.f333d = i4;
                this.f334e = charSequence.charAt(i4);
                c2 = this.f334e;
                if (c2 == '&') {
                    return (byte) 12;
                }
            } while (c2 != ';');
            this.f333d = i2;
            this.f334e = ';';
            return (byte) 13;
        }

        private byte f() {
            char charAt;
            do {
                int i2 = this.f333d;
                if (i2 >= this.f332c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f330a;
                this.f333d = i2 + 1;
                charAt = charSequence.charAt(i2);
                this.f334e = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        private byte g() {
            char charAt;
            int i2 = this.f333d;
            while (true) {
                int i3 = this.f333d;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f330a;
                int i4 = i3 - 1;
                this.f333d = i4;
                this.f334e = charSequence.charAt(i4);
                char c2 = this.f334e;
                if (c2 == '<') {
                    return (byte) 12;
                }
                if (c2 == '>') {
                    break;
                }
                if (c2 == '\"' || c2 == '\'') {
                    char c3 = this.f334e;
                    do {
                        int i5 = this.f333d;
                        if (i5 > 0) {
                            CharSequence charSequence2 = this.f330a;
                            int i6 = i5 - 1;
                            this.f333d = i6;
                            charAt = charSequence2.charAt(i6);
                            this.f334e = charAt;
                        }
                    } while (charAt != c3);
                }
            }
            this.f333d = i2;
            this.f334e = '>';
            return (byte) 13;
        }

        private byte h() {
            char charAt;
            int i2 = this.f333d;
            while (true) {
                int i3 = this.f333d;
                if (i3 < this.f332c) {
                    CharSequence charSequence = this.f330a;
                    this.f333d = i3 + 1;
                    this.f334e = charSequence.charAt(i3);
                    char c2 = this.f334e;
                    if (c2 == '>') {
                        return (byte) 12;
                    }
                    if (c2 == '\"' || c2 == '\'') {
                        char c3 = this.f334e;
                        do {
                            int i4 = this.f333d;
                            if (i4 < this.f332c) {
                                CharSequence charSequence2 = this.f330a;
                                this.f333d = i4 + 1;
                                charAt = charSequence2.charAt(i4);
                                this.f334e = charAt;
                            }
                        } while (charAt != c3);
                    }
                } else {
                    this.f333d = i2;
                    this.f334e = '<';
                    return (byte) 13;
                }
            }
        }

        byte b() {
            this.f334e = this.f330a.charAt(this.f333d);
            if (Character.isHighSurrogate(this.f334e)) {
                int codePointAt = Character.codePointAt(this.f330a, this.f333d);
                this.f333d += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f333d++;
            byte a2 = a(this.f334e);
            if (!this.f331b) {
                return a2;
            }
            char c2 = this.f334e;
            if (c2 == '<') {
                return h();
            }
            return c2 == '&' ? f() : a2;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:46:0x0045. Please report as an issue. */
        int c() {
            this.f333d = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (this.f333d < this.f332c && i2 == 0) {
                byte b2 = b();
                if (b2 != 0) {
                    if (b2 == 1 || b2 == 2) {
                        if (i4 == 0) {
                            return 1;
                        }
                    } else if (b2 != 9) {
                        switch (b2) {
                            case 14:
                            case 15:
                                i4++;
                                i3 = -1;
                                continue;
                            case 16:
                            case 17:
                                i4++;
                                i3 = 1;
                                continue;
                            case 18:
                                i4--;
                                i3 = 0;
                                continue;
                        }
                    }
                } else if (i4 == 0) {
                    return -1;
                }
                i2 = i4;
            }
            if (i2 == 0) {
                return 0;
            }
            if (i3 != 0) {
                return i3;
            }
            while (this.f333d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i2 == i4) {
                            return -1;
                        }
                        i4--;
                    case 16:
                    case 17:
                        if (i2 == i4) {
                            return 1;
                        }
                        i4--;
                    case 18:
                        i4++;
                }
            }
            return 0;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:33:0x001c. Please report as an issue. */
        int d() {
            this.f333d = this.f332c;
            int i2 = 0;
            int i3 = 0;
            while (this.f333d > 0) {
                byte a2 = a();
                if (a2 != 0) {
                    if (a2 == 1 || a2 == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i3;
                        }
                    } else if (a2 != 9) {
                        switch (a2) {
                            case 14:
                            case 15:
                                if (i2 == i3) {
                                    return -1;
                                }
                                i3--;
                                break;
                            case 16:
                            case 17:
                                if (i2 == i3) {
                                    return 1;
                                }
                                i3--;
                                break;
                            case 18:
                                i3++;
                                break;
                            default:
                                if (i2 != 0) {
                                    break;
                                } else {
                                    i2 = i3;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else {
                    if (i3 == 0) {
                        return -1;
                    }
                    if (i2 == 0) {
                        i2 = i3;
                    }
                }
            }
            return 0;
        }

        byte a() {
            this.f334e = this.f330a.charAt(this.f333d - 1);
            if (Character.isLowSurrogate(this.f334e)) {
                int codePointBefore = Character.codePointBefore(this.f330a, this.f333d);
                this.f333d -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f333d--;
            byte a2 = a(this.f334e);
            if (!this.f331b) {
                return a2;
            }
            char c2 = this.f334e;
            if (c2 == '>') {
                return g();
            }
            return c2 == ';' ? e() : a2;
        }
    }

    a(boolean z, int i2, d dVar) {
        this.f323a = z;
        this.f324b = i2;
        this.f325c = dVar;
    }

    public static a b() {
        return new C0006a().a();
    }

    private static int c(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    public boolean a() {
        return (this.f324b & 2) != 0;
    }

    private String a(CharSequence charSequence, d dVar) {
        boolean a2 = dVar.a(charSequence, 0, charSequence.length());
        if (this.f323a || !(a2 || c(charSequence) == 1)) {
            return this.f323a ? (!a2 || c(charSequence) == -1) ? f320f : "" : "";
        }
        return f319e;
    }

    private String b(CharSequence charSequence, d dVar) {
        boolean a2 = dVar.a(charSequence, 0, charSequence.length());
        if (this.f323a || !(a2 || b(charSequence) == 1)) {
            return this.f323a ? (!a2 || b(charSequence) == -1) ? f320f : "" : "";
        }
        return f319e;
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).c();
    }

    public CharSequence a(CharSequence charSequence, d dVar, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean a2 = dVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (a() && z) {
            spannableStringBuilder.append((CharSequence) b(charSequence, a2 ? e.f349b : e.f348a));
        }
        if (a2 != this.f323a) {
            spannableStringBuilder.append(a2 ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) a(charSequence, a2 ? e.f349b : e.f348a));
        }
        return spannableStringBuilder;
    }

    public CharSequence a(CharSequence charSequence) {
        return a(charSequence, this.f325c, true);
    }

    static boolean a(Locale locale) {
        return f.b(locale) == 1;
    }
}
