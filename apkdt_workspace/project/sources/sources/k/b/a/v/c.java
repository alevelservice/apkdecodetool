package k.b.a.v;

import com.alipay.mobile.security.zim.api.ZIMFacade;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import k.b.a.v.k;

/* compiled from: DateTimeFormatterBuilder.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: h, reason: collision with root package name */
    private static final k.b.a.x.k<k.b.a.q> f19785h = new a();

    /* renamed from: i, reason: collision with root package name */
    private static final Map<Character, k.b.a.x.i> f19786i = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    static final Comparator<String> f19787j;

    /* renamed from: a, reason: collision with root package name */
    private c f19788a;

    /* renamed from: b, reason: collision with root package name */
    private final c f19789b;

    /* renamed from: c, reason: collision with root package name */
    private final List<h> f19790c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f19791d;

    /* renamed from: e, reason: collision with root package name */
    private int f19792e;

    /* renamed from: f, reason: collision with root package name */
    private char f19793f;

    /* renamed from: g, reason: collision with root package name */
    private int f19794g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public class a implements k.b.a.x.k<k.b.a.q> {
        a() {
        }

        @Override // k.b.a.x.k
        public k.b.a.q a(k.b.a.x.e eVar) {
            k.b.a.q qVar = (k.b.a.q) eVar.query(k.b.a.x.j.g());
            if (qVar == null || (qVar instanceof k.b.a.r)) {
                return null;
            }
            return qVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public class b extends k.b.a.v.g {

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ k.b f19795b;

        b(c cVar, k.b bVar) {
            this.f19795b = bVar;
        }

        @Override // k.b.a.v.g
        public String a(k.b.a.x.i iVar, long j2, k.b.a.v.l lVar, Locale locale) {
            return this.f19795b.a(j2, lVar);
        }

        @Override // k.b.a.v.g
        public Iterator<Map.Entry<String, Long>> a(k.b.a.x.i iVar, k.b.a.v.l lVar, Locale locale) {
            return this.f19795b.a(lVar);
        }
    }

    /* compiled from: DateTimeFormatterBuilder.java */
    /* renamed from: k.b.a.v.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0255c implements Comparator<String> {
        C0255c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.length() == str2.length() ? str.compareTo(str2) : str.length() - str2.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class d {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19796a = new int[k.b.a.v.j.values().length];

        static {
            try {
                f19796a[k.b.a.v.j.EXCEEDS_PAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19796a[k.b.a.v.j.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19796a[k.b.a.v.j.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19796a[k.b.a.v.j.NOT_NEGATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class e implements h {

        /* renamed from: e, reason: collision with root package name */
        private final char f19797e;

        e(char c2) {
            this.f19797e = c2;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            if (i2 == charSequence.length()) {
                return i2 ^ (-1);
            }
            return !dVar.a(this.f19797e, charSequence.charAt(i2)) ? i2 ^ (-1) : i2 + 1;
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            sb.append(this.f19797e);
            return true;
        }

        public String toString() {
            if (this.f19797e == '\'') {
                return "''";
            }
            return "'" + this.f19797e + "'";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class f implements h {

        /* renamed from: e, reason: collision with root package name */
        private final k.b.a.v.l f19798e;

        f(k.b.a.v.l lVar) {
            this.f19798e = lVar;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            if (i2 >= 0 && i2 <= charSequence.length()) {
                k.b.a.u.i iVar = null;
                int i3 = -1;
                for (k.b.a.u.i iVar2 : k.b.a.u.i.getAvailableChronologies()) {
                    String id = iVar2.getId();
                    int length = id.length();
                    if (length > i3 && dVar.a(charSequence, i2, id, 0, length)) {
                        iVar = iVar2;
                        i3 = length;
                    }
                }
                if (iVar == null) {
                    return i2 ^ (-1);
                }
                dVar.a(iVar);
                return i2 + i3;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            k.b.a.u.i iVar = (k.b.a.u.i) fVar.a(k.b.a.x.j.a());
            if (iVar == null) {
                return false;
            }
            if (this.f19798e == null) {
                sb.append(iVar.getId());
                return true;
            }
            try {
                sb.append(ResourceBundle.getBundle("org.threeten.bp.format.ChronologyText", fVar.b(), c.class.getClassLoader()).getString(iVar.getId()));
                return true;
            } catch (MissingResourceException unused) {
                sb.append(iVar.getId());
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class g implements h {

        /* renamed from: e, reason: collision with root package name */
        private final h[] f19799e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f19800f;

        g(List<h> list, boolean z) {
            this((h[]) list.toArray(new h[list.size()]), z);
        }

        public g a(boolean z) {
            return z == this.f19800f ? this : new g(this.f19799e, z);
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            if (this.f19800f) {
                dVar.h();
                int i3 = i2;
                for (h hVar : this.f19799e) {
                    i3 = hVar.parse(dVar, charSequence, i3);
                    if (i3 < 0) {
                        dVar.a(false);
                        return i2;
                    }
                }
                dVar.a(true);
                return i3;
            }
            for (h hVar2 : this.f19799e) {
                i2 = hVar2.parse(dVar, charSequence, i2);
                if (i2 < 0) {
                    break;
                }
            }
            return i2;
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            int length = sb.length();
            if (this.f19800f) {
                fVar.e();
            }
            try {
                for (h hVar : this.f19799e) {
                    if (!hVar.print(fVar, sb)) {
                        sb.setLength(length);
                        return true;
                    }
                }
                if (this.f19800f) {
                    fVar.a();
                }
                return true;
            } finally {
                if (this.f19800f) {
                    fVar.a();
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.f19799e != null) {
                sb.append(this.f19800f ? "[" : "(");
                for (h hVar : this.f19799e) {
                    sb.append(hVar);
                }
                sb.append(this.f19800f ? "]" : ")");
            }
            return sb.toString();
        }

        g(h[] hVarArr, boolean z) {
            this.f19799e = hVarArr;
            this.f19800f = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public interface h {
        int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2);

        boolean print(k.b.a.v.f fVar, StringBuilder sb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class j implements h {

        /* renamed from: e, reason: collision with root package name */
        private final int f19805e;

        j(int i2) {
            this.f19805e = i2;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            int i3;
            k.b.a.v.d a2 = dVar.a();
            int i4 = this.f19805e;
            int i5 = 0;
            if (i4 < 0) {
                i4 = 0;
            }
            int i6 = this.f19805e;
            if (i6 < 0) {
                i6 = 9;
            }
            c cVar = new c();
            cVar.a(k.b.a.v.b.f19773h);
            cVar.a('T');
            cVar.a(k.b.a.x.a.HOUR_OF_DAY, 2);
            cVar.a(':');
            cVar.a(k.b.a.x.a.MINUTE_OF_HOUR, 2);
            cVar.a(':');
            cVar.a(k.b.a.x.a.SECOND_OF_MINUTE, 2);
            cVar.a((k.b.a.x.i) k.b.a.x.a.NANO_OF_SECOND, i4, i6, true);
            cVar.a('Z');
            int parse = cVar.i().a(false).parse(a2, charSequence, i2);
            if (parse < 0) {
                return parse;
            }
            long longValue = a2.a(k.b.a.x.a.YEAR).longValue();
            int intValue = a2.a(k.b.a.x.a.MONTH_OF_YEAR).intValue();
            int intValue2 = a2.a(k.b.a.x.a.DAY_OF_MONTH).intValue();
            int intValue3 = a2.a(k.b.a.x.a.HOUR_OF_DAY).intValue();
            int intValue4 = a2.a(k.b.a.x.a.MINUTE_OF_HOUR).intValue();
            Long a3 = a2.a(k.b.a.x.a.SECOND_OF_MINUTE);
            Long a4 = a2.a(k.b.a.x.a.NANO_OF_SECOND);
            int intValue5 = a3 != null ? a3.intValue() : 0;
            int intValue6 = a4 != null ? a4.intValue() : 0;
            int i7 = ((int) longValue) % e.b.b.a.a.a.c.DEBUG_INT;
            if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
                i3 = intValue5;
                intValue3 = 0;
                i5 = 1;
            } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
                dVar.g();
                i3 = 59;
            } else {
                i3 = intValue5;
            }
            try {
                return dVar.a(k.b.a.x.a.NANO_OF_SECOND, intValue6, i2, dVar.a(k.b.a.x.a.INSTANT_SECONDS, k.b.a.w.d.e(longValue / 10000, 315569520000L) + k.b.a.g.of(i7, intValue, intValue2, intValue3, intValue4, i3, 0).plusDays(i5).toEpochSecond(k.b.a.r.UTC), i2, parse));
            } catch (RuntimeException unused) {
                return i2 ^ (-1);
            }
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            Long a2 = fVar.a(k.b.a.x.a.INSTANT_SECONDS);
            Long l2 = 0L;
            if (fVar.d().isSupported(k.b.a.x.a.NANO_OF_SECOND)) {
                l2 = Long.valueOf(fVar.d().getLong(k.b.a.x.a.NANO_OF_SECOND));
            }
            int i2 = 0;
            if (a2 == null) {
                return false;
            }
            long longValue = a2.longValue();
            int checkValidIntValue = k.b.a.x.a.NANO_OF_SECOND.checkValidIntValue(l2.longValue());
            if (longValue >= -62167219200L) {
                long j2 = (longValue - 315569520000L) + 62167219200L;
                long b2 = k.b.a.w.d.b(j2, 315569520000L) + 1;
                k.b.a.g ofEpochSecond = k.b.a.g.ofEpochSecond(k.b.a.w.d.c(j2, 315569520000L) - 62167219200L, 0, k.b.a.r.UTC);
                if (b2 > 0) {
                    sb.append('+');
                    sb.append(b2);
                }
                sb.append(ofEpochSecond);
                if (ofEpochSecond.getSecond() == 0) {
                    sb.append(":00");
                }
            } else {
                long j3 = longValue + 62167219200L;
                long j4 = j3 / 315569520000L;
                long j5 = j3 % 315569520000L;
                k.b.a.g ofEpochSecond2 = k.b.a.g.ofEpochSecond(j5 - 62167219200L, 0, k.b.a.r.UTC);
                int length = sb.length();
                sb.append(ofEpochSecond2);
                if (ofEpochSecond2.getSecond() == 0) {
                    sb.append(":00");
                }
                if (j4 < 0) {
                    if (ofEpochSecond2.getYear() == -10000) {
                        sb.replace(length, length + 2, Long.toString(j4 - 1));
                    } else if (j5 == 0) {
                        sb.insert(length, j4);
                    } else {
                        sb.insert(length + 1, Math.abs(j4));
                    }
                }
            }
            int i3 = this.f19805e;
            if (i3 == -2) {
                if (checkValidIntValue != 0) {
                    sb.append('.');
                    if (checkValidIntValue % 1000000 == 0) {
                        sb.append(Integer.toString((checkValidIntValue / 1000000) + 1000).substring(1));
                    } else if (checkValidIntValue % 1000 == 0) {
                        sb.append(Integer.toString((checkValidIntValue / 1000) + 1000000).substring(1));
                    } else {
                        sb.append(Integer.toString(checkValidIntValue + 1000000000).substring(1));
                    }
                }
            } else if (i3 > 0 || (i3 == -1 && checkValidIntValue > 0)) {
                sb.append('.');
                int i4 = 100000000;
                while (true) {
                    if ((this.f19805e != -1 || checkValidIntValue <= 0) && i2 >= this.f19805e) {
                        break;
                    }
                    int i5 = checkValidIntValue / i4;
                    sb.append((char) (i5 + 48));
                    checkValidIntValue -= i5 * i4;
                    i4 /= 10;
                    i2++;
                }
            }
            sb.append('Z');
            return true;
        }

        public String toString() {
            return "Instant()";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static class k implements h {

        /* renamed from: j, reason: collision with root package name */
        static final int[] f19806j = {0, 10, 100, 1000, e.b.b.a.a.a.c.DEBUG_INT, 100000, 1000000, 10000000, 100000000, 1000000000};

        /* renamed from: e, reason: collision with root package name */
        final k.b.a.x.i f19807e;

        /* renamed from: f, reason: collision with root package name */
        final int f19808f;

        /* renamed from: g, reason: collision with root package name */
        final int f19809g;

        /* renamed from: h, reason: collision with root package name */
        final k.b.a.v.j f19810h;

        /* renamed from: i, reason: collision with root package name */
        final int f19811i;

        /* synthetic */ k(k.b.a.x.i iVar, int i2, int i3, k.b.a.v.j jVar, int i4, a aVar) {
            this(iVar, i2, i3, jVar, i4);
        }

        long a(k.b.a.v.f fVar, long j2) {
            return j2;
        }

        k a() {
            return this.f19811i == -1 ? this : new k(this.f19807e, this.f19808f, this.f19809g, this.f19810h, -1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x0110, code lost:
        
            r5 = r10;
            r10 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0116, code lost:
        
            if (r0 == false) goto L95;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0118, code lost:
        
            if (r10 == null) goto L88;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0120, code lost:
        
            if (r10.equals(java.math.BigInteger.ZERO) == false) goto L87;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0126, code lost:
        
            if (r20.f() == false) goto L87;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x012c, code lost:
        
            return (r7 - 1) ^ (-1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x012d, code lost:
        
            r10 = r10.negate();
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0166, code lost:
        
            r2 = r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0167, code lost:
        
            if (r10 == null) goto L116;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x016f, code lost:
        
            if (r10.bitLength() <= 63) goto L114;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x0171, code lost:
        
            r10 = r10.divide(java.math.BigInteger.TEN);
            r5 = r5 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0186, code lost:
        
            return a(r20, r10.longValue(), r7, r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0190, code lost:
        
            return a(r20, r2, r7, r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0137, code lost:
        
            if (r14 != 0) goto L94;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x013d, code lost:
        
            if (r20.f() == false) goto L94;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0142, code lost:
        
            return (r7 - 1) ^ (-1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0143, code lost:
        
            r2 = -r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x014a, code lost:
        
            if (r19.f19810h != k.b.a.v.j.EXCEEDS_PAD) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0150, code lost:
        
            if (r20.f() == false) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0152, code lost:
        
            r0 = r5 - r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0154, code lost:
        
            if (r2 == false) goto L105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0158, code lost:
        
            if (r0 > r19.f19808f) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x015e, code lost:
        
            return (r7 - 1) ^ (-1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0161, code lost:
        
            if (r0 <= r19.f19808f) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0165, code lost:
        
            return r7 ^ (-1);
         */
        @Override // k.b.a.v.c.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parse(k.b.a.v.d r20, java.lang.CharSequence r21, int r22) {
            /*
                Method dump skipped, instructions count: 401
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: k.b.a.v.c.k.parse(k.b.a.v.d, java.lang.CharSequence, int):int");
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            Long a2 = fVar.a(this.f19807e);
            if (a2 == null) {
                return false;
            }
            long a3 = a(fVar, a2.longValue());
            k.b.a.v.h c2 = fVar.c();
            String l2 = a3 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(a3));
            if (l2.length() <= this.f19809g) {
                String a4 = c2.a(l2);
                if (a3 >= 0) {
                    int i2 = d.f19796a[this.f19810h.ordinal()];
                    if (i2 == 1) {
                        if (this.f19808f < 19 && a3 >= f19806j[r4]) {
                            sb.append(c2.c());
                        }
                    } else if (i2 == 2) {
                        sb.append(c2.c());
                    }
                } else {
                    int i3 = d.f19796a[this.f19810h.ordinal()];
                    if (i3 == 1 || i3 == 2 || i3 == 3) {
                        sb.append(c2.b());
                    } else if (i3 == 4) {
                        throw new k.b.a.b("Field " + this.f19807e + " cannot be printed as the value " + a3 + " cannot be negative according to the SignStyle");
                    }
                }
                for (int i4 = 0; i4 < this.f19808f - a4.length(); i4++) {
                    sb.append(c2.d());
                }
                sb.append(a4);
                return true;
            }
            throw new k.b.a.b("Field " + this.f19807e + " cannot be printed as the value " + a3 + " exceeds the maximum print width of " + this.f19809g);
        }

        public String toString() {
            if (this.f19808f == 1 && this.f19809g == 19 && this.f19810h == k.b.a.v.j.NORMAL) {
                return "Value(" + this.f19807e + ")";
            }
            if (this.f19808f == this.f19809g && this.f19810h == k.b.a.v.j.NOT_NEGATIVE) {
                return "Value(" + this.f19807e + "," + this.f19808f + ")";
            }
            return "Value(" + this.f19807e + "," + this.f19808f + "," + this.f19809g + "," + this.f19810h + ")";
        }

        k(k.b.a.x.i iVar, int i2, int i3, k.b.a.v.j jVar) {
            this.f19807e = iVar;
            this.f19808f = i2;
            this.f19809g = i3;
            this.f19810h = jVar;
            this.f19811i = 0;
        }

        k a(int i2) {
            return new k(this.f19807e, this.f19808f, this.f19809g, this.f19810h, this.f19811i + i2);
        }

        boolean a(k.b.a.v.d dVar) {
            int i2 = this.f19811i;
            return i2 == -1 || (i2 > 0 && this.f19808f == this.f19809g && this.f19810h == k.b.a.v.j.NOT_NEGATIVE);
        }

        int a(k.b.a.v.d dVar, long j2, int i2, int i3) {
            return dVar.a(this.f19807e, j2, i2, i3);
        }

        private k(k.b.a.x.i iVar, int i2, int i3, k.b.a.v.j jVar, int i4) {
            this.f19807e = iVar;
            this.f19808f = i2;
            this.f19809g = i3;
            this.f19810h = jVar;
            this.f19811i = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class m implements h {

        /* renamed from: e, reason: collision with root package name */
        private final h f19816e;

        /* renamed from: f, reason: collision with root package name */
        private final int f19817f;

        /* renamed from: g, reason: collision with root package name */
        private final char f19818g;

        m(h hVar, int i2, char c2) {
            this.f19816e = hVar;
            this.f19817f = i2;
            this.f19818g = c2;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            boolean f2 = dVar.f();
            boolean e2 = dVar.e();
            if (i2 <= charSequence.length()) {
                if (i2 == charSequence.length()) {
                    return i2 ^ (-1);
                }
                int i3 = this.f19817f + i2;
                if (i3 > charSequence.length()) {
                    if (f2) {
                        return i2 ^ (-1);
                    }
                    i3 = charSequence.length();
                }
                int i4 = i2;
                while (i4 < i3) {
                    if (!e2) {
                        if (!dVar.a(charSequence.charAt(i4), this.f19818g)) {
                            break;
                        }
                        i4++;
                    } else {
                        if (charSequence.charAt(i4) != this.f19818g) {
                            break;
                        }
                        i4++;
                    }
                }
                int parse = this.f19816e.parse(dVar, charSequence.subSequence(0, i3), i4);
                return (parse == i3 || !f2) ? parse : (i2 + i4) ^ (-1);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            int length = sb.length();
            if (!this.f19816e.print(fVar, sb)) {
                return false;
            }
            int length2 = sb.length() - length;
            if (length2 <= this.f19817f) {
                for (int i2 = 0; i2 < this.f19817f - length2; i2++) {
                    sb.insert(length, this.f19818g);
                }
                return true;
            }
            throw new k.b.a.b("Cannot print as output of " + length2 + " characters exceeds pad width of " + this.f19817f);
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("Pad(");
            sb.append(this.f19816e);
            sb.append(",");
            sb.append(this.f19817f);
            if (this.f19818g == ' ') {
                str = ")";
            } else {
                str = ",'" + this.f19818g + "')";
            }
            sb.append(str);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class n extends k {

        /* renamed from: k, reason: collision with root package name */
        private final int f19819k;

        /* renamed from: l, reason: collision with root package name */
        private final k.b.a.u.b f19820l;

        static {
            k.b.a.f.of(2000, 1, 1);
        }

        private n(k.b.a.x.i iVar, int i2, int i3, int i4, k.b.a.u.b bVar, int i5) {
            super(iVar, i2, i3, k.b.a.v.j.NOT_NEGATIVE, i5, null);
            this.f19819k = i4;
            this.f19820l = bVar;
        }

        @Override // k.b.a.v.c.k
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ReducedValue(");
            sb.append(this.f19807e);
            sb.append(",");
            sb.append(this.f19808f);
            sb.append(",");
            sb.append(this.f19809g);
            sb.append(",");
            Object obj = this.f19820l;
            if (obj == null) {
                obj = Integer.valueOf(this.f19819k);
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }

        @Override // k.b.a.v.c.k
        long a(k.b.a.v.f fVar, long j2) {
            long abs = Math.abs(j2);
            int i2 = this.f19819k;
            if (this.f19820l != null) {
                i2 = k.b.a.u.i.from(fVar.d()).date(this.f19820l).get(this.f19807e);
            }
            if (j2 >= i2) {
                int[] iArr = k.f19806j;
                int i3 = this.f19808f;
                if (j2 < i2 + iArr[i3]) {
                    return abs % iArr[i3];
                }
            }
            return abs % k.f19806j[this.f19809g];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.b.a.v.c.k
        public int a(k.b.a.v.d dVar, long j2, int i2, int i3) {
            int i4 = this.f19819k;
            if (this.f19820l != null) {
                i4 = dVar.b().date(this.f19820l).get(this.f19807e);
                dVar.a(this, j2, i2, i3);
            }
            int i5 = i3 - i2;
            int i6 = this.f19808f;
            if (i5 == i6 && j2 >= 0) {
                long j3 = k.f19806j[i6];
                long j4 = i4;
                long j5 = j4 - (j4 % j3);
                j2 = i4 > 0 ? j5 + j2 : j5 - j2;
                if (j2 < j4) {
                    j2 += j3;
                }
            }
            return dVar.a(this.f19807e, j2, i2, i3);
        }

        @Override // k.b.a.v.c.k
        k a() {
            return this.f19811i == -1 ? this : new n(this.f19807e, this.f19808f, this.f19809g, this.f19819k, this.f19820l, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.b.a.v.c.k
        public n a(int i2) {
            return new n(this.f19807e, this.f19808f, this.f19809g, this.f19819k, this.f19820l, this.f19811i + i2);
        }

        @Override // k.b.a.v.c.k
        boolean a(k.b.a.v.d dVar) {
            if (dVar.f()) {
                return super.a(dVar);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public enum o implements h {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            int ordinal = ordinal();
            if (ordinal == 0) {
                dVar.b(true);
            } else if (ordinal == 1) {
                dVar.b(false);
            } else if (ordinal == 2) {
                dVar.c(true);
            } else if (ordinal == 3) {
                dVar.c(false);
            }
            return i2;
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            int ordinal = ordinal();
            if (ordinal == 0) {
                return "ParseCaseSensitive(true)";
            }
            if (ordinal == 1) {
                return "ParseCaseSensitive(false)";
            }
            if (ordinal == 2) {
                return "ParseStrict(true)";
            }
            if (ordinal == 3) {
                return "ParseStrict(false)";
            }
            throw new IllegalStateException("Unreachable");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class p implements h {

        /* renamed from: e, reason: collision with root package name */
        private final String f19822e;

        p(String str) {
            this.f19822e = str;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            if (i2 <= charSequence.length() && i2 >= 0) {
                String str = this.f19822e;
                return !dVar.a(charSequence, i2, str, 0, str.length()) ? i2 ^ (-1) : i2 + this.f19822e.length();
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            sb.append(this.f19822e);
            return true;
        }

        public String toString() {
            return "'" + this.f19822e.replace("'", "''") + "'";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class q implements h {

        /* renamed from: e, reason: collision with root package name */
        private final k.b.a.x.i f19823e;

        /* renamed from: f, reason: collision with root package name */
        private final k.b.a.v.l f19824f;

        /* renamed from: g, reason: collision with root package name */
        private final k.b.a.v.g f19825g;

        /* renamed from: h, reason: collision with root package name */
        private volatile k f19826h;

        q(k.b.a.x.i iVar, k.b.a.v.l lVar, k.b.a.v.g gVar) {
            this.f19823e = iVar;
            this.f19824f = lVar;
            this.f19825g = gVar;
        }

        private k a() {
            if (this.f19826h == null) {
                this.f19826h = new k(this.f19823e, 1, 19, k.b.a.v.j.NORMAL);
            }
            return this.f19826h;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        
            if (r0.hasNext() == false) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        
            r1 = r0.next();
            r2 = r1.getKey();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        
            if (r11.a(r2, 0, r12, r13, r2.length()) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        
            return r11.a(r10.f19823e, r1.getValue().longValue(), r13, r13 + r2.length());
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
        
            if (r11.f() == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        
            return r13 ^ (-1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x006b, code lost:
        
            return a().parse(r11, r12, r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        
            if (r0 != null) goto L11;
         */
        @Override // k.b.a.v.c.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parse(k.b.a.v.d r11, java.lang.CharSequence r12, int r13) {
            /*
                r10 = this;
                int r0 = r12.length()
                if (r13 < 0) goto L6c
                if (r13 > r0) goto L6c
                boolean r0 = r11.f()
                if (r0 == 0) goto L11
                k.b.a.v.l r0 = r10.f19824f
                goto L12
            L11:
                r0 = 0
            L12:
                k.b.a.v.g r1 = r10.f19825g
                k.b.a.x.i r2 = r10.f19823e
                java.util.Locale r3 = r11.c()
                java.util.Iterator r0 = r1.a(r2, r0, r3)
                if (r0 == 0) goto L63
            L20:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L5a
                java.lang.Object r1 = r0.next()
                java.util.Map$Entry r1 = (java.util.Map.Entry) r1
                java.lang.Object r2 = r1.getKey()
                java.lang.String r2 = (java.lang.String) r2
                r5 = 0
                int r8 = r2.length()
                r3 = r11
                r4 = r2
                r6 = r12
                r7 = r13
                boolean r3 = r3.a(r4, r5, r6, r7, r8)
                if (r3 == 0) goto L20
                k.b.a.x.i r5 = r10.f19823e
                java.lang.Object r12 = r1.getValue()
                java.lang.Long r12 = (java.lang.Long) r12
                long r6 = r12.longValue()
                int r12 = r2.length()
                int r9 = r13 + r12
                r4 = r11
                r8 = r13
                int r11 = r4.a(r5, r6, r8, r9)
                return r11
            L5a:
                boolean r0 = r11.f()
                if (r0 == 0) goto L63
                r11 = r13 ^ (-1)
                return r11
            L63:
                k.b.a.v.c$k r0 = r10.a()
                int r11 = r0.parse(r11, r12, r13)
                return r11
            L6c:
                java.lang.IndexOutOfBoundsException r11 = new java.lang.IndexOutOfBoundsException
                r11.<init>()
                goto L73
            L72:
                throw r11
            L73:
                goto L72
            */
            throw new UnsupportedOperationException("Method not decompiled: k.b.a.v.c.q.parse(k.b.a.v.d, java.lang.CharSequence, int):int");
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            Long a2 = fVar.a(this.f19823e);
            if (a2 == null) {
                return false;
            }
            String a3 = this.f19825g.a(this.f19823e, a2.longValue(), this.f19824f, fVar.b());
            if (a3 == null) {
                return a().print(fVar, sb);
            }
            sb.append(a3);
            return true;
        }

        public String toString() {
            if (this.f19824f == k.b.a.v.l.FULL) {
                return "Text(" + this.f19823e + ")";
            }
            return "Text(" + this.f19823e + "," + this.f19824f + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class s implements h {

        /* renamed from: f, reason: collision with root package name */
        private static final Comparator<String> f19833f = new a();

        /* renamed from: e, reason: collision with root package name */
        private final k.b.a.v.l f19834e;

        /* compiled from: DateTimeFormatterBuilder.java */
        /* loaded from: classes2.dex */
        class a implements Comparator<String> {
            a() {
            }

            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(String str, String str2) {
                int length = str2.length() - str.length();
                return length == 0 ? str.compareTo(str2) : length;
            }
        }

        s(k.b.a.v.l lVar) {
            k.b.a.w.d.a(lVar, "textStyle");
            this.f19834e = lVar;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            TreeMap treeMap = new TreeMap(f19833f);
            for (String str : k.b.a.q.getAvailableZoneIds()) {
                treeMap.put(str, str);
                TimeZone timeZone = TimeZone.getTimeZone(str);
                int i3 = this.f19834e.asNormal() == k.b.a.v.l.FULL ? 1 : 0;
                String displayName = timeZone.getDisplayName(false, i3, dVar.c());
                if (str.startsWith("Etc/") || (!displayName.startsWith("GMT+") && !displayName.startsWith("GMT+"))) {
                    treeMap.put(displayName, str);
                }
                String displayName2 = timeZone.getDisplayName(true, i3, dVar.c());
                if (str.startsWith("Etc/") || (!displayName2.startsWith("GMT+") && !displayName2.startsWith("GMT+"))) {
                    treeMap.put(displayName2, str);
                }
            }
            for (Map.Entry entry : treeMap.entrySet()) {
                String str2 = (String) entry.getKey();
                if (dVar.a(charSequence, i2, str2, 0, str2.length())) {
                    dVar.a(k.b.a.q.of((String) entry.getValue()));
                    return i2 + str2.length();
                }
            }
            return i2 ^ (-1);
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            k.b.a.q qVar = (k.b.a.q) fVar.a(k.b.a.x.j.g());
            if (qVar == null) {
                return false;
            }
            if (qVar.normalized() instanceof k.b.a.r) {
                sb.append(qVar.getId());
                return true;
            }
            k.b.a.x.e d2 = fVar.d();
            sb.append(TimeZone.getTimeZone(qVar.getId()).getDisplayName(d2.isSupported(k.b.a.x.a.INSTANT_SECONDS) ? qVar.getRules().isDaylightSavings(k.b.a.e.ofEpochSecond(d2.getLong(k.b.a.x.a.INSTANT_SECONDS))) : false, this.f19834e.asNormal() == k.b.a.v.l.FULL ? 1 : 0, fVar.b()));
            return true;
        }

        public String toString() {
            return "ZoneText(" + this.f19834e + ")";
        }
    }

    static {
        f19786i.put('G', k.b.a.x.a.ERA);
        f19786i.put('y', k.b.a.x.a.YEAR_OF_ERA);
        f19786i.put('u', k.b.a.x.a.YEAR);
        f19786i.put('Q', k.b.a.x.c.f19873a);
        f19786i.put('q', k.b.a.x.c.f19873a);
        f19786i.put('M', k.b.a.x.a.MONTH_OF_YEAR);
        f19786i.put('L', k.b.a.x.a.MONTH_OF_YEAR);
        f19786i.put('D', k.b.a.x.a.DAY_OF_YEAR);
        f19786i.put('d', k.b.a.x.a.DAY_OF_MONTH);
        f19786i.put('F', k.b.a.x.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        f19786i.put('E', k.b.a.x.a.DAY_OF_WEEK);
        f19786i.put('c', k.b.a.x.a.DAY_OF_WEEK);
        f19786i.put('e', k.b.a.x.a.DAY_OF_WEEK);
        f19786i.put('a', k.b.a.x.a.AMPM_OF_DAY);
        f19786i.put('H', k.b.a.x.a.HOUR_OF_DAY);
        f19786i.put('k', k.b.a.x.a.CLOCK_HOUR_OF_DAY);
        f19786i.put('K', k.b.a.x.a.HOUR_OF_AMPM);
        f19786i.put('h', k.b.a.x.a.CLOCK_HOUR_OF_AMPM);
        f19786i.put('m', k.b.a.x.a.MINUTE_OF_HOUR);
        f19786i.put('s', k.b.a.x.a.SECOND_OF_MINUTE);
        f19786i.put('S', k.b.a.x.a.NANO_OF_SECOND);
        f19786i.put('A', k.b.a.x.a.MILLI_OF_DAY);
        f19786i.put('n', k.b.a.x.a.NANO_OF_SECOND);
        f19786i.put('N', k.b.a.x.a.NANO_OF_DAY);
        f19787j = new C0255c();
    }

    public c() {
        this.f19788a = this;
        this.f19790c = new ArrayList();
        this.f19794g = -1;
        this.f19789b = null;
        this.f19791d = false;
    }

    public c a(k.b.a.x.i iVar, int i2) {
        k.b.a.w.d.a(iVar, "field");
        if (i2 >= 1 && i2 <= 19) {
            a(new k(iVar, i2, i2, k.b.a.v.j.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i2);
    }

    public c b() {
        a(l.f19813h);
        return this;
    }

    public c c() {
        a(new r(f19785h, "ZoneRegionId()"));
        return this;
    }

    public c d() {
        c cVar = this.f19788a;
        if (cVar.f19789b != null) {
            if (cVar.f19790c.size() > 0) {
                c cVar2 = this.f19788a;
                g gVar = new g(cVar2.f19790c, cVar2.f19791d);
                this.f19788a = this.f19788a.f19789b;
                a(gVar);
            } else {
                this.f19788a = this.f19788a.f19789b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    public c e() {
        c cVar = this.f19788a;
        cVar.f19794g = -1;
        this.f19788a = new c(cVar, true);
        return this;
    }

    public c f() {
        a(o.INSENSITIVE);
        return this;
    }

    public c g() {
        a(o.SENSITIVE);
        return this;
    }

    public c h() {
        a(o.LENIENT);
        return this;
    }

    public k.b.a.v.b i() {
        return a(Locale.getDefault());
    }

    public c b(k.b.a.v.l lVar) {
        a(new s(lVar));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class l implements h {

        /* renamed from: g, reason: collision with root package name */
        static final String[] f19812g = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

        /* renamed from: h, reason: collision with root package name */
        static final l f19813h = new l("Z", "+HH:MM:ss");

        /* renamed from: e, reason: collision with root package name */
        private final String f19814e;

        /* renamed from: f, reason: collision with root package name */
        private final int f19815f;

        l(String str, String str2) {
            k.b.a.w.d.a(str, "noOffsetText");
            k.b.a.w.d.a(str2, "pattern");
            this.f19814e = str;
            this.f19815f = a(str2);
        }

        private int a(String str) {
            int i2 = 0;
            while (true) {
                String[] strArr = f19812g;
                if (i2 < strArr.length) {
                    if (strArr[i2].equals(str)) {
                        return i2;
                    }
                    i2++;
                } else {
                    throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
        @Override // k.b.a.v.c.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parse(k.b.a.v.d r15, java.lang.CharSequence r16, int r17) {
            /*
                r14 = this;
                r0 = r14
                r7 = r16
                r8 = r17
                int r1 = r16.length()
                java.lang.String r2 = r0.f19814e
                int r9 = r2.length()
                r10 = -1
                if (r9 != 0) goto L22
                if (r8 != r1) goto L44
                k.b.a.x.a r2 = k.b.a.x.a.OFFSET_SECONDS
                r3 = 0
                r1 = r15
                r5 = r17
                r6 = r17
                int r1 = r1.a(r2, r3, r5, r6)
                return r1
            L22:
                if (r8 != r1) goto L27
                r1 = r8 ^ (-1)
                return r1
            L27:
                java.lang.String r4 = r0.f19814e
                r5 = 0
                r1 = r15
                r2 = r16
                r3 = r17
                r6 = r9
                boolean r1 = r1.a(r2, r3, r4, r5, r6)
                if (r1 == 0) goto L44
                k.b.a.x.a r2 = k.b.a.x.a.OFFSET_SECONDS
                r3 = 0
                int r6 = r8 + r9
                r1 = r15
                r5 = r17
                int r1 = r1.a(r2, r3, r5, r6)
                return r1
            L44:
                char r1 = r16.charAt(r17)
                r2 = 43
                r3 = 45
                if (r1 == r2) goto L50
                if (r1 != r3) goto La3
            L50:
                r2 = 1
                if (r1 != r3) goto L55
                r1 = -1
                goto L56
            L55:
                r1 = 1
            L56:
                r3 = 4
                int[] r3 = new int[r3]
                int r4 = r8 + 1
                r5 = 0
                r3[r5] = r4
                boolean r4 = r14.a(r3, r2, r7, r2)
                r6 = 2
                r11 = 3
                if (r4 != 0) goto L7c
                int r4 = r0.f19815f
                if (r4 < r11) goto L6c
                r4 = 1
                goto L6d
            L6c:
                r4 = 0
            L6d:
                boolean r4 = r14.a(r3, r6, r7, r4)
                if (r4 != 0) goto L7c
                boolean r4 = r14.a(r3, r11, r7, r5)
                if (r4 == 0) goto L7a
                goto L7c
            L7a:
                r4 = 0
                goto L7d
            L7c:
                r4 = 1
            L7d:
                if (r4 != 0) goto La3
                long r9 = (long) r1
                r1 = r3[r2]
                long r1 = (long) r1
                r12 = 3600(0xe10, double:1.7786E-320)
                long r1 = r1 * r12
                r4 = r3[r6]
                long r6 = (long) r4
                r12 = 60
                long r6 = r6 * r12
                long r1 = r1 + r6
                r4 = r3[r11]
                long r6 = (long) r4
                long r1 = r1 + r6
                long r6 = r9 * r1
                k.b.a.x.a r2 = k.b.a.x.a.OFFSET_SECONDS
                r9 = r3[r5]
                r1 = r15
                r3 = r6
                r5 = r17
                r6 = r9
                int r1 = r1.a(r2, r3, r5, r6)
                return r1
            La3:
                if (r9 != 0) goto Lb3
                k.b.a.x.a r2 = k.b.a.x.a.OFFSET_SECONDS
                r3 = 0
                int r6 = r8 + r9
                r1 = r15
                r5 = r17
                int r1 = r1.a(r2, r3, r5, r6)
                return r1
            Lb3:
                r1 = r8 ^ (-1)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: k.b.a.v.c.l.parse(k.b.a.v.d, java.lang.CharSequence, int):int");
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            Long a2 = fVar.a(k.b.a.x.a.OFFSET_SECONDS);
            if (a2 == null) {
                return false;
            }
            int a3 = k.b.a.w.d.a(a2.longValue());
            if (a3 == 0) {
                sb.append(this.f19814e);
            } else {
                int abs = Math.abs((a3 / 3600) % 100);
                int abs2 = Math.abs((a3 / 60) % 60);
                int abs3 = Math.abs(a3 % 60);
                int length = sb.length();
                sb.append(a3 < 0 ? "-" : "+");
                sb.append((char) ((abs / 10) + 48));
                sb.append((char) ((abs % 10) + 48));
                int i2 = this.f19815f;
                if (i2 >= 3 || (i2 >= 1 && abs2 > 0)) {
                    sb.append(this.f19815f % 2 == 0 ? ":" : "");
                    sb.append((char) ((abs2 / 10) + 48));
                    sb.append((char) ((abs2 % 10) + 48));
                    abs += abs2;
                    int i3 = this.f19815f;
                    if (i3 >= 7 || (i3 >= 5 && abs3 > 0)) {
                        sb.append(this.f19815f % 2 != 0 ? "" : ":");
                        sb.append((char) ((abs3 / 10) + 48));
                        sb.append((char) ((abs3 % 10) + 48));
                        abs += abs3;
                    }
                }
                if (abs == 0) {
                    sb.setLength(length);
                    sb.append(this.f19814e);
                }
            }
            return true;
        }

        public String toString() {
            return "Offset(" + f19812g[this.f19815f] + ",'" + this.f19814e.replace("'", "''") + "')";
        }

        private boolean a(int[] iArr, int i2, CharSequence charSequence, boolean z) {
            int i3;
            int i4;
            int i5 = this.f19815f;
            if ((i5 + 3) / 2 < i2) {
                return false;
            }
            int i6 = iArr[0];
            if (i5 % 2 != 0 || i2 <= 1) {
                i3 = i6;
            } else {
                i3 = i6 + 1;
                if (i3 > charSequence.length() || charSequence.charAt(i6) != ':') {
                    return z;
                }
            }
            if (i3 + 2 > charSequence.length()) {
                return z;
            }
            int i7 = i3 + 1;
            char charAt = charSequence.charAt(i3);
            int i8 = i7 + 1;
            char charAt2 = charSequence.charAt(i7);
            if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9' || (i4 = ((charAt - '0') * 10) + (charAt2 - '0')) < 0 || i4 > 59) {
                return z;
            }
            iArr[i2] = i4;
            iArr[0] = i8;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class r implements h {

        /* renamed from: g, reason: collision with root package name */
        private static volatile Map.Entry<Integer, a> f19827g;

        /* renamed from: e, reason: collision with root package name */
        private final k.b.a.x.k<k.b.a.q> f19828e;

        /* renamed from: f, reason: collision with root package name */
        private final String f19829f;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DateTimeFormatterBuilder.java */
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            final int f19830a;

            /* renamed from: b, reason: collision with root package name */
            private final Map<CharSequence, a> f19831b;

            /* renamed from: c, reason: collision with root package name */
            private final Map<String, a> f19832c;

            /* synthetic */ a(int i2, a aVar) {
                this(i2);
            }

            private a(int i2) {
                this.f19831b = new HashMap();
                this.f19832c = new HashMap();
                this.f19830a = i2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public a a(CharSequence charSequence, boolean z) {
                if (z) {
                    return this.f19831b.get(charSequence);
                }
                return this.f19832c.get(charSequence.toString().toLowerCase(Locale.ENGLISH));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(String str) {
                int length = str.length();
                int i2 = this.f19830a;
                if (length == i2) {
                    this.f19831b.put(str, null);
                    this.f19832c.put(str.toLowerCase(Locale.ENGLISH), null);
                } else if (length > i2) {
                    String substring = str.substring(0, i2);
                    a aVar = this.f19831b.get(substring);
                    if (aVar == null) {
                        aVar = new a(length);
                        this.f19831b.put(substring, aVar);
                        this.f19832c.put(substring.toLowerCase(Locale.ENGLISH), aVar);
                    }
                    aVar.a(str);
                }
            }
        }

        r(k.b.a.x.k<k.b.a.q> kVar, String str) {
            this.f19828e = kVar;
            this.f19829f = str;
        }

        private k.b.a.q a(Set<String> set, String str, boolean z) {
            if (str == null) {
                return null;
            }
            if (z) {
                if (set.contains(str)) {
                    return k.b.a.q.of(str);
                }
                return null;
            }
            for (String str2 : set) {
                if (str2.equalsIgnoreCase(str)) {
                    return k.b.a.q.of(str2);
                }
            }
            return null;
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            int i3;
            int length = charSequence.length();
            if (i2 > length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == length) {
                return i2 ^ (-1);
            }
            char charAt = charSequence.charAt(i2);
            if (charAt != '+' && charAt != '-') {
                int i4 = i2 + 2;
                if (length >= i4) {
                    char charAt2 = charSequence.charAt(i2 + 1);
                    if (dVar.a(charAt, 'U') && dVar.a(charAt2, 'T')) {
                        int i5 = i2 + 3;
                        if (length >= i5 && dVar.a(charSequence.charAt(i4), 'C')) {
                            return a(dVar, charSequence, i2, i5);
                        }
                        return a(dVar, charSequence, i2, i4);
                    }
                    if (dVar.a(charAt, 'G') && length >= (i3 = i2 + 3) && dVar.a(charAt2, 'M') && dVar.a(charSequence.charAt(i4), 'T')) {
                        return a(dVar, charSequence, i2, i3);
                    }
                }
                Set<String> b2 = k.b.a.y.i.b();
                int size = b2.size();
                Map.Entry<Integer, a> entry = f19827g;
                if (entry == null || entry.getKey().intValue() != size) {
                    synchronized (this) {
                        entry = f19827g;
                        if (entry == null || entry.getKey().intValue() != size) {
                            entry = new AbstractMap.SimpleImmutableEntry<>(Integer.valueOf(size), a(b2));
                            f19827g = entry;
                        }
                    }
                }
                a value = entry.getValue();
                String str = null;
                String str2 = null;
                while (value != null) {
                    int i6 = value.f19830a + i2;
                    if (i6 > length) {
                        break;
                    }
                    String charSequence2 = charSequence.subSequence(i2, i6).toString();
                    value = value.a(charSequence2, dVar.e());
                    str2 = str;
                    str = charSequence2;
                }
                k.b.a.q a2 = a(b2, str, dVar.e());
                if (a2 == null) {
                    a2 = a(b2, str2, dVar.e());
                    if (a2 == null) {
                        if (!dVar.a(charAt, 'Z')) {
                            return i2 ^ (-1);
                        }
                        dVar.a(k.b.a.r.UTC);
                        return i2 + 1;
                    }
                    str = str2;
                }
                dVar.a(a2);
                return i2 + str.length();
            }
            k.b.a.v.d a3 = dVar.a();
            int parse = l.f19813h.parse(a3, charSequence, i2);
            if (parse < 0) {
                return parse;
            }
            dVar.a(k.b.a.r.ofTotalSeconds((int) a3.a(k.b.a.x.a.OFFSET_SECONDS).longValue()));
            return parse;
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            k.b.a.q qVar = (k.b.a.q) fVar.a(this.f19828e);
            if (qVar == null) {
                return false;
            }
            sb.append(qVar.getId());
            return true;
        }

        public String toString() {
            return this.f19829f;
        }

        private int a(k.b.a.v.d dVar, CharSequence charSequence, int i2, int i3) {
            String upperCase = charSequence.subSequence(i2, i3).toString().toUpperCase();
            k.b.a.v.d a2 = dVar.a();
            if (i3 < charSequence.length() && dVar.a(charSequence.charAt(i3), 'Z')) {
                dVar.a(k.b.a.q.ofOffset(upperCase, k.b.a.r.UTC));
                return i3;
            }
            int parse = l.f19813h.parse(a2, charSequence, i3);
            if (parse < 0) {
                dVar.a(k.b.a.q.ofOffset(upperCase, k.b.a.r.UTC));
                return i3;
            }
            dVar.a(k.b.a.q.ofOffset(upperCase, k.b.a.r.ofTotalSeconds((int) a2.a(k.b.a.x.a.OFFSET_SECONDS).longValue())));
            return parse;
        }

        private static a a(Set<String> set) {
            ArrayList arrayList = new ArrayList(set);
            Collections.sort(arrayList, c.f19787j);
            a aVar = new a(((String) arrayList.get(0)).length(), null);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                aVar.a((String) it.next());
            }
            return aVar;
        }
    }

    public c a(k.b.a.x.i iVar, int i2, int i3, k.b.a.v.j jVar) {
        if (i2 == i3 && jVar == k.b.a.v.j.NOT_NEGATIVE) {
            a(iVar, i3);
            return this;
        }
        k.b.a.w.d.a(iVar, "field");
        k.b.a.w.d.a(jVar, "signStyle");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i3 < 1 || i3 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i3);
        }
        if (i3 >= i2) {
            a(new k(iVar, i2, i3, jVar));
            return this;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateTimeFormatterBuilder.java */
    /* loaded from: classes2.dex */
    public static final class i implements h {

        /* renamed from: e, reason: collision with root package name */
        private final k.b.a.x.i f19801e;

        /* renamed from: f, reason: collision with root package name */
        private final int f19802f;

        /* renamed from: g, reason: collision with root package name */
        private final int f19803g;

        /* renamed from: h, reason: collision with root package name */
        private final boolean f19804h;

        i(k.b.a.x.i iVar, int i2, int i3, boolean z) {
            k.b.a.w.d.a(iVar, "field");
            if (!iVar.range().isFixed()) {
                throw new IllegalArgumentException("Field must have a fixed set of values: " + iVar);
            }
            if (i2 < 0 || i2 > 9) {
                throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i2);
            }
            if (i3 < 1 || i3 > 9) {
                throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i3);
            }
            if (i3 >= i2) {
                this.f19801e = iVar;
                this.f19802f = i2;
                this.f19803g = i3;
                this.f19804h = z;
                return;
            }
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
        }

        private BigDecimal a(long j2) {
            k.b.a.x.n range = this.f19801e.range();
            range.checkValidValue(j2, this.f19801e);
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            BigDecimal divide = BigDecimal.valueOf(j2).subtract(valueOf).divide(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
            return divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        }

        @Override // k.b.a.v.c.h
        public int parse(k.b.a.v.d dVar, CharSequence charSequence, int i2) {
            int i3;
            int i4 = dVar.f() ? this.f19802f : 0;
            int i5 = dVar.f() ? this.f19803g : 9;
            int length = charSequence.length();
            if (i2 == length) {
                return i4 > 0 ? i2 ^ (-1) : i2;
            }
            if (this.f19804h) {
                if (charSequence.charAt(i2) != dVar.d().a()) {
                    return i4 > 0 ? i2 ^ (-1) : i2;
                }
                i2++;
            }
            int i6 = i2;
            int i7 = i4 + i6;
            if (i7 > length) {
                return i6 ^ (-1);
            }
            int min = Math.min(i5 + i6, length);
            int i8 = i6;
            int i9 = 0;
            while (true) {
                if (i8 >= min) {
                    i3 = i8;
                    break;
                }
                int i10 = i8 + 1;
                int a2 = dVar.d().a(charSequence.charAt(i8));
                if (a2 >= 0) {
                    i9 = (i9 * 10) + a2;
                    i8 = i10;
                } else {
                    if (i10 < i7) {
                        return i6 ^ (-1);
                    }
                    i3 = i10 - 1;
                }
            }
            return dVar.a(this.f19801e, a(new BigDecimal(i9).movePointLeft(i3 - i6)), i6, i3);
        }

        @Override // k.b.a.v.c.h
        public boolean print(k.b.a.v.f fVar, StringBuilder sb) {
            Long a2 = fVar.a(this.f19801e);
            if (a2 == null) {
                return false;
            }
            k.b.a.v.h c2 = fVar.c();
            BigDecimal a3 = a(a2.longValue());
            if (a3.scale() == 0) {
                if (this.f19802f <= 0) {
                    return true;
                }
                if (this.f19804h) {
                    sb.append(c2.a());
                }
                for (int i2 = 0; i2 < this.f19802f; i2++) {
                    sb.append(c2.d());
                }
                return true;
            }
            String a4 = c2.a(a3.setScale(Math.min(Math.max(a3.scale(), this.f19802f), this.f19803g), RoundingMode.FLOOR).toPlainString().substring(2));
            if (this.f19804h) {
                sb.append(c2.a());
            }
            sb.append(a4);
            return true;
        }

        public String toString() {
            return "Fraction(" + this.f19801e + "," + this.f19802f + "," + this.f19803g + (this.f19804h ? ",DecimalPoint" : "") + ")";
        }

        private long a(BigDecimal bigDecimal) {
            k.b.a.x.n range = this.f19801e.range();
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            return bigDecimal.multiply(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact();
        }
    }

    private c(c cVar, boolean z) {
        this.f19788a = this;
        this.f19790c = new ArrayList();
        this.f19794g = -1;
        this.f19789b = cVar;
        this.f19791d = z;
    }

    private c a(k kVar) {
        k a2;
        c cVar = this.f19788a;
        int i2 = cVar.f19794g;
        if (i2 >= 0 && (cVar.f19790c.get(i2) instanceof k)) {
            c cVar2 = this.f19788a;
            int i3 = cVar2.f19794g;
            k kVar2 = (k) cVar2.f19790c.get(i3);
            int i4 = kVar.f19808f;
            int i5 = kVar.f19809g;
            if (i4 == i5 && kVar.f19810h == k.b.a.v.j.NOT_NEGATIVE) {
                a2 = kVar2.a(i5);
                a((h) kVar.a());
                this.f19788a.f19794g = i3;
            } else {
                a2 = kVar2.a();
                this.f19788a.f19794g = a((h) kVar);
            }
            this.f19788a.f19790c.set(i3, a2);
        } else {
            this.f19788a.f19794g = a((h) kVar);
        }
        return this;
    }

    public c a(k.b.a.x.i iVar, int i2, int i3, boolean z) {
        a(new i(iVar, i2, i3, z));
        return this;
    }

    public c a(k.b.a.x.i iVar, k.b.a.v.l lVar) {
        k.b.a.w.d.a(iVar, "field");
        k.b.a.w.d.a(lVar, "textStyle");
        a(new q(iVar, lVar, k.b.a.v.g.b()));
        return this;
    }

    public c a(k.b.a.x.i iVar, Map<Long, String> map) {
        k.b.a.w.d.a(iVar, "field");
        k.b.a.w.d.a(map, "textLookup");
        a(new q(iVar, k.b.a.v.l.FULL, new b(this, new k.b(Collections.singletonMap(k.b.a.v.l.FULL, new LinkedHashMap(map))))));
        return this;
    }

    public c a() {
        a(new j(-2));
        return this;
    }

    public c a(String str, String str2) {
        a(new l(str2, str));
        return this;
    }

    public c a(k.b.a.v.l lVar) {
        k.b.a.w.d.a(lVar, "textStyle");
        a(new f(lVar));
        return this;
    }

    public c a(char c2) {
        a(new e(c2));
        return this;
    }

    public c a(String str) {
        k.b.a.w.d.a(str, "literal");
        if (str.length() > 0) {
            if (str.length() == 1) {
                a(new e(str.charAt(0)));
            } else {
                a(new p(str));
            }
        }
        return this;
    }

    public c a(k.b.a.v.b bVar) {
        k.b.a.w.d.a(bVar, "formatter");
        a(bVar.a(false));
        return this;
    }

    private int a(h hVar) {
        k.b.a.w.d.a(hVar, "pp");
        c cVar = this.f19788a;
        int i2 = cVar.f19792e;
        if (i2 > 0) {
            if (hVar != null) {
                hVar = new m(hVar, i2, cVar.f19793f);
            }
            c cVar2 = this.f19788a;
            cVar2.f19792e = 0;
            cVar2.f19793f = (char) 0;
        }
        this.f19788a.f19790c.add(hVar);
        this.f19788a.f19794g = -1;
        return r4.f19790c.size() - 1;
    }

    public k.b.a.v.b a(Locale locale) {
        k.b.a.w.d.a(locale, ZIMFacade.KEY_LOCALE);
        while (this.f19788a.f19789b != null) {
            d();
        }
        return new k.b.a.v.b(new g(this.f19790c, false), locale, k.b.a.v.h.f19859e, k.b.a.v.i.SMART, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.b.a.v.b a(k.b.a.v.i iVar) {
        return i().a(iVar);
    }
}
