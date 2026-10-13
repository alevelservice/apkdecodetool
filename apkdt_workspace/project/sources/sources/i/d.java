package i;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: CacheControl.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f18414a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f18415b;

    /* renamed from: c, reason: collision with root package name */
    private final int f18416c;

    /* renamed from: d, reason: collision with root package name */
    private final int f18417d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f18418e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f18419f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f18420g;

    /* renamed from: h, reason: collision with root package name */
    private final int f18421h;

    /* renamed from: i, reason: collision with root package name */
    private final int f18422i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f18423j;

    /* renamed from: k, reason: collision with root package name */
    private final boolean f18424k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f18425l;

    @Nullable
    String m;

    static {
        a aVar = new a();
        aVar.b();
        aVar.a();
        a aVar2 = new a();
        aVar2.c();
        aVar2.a(Integer.MAX_VALUE, TimeUnit.SECONDS);
        aVar2.a();
    }

    private d(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f18414a = z;
        this.f18415b = z2;
        this.f18416c = i2;
        this.f18417d = i3;
        this.f18418e = z3;
        this.f18419f = z4;
        this.f18420g = z5;
        this.f18421h = i4;
        this.f18422i = i5;
        this.f18423j = z6;
        this.f18424k = z7;
        this.f18425l = z8;
        this.m = str;
    }

    private String j() {
        StringBuilder sb = new StringBuilder();
        if (this.f18414a) {
            sb.append("no-cache, ");
        }
        if (this.f18415b) {
            sb.append("no-store, ");
        }
        if (this.f18416c != -1) {
            sb.append("max-age=");
            sb.append(this.f18416c);
            sb.append(", ");
        }
        if (this.f18417d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f18417d);
            sb.append(", ");
        }
        if (this.f18418e) {
            sb.append("private, ");
        }
        if (this.f18419f) {
            sb.append("public, ");
        }
        if (this.f18420g) {
            sb.append("must-revalidate, ");
        }
        if (this.f18421h != -1) {
            sb.append("max-stale=");
            sb.append(this.f18421h);
            sb.append(", ");
        }
        if (this.f18422i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f18422i);
            sb.append(", ");
        }
        if (this.f18423j) {
            sb.append("only-if-cached, ");
        }
        if (this.f18424k) {
            sb.append("no-transform, ");
        }
        if (this.f18425l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public boolean a() {
        return this.f18418e;
    }

    public boolean b() {
        return this.f18419f;
    }

    public int c() {
        return this.f18416c;
    }

    public int d() {
        return this.f18421h;
    }

    public int e() {
        return this.f18422i;
    }

    public boolean f() {
        return this.f18420g;
    }

    public boolean g() {
        return this.f18414a;
    }

    public boolean h() {
        return this.f18415b;
    }

    public boolean i() {
        return this.f18423j;
    }

    public String toString() {
        String str = this.m;
        if (str != null) {
            return str;
        }
        String j2 = j();
        this.m = j2;
        return j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static i.d a(i.r r22) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.d.a(i.r):i.d");
    }

    /* compiled from: CacheControl.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f18426a;

        /* renamed from: b, reason: collision with root package name */
        boolean f18427b;

        /* renamed from: c, reason: collision with root package name */
        int f18428c = -1;

        /* renamed from: d, reason: collision with root package name */
        int f18429d = -1;

        /* renamed from: e, reason: collision with root package name */
        int f18430e = -1;

        /* renamed from: f, reason: collision with root package name */
        boolean f18431f;

        /* renamed from: g, reason: collision with root package name */
        boolean f18432g;

        /* renamed from: h, reason: collision with root package name */
        boolean f18433h;

        public a a(int i2, TimeUnit timeUnit) {
            if (i2 >= 0) {
                long seconds = timeUnit.toSeconds(i2);
                this.f18429d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i2);
        }

        public a b() {
            this.f18426a = true;
            return this;
        }

        public a c() {
            this.f18431f = true;
            return this;
        }

        public d a() {
            return new d(this);
        }
    }

    d(a aVar) {
        this.f18414a = aVar.f18426a;
        this.f18415b = aVar.f18427b;
        this.f18416c = aVar.f18428c;
        this.f18417d = -1;
        this.f18418e = false;
        this.f18419f = false;
        this.f18420g = false;
        this.f18421h = aVar.f18429d;
        this.f18422i = aVar.f18430e;
        this.f18423j = aVar.f18431f;
        this.f18424k = aVar.f18432g;
        this.f18425l = aVar.f18433h;
    }
}
