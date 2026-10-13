package k.b.a.v;

import com.alipay.mobile.security.zim.api.ZIMFacade;
import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Set;
import k.b.a.m;
import k.b.a.q;
import k.b.a.u.n;
import k.b.a.v.c;
import k.b.a.v.d;

/* compiled from: DateTimeFormatter.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: h, reason: collision with root package name */
    public static final b f19773h;

    /* renamed from: i, reason: collision with root package name */
    public static final b f19774i;

    /* renamed from: j, reason: collision with root package name */
    public static final b f19775j;

    /* renamed from: k, reason: collision with root package name */
    public static final b f19776k;

    /* renamed from: l, reason: collision with root package name */
    public static final b f19777l;
    public static final b m;
    public static final b n;

    /* renamed from: a, reason: collision with root package name */
    private final c.g f19778a;

    /* renamed from: b, reason: collision with root package name */
    private final Locale f19779b;

    /* renamed from: c, reason: collision with root package name */
    private final h f19780c;

    /* renamed from: d, reason: collision with root package name */
    private final i f19781d;

    /* renamed from: e, reason: collision with root package name */
    private final Set<k.b.a.x.i> f19782e;

    /* renamed from: f, reason: collision with root package name */
    private final k.b.a.u.i f19783f;

    /* renamed from: g, reason: collision with root package name */
    private final q f19784g;

    /* compiled from: DateTimeFormatter.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<m> {
        a() {
        }

        @Override // k.b.a.x.k
        public m a(k.b.a.x.e eVar) {
            if (eVar instanceof k.b.a.v.a) {
                return ((k.b.a.v.a) eVar).f19772k;
            }
            return m.ZERO;
        }
    }

    /* compiled from: DateTimeFormatter.java */
    /* renamed from: k.b.a.v.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0254b implements k.b.a.x.k<Boolean> {
        C0254b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // k.b.a.x.k
        public Boolean a(k.b.a.x.e eVar) {
            if (eVar instanceof k.b.a.v.a) {
                return Boolean.valueOf(((k.b.a.v.a) eVar).f19771j);
            }
            return Boolean.FALSE;
        }
    }

    static {
        c cVar = new c();
        cVar.a(k.b.a.x.a.YEAR, 4, 10, j.EXCEEDS_PAD);
        cVar.a('-');
        cVar.a(k.b.a.x.a.MONTH_OF_YEAR, 2);
        cVar.a('-');
        cVar.a(k.b.a.x.a.DAY_OF_MONTH, 2);
        f19773h = cVar.a(i.STRICT).a(n.INSTANCE);
        c cVar2 = new c();
        cVar2.f();
        cVar2.a(f19773h);
        cVar2.b();
        cVar2.a(i.STRICT).a(n.INSTANCE);
        c cVar3 = new c();
        cVar3.f();
        cVar3.a(f19773h);
        cVar3.e();
        cVar3.b();
        cVar3.a(i.STRICT).a(n.INSTANCE);
        c cVar4 = new c();
        cVar4.a(k.b.a.x.a.HOUR_OF_DAY, 2);
        cVar4.a(':');
        cVar4.a(k.b.a.x.a.MINUTE_OF_HOUR, 2);
        cVar4.e();
        cVar4.a(':');
        cVar4.a(k.b.a.x.a.SECOND_OF_MINUTE, 2);
        cVar4.e();
        cVar4.a((k.b.a.x.i) k.b.a.x.a.NANO_OF_SECOND, 0, 9, true);
        f19774i = cVar4.a(i.STRICT);
        c cVar5 = new c();
        cVar5.f();
        cVar5.a(f19774i);
        cVar5.b();
        f19775j = cVar5.a(i.STRICT);
        c cVar6 = new c();
        cVar6.f();
        cVar6.a(f19774i);
        cVar6.e();
        cVar6.b();
        cVar6.a(i.STRICT);
        c cVar7 = new c();
        cVar7.f();
        cVar7.a(f19773h);
        cVar7.a('T');
        cVar7.a(f19774i);
        f19776k = cVar7.a(i.STRICT).a(n.INSTANCE);
        c cVar8 = new c();
        cVar8.f();
        cVar8.a(f19776k);
        cVar8.b();
        f19777l = cVar8.a(i.STRICT).a(n.INSTANCE);
        c cVar9 = new c();
        cVar9.a(f19777l);
        cVar9.e();
        cVar9.a('[');
        cVar9.g();
        cVar9.c();
        cVar9.a(']');
        m = cVar9.a(i.STRICT).a(n.INSTANCE);
        c cVar10 = new c();
        cVar10.a(f19776k);
        cVar10.e();
        cVar10.b();
        cVar10.e();
        cVar10.a('[');
        cVar10.g();
        cVar10.c();
        cVar10.a(']');
        cVar10.a(i.STRICT).a(n.INSTANCE);
        c cVar11 = new c();
        cVar11.f();
        cVar11.a(k.b.a.x.a.YEAR, 4, 10, j.EXCEEDS_PAD);
        cVar11.a('-');
        cVar11.a(k.b.a.x.a.DAY_OF_YEAR, 3);
        cVar11.e();
        cVar11.b();
        cVar11.a(i.STRICT).a(n.INSTANCE);
        c cVar12 = new c();
        cVar12.f();
        cVar12.a(k.b.a.x.c.f19875c, 4, 10, j.EXCEEDS_PAD);
        cVar12.a("-W");
        cVar12.a(k.b.a.x.c.f19874b, 2);
        cVar12.a('-');
        cVar12.a(k.b.a.x.a.DAY_OF_WEEK, 1);
        cVar12.e();
        cVar12.b();
        cVar12.a(i.STRICT).a(n.INSTANCE);
        c cVar13 = new c();
        cVar13.f();
        cVar13.a();
        n = cVar13.a(i.STRICT);
        c cVar14 = new c();
        cVar14.f();
        cVar14.a(k.b.a.x.a.YEAR, 4);
        cVar14.a(k.b.a.x.a.MONTH_OF_YEAR, 2);
        cVar14.a(k.b.a.x.a.DAY_OF_MONTH, 2);
        cVar14.e();
        cVar14.a("+HHMMss", "Z");
        cVar14.a(i.STRICT).a(n.INSTANCE);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        c cVar15 = new c();
        cVar15.f();
        cVar15.h();
        cVar15.e();
        cVar15.a(k.b.a.x.a.DAY_OF_WEEK, hashMap);
        cVar15.a(", ");
        cVar15.d();
        cVar15.a(k.b.a.x.a.DAY_OF_MONTH, 1, 2, j.NOT_NEGATIVE);
        cVar15.a(' ');
        cVar15.a(k.b.a.x.a.MONTH_OF_YEAR, hashMap2);
        cVar15.a(' ');
        cVar15.a(k.b.a.x.a.YEAR, 4);
        cVar15.a(' ');
        cVar15.a(k.b.a.x.a.HOUR_OF_DAY, 2);
        cVar15.a(':');
        cVar15.a(k.b.a.x.a.MINUTE_OF_HOUR, 2);
        cVar15.e();
        cVar15.a(':');
        cVar15.a(k.b.a.x.a.SECOND_OF_MINUTE, 2);
        cVar15.d();
        cVar15.a(' ');
        cVar15.a("+HHMM", "GMT");
        cVar15.a(i.SMART).a(n.INSTANCE);
        new a();
        new C0254b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c.g gVar, Locale locale, h hVar, i iVar, Set<k.b.a.x.i> set, k.b.a.u.i iVar2, q qVar) {
        k.b.a.w.d.a(gVar, "printerParser");
        this.f19778a = gVar;
        k.b.a.w.d.a(locale, ZIMFacade.KEY_LOCALE);
        this.f19779b = locale;
        k.b.a.w.d.a(hVar, "decimalStyle");
        this.f19780c = hVar;
        k.b.a.w.d.a(iVar, "resolverStyle");
        this.f19781d = iVar;
        this.f19782e = set;
        this.f19783f = iVar2;
        this.f19784g = qVar;
    }

    public k.b.a.u.i a() {
        return this.f19783f;
    }

    public h b() {
        return this.f19780c;
    }

    public Locale c() {
        return this.f19779b;
    }

    public q d() {
        return this.f19784g;
    }

    public String toString() {
        String gVar = this.f19778a.toString();
        return gVar.startsWith("[") ? gVar : gVar.substring(1, gVar.length() - 1);
    }

    private d.b b(CharSequence charSequence, ParsePosition parsePosition) {
        k.b.a.w.d.a(charSequence, "text");
        k.b.a.w.d.a(parsePosition, "position");
        d dVar = new d(this);
        int parse = this.f19778a.parse(dVar, charSequence, parsePosition.getIndex());
        if (parse < 0) {
            parsePosition.setErrorIndex(parse ^ (-1));
            return null;
        }
        parsePosition.setIndex(parse);
        return dVar.i();
    }

    public b a(k.b.a.u.i iVar) {
        return k.b.a.w.d.a(this.f19783f, iVar) ? this : new b(this.f19778a, this.f19779b, this.f19780c, this.f19781d, this.f19782e, iVar, this.f19784g);
    }

    public b a(i iVar) {
        k.b.a.w.d.a(iVar, "resolverStyle");
        return k.b.a.w.d.a(this.f19781d, iVar) ? this : new b(this.f19778a, this.f19779b, this.f19780c, iVar, this.f19782e, this.f19783f, this.f19784g);
    }

    public String a(k.b.a.x.e eVar) {
        StringBuilder sb = new StringBuilder(32);
        a(eVar, sb);
        return sb.toString();
    }

    public void a(k.b.a.x.e eVar, Appendable appendable) {
        k.b.a.w.d.a(eVar, "temporal");
        k.b.a.w.d.a(appendable, "appendable");
        try {
            f fVar = new f(eVar, this);
            if (appendable instanceof StringBuilder) {
                this.f19778a.print(fVar, (StringBuilder) appendable);
                return;
            }
            StringBuilder sb = new StringBuilder(32);
            this.f19778a.print(fVar, sb);
            appendable.append(sb);
        } catch (IOException e2) {
            throw new k.b.a.b(e2.getMessage(), e2);
        }
    }

    public <T> T a(CharSequence charSequence, k.b.a.x.k<T> kVar) {
        k.b.a.w.d.a(charSequence, "text");
        k.b.a.w.d.a(kVar, "type");
        try {
            k.b.a.v.a a2 = a(charSequence, (ParsePosition) null);
            a2.a(this.f19781d, this.f19782e);
            return (T) a2.a(kVar);
        } catch (e e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw a(charSequence, e3);
        }
    }

    private e a(CharSequence charSequence, RuntimeException runtimeException) {
        String charSequence2;
        if (charSequence.length() > 64) {
            charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            charSequence2 = charSequence.toString();
        }
        return new e("Text '" + charSequence2 + "' could not be parsed: " + runtimeException.getMessage(), charSequence, 0, runtimeException);
    }

    private k.b.a.v.a a(CharSequence charSequence, ParsePosition parsePosition) {
        String charSequence2;
        ParsePosition parsePosition2 = parsePosition != null ? parsePosition : new ParsePosition(0);
        d.b b2 = b(charSequence, parsePosition2);
        if (b2 != null && parsePosition2.getErrorIndex() < 0 && (parsePosition != null || parsePosition2.getIndex() >= charSequence.length())) {
            return b2.b();
        }
        if (charSequence.length() > 64) {
            charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            charSequence2 = charSequence.toString();
        }
        if (parsePosition2.getErrorIndex() >= 0) {
            throw new e("Text '" + charSequence2 + "' could not be parsed at index " + parsePosition2.getErrorIndex(), charSequence, parsePosition2.getErrorIndex());
        }
        throw new e("Text '" + charSequence2 + "' could not be parsed, unparsed text found at index " + parsePosition2.getIndex(), charSequence, parsePosition2.getIndex());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c.g a(boolean z) {
        return this.f19778a.a(z);
    }
}
