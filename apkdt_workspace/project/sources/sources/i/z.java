package i;

import i.r;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: Request.java */
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    final s f18847a;

    /* renamed from: b, reason: collision with root package name */
    final String f18848b;

    /* renamed from: c, reason: collision with root package name */
    final r f18849c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    final a0 f18850d;

    /* renamed from: e, reason: collision with root package name */
    final Map<Class<?>, Object> f18851e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private volatile d f18852f;

    z(a aVar) {
        this.f18847a = aVar.f18853a;
        this.f18848b = aVar.f18854b;
        this.f18849c = aVar.f18855c.a();
        this.f18850d = aVar.f18856d;
        this.f18851e = i.g0.c.a(aVar.f18857e);
    }

    @Nullable
    public String a(String str) {
        return this.f18849c.a(str);
    }

    public d b() {
        d dVar = this.f18852f;
        if (dVar != null) {
            return dVar;
        }
        d a2 = d.a(this.f18849c);
        this.f18852f = a2;
        return a2;
    }

    public r c() {
        return this.f18849c;
    }

    public boolean d() {
        return this.f18847a.h();
    }

    public String e() {
        return this.f18848b;
    }

    public a f() {
        return new a(this);
    }

    public s g() {
        return this.f18847a;
    }

    public String toString() {
        return "Request{method=" + this.f18848b + ", url=" + this.f18847a + ", tags=" + this.f18851e + '}';
    }

    /* compiled from: Request.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        s f18853a;

        /* renamed from: b, reason: collision with root package name */
        String f18854b;

        /* renamed from: c, reason: collision with root package name */
        r.a f18855c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        a0 f18856d;

        /* renamed from: e, reason: collision with root package name */
        Map<Class<?>, Object> f18857e;

        public a() {
            this.f18857e = Collections.emptyMap();
            this.f18854b = "GET";
            this.f18855c = new r.a();
        }

        public a a(s sVar) {
            if (sVar != null) {
                this.f18853a = sVar;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a b(String str) {
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str = "https:" + str.substring(4);
                }
                a(s.d(str));
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a a(String str, String str2) {
            this.f18855c.a(str, str2);
            return this;
        }

        public a a(String str) {
            this.f18855c.b(str);
            return this;
        }

        a(z zVar) {
            Map<Class<?>, Object> linkedHashMap;
            this.f18857e = Collections.emptyMap();
            this.f18853a = zVar.f18847a;
            this.f18854b = zVar.f18848b;
            this.f18856d = zVar.f18850d;
            if (zVar.f18851e.isEmpty()) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap<>(zVar.f18851e);
            }
            this.f18857e = linkedHashMap;
            this.f18855c = zVar.f18849c.a();
        }

        public a a(r rVar) {
            this.f18855c = rVar.a();
            return this;
        }

        public a a(d dVar) {
            String dVar2 = dVar.toString();
            if (dVar2.isEmpty()) {
                a("Cache-Control");
                return this;
            }
            b("Cache-Control", dVar2);
            return this;
        }

        public a b(String str, String str2) {
            this.f18855c.d(str, str2);
            return this;
        }

        public a b() {
            a("HEAD", (a0) null);
            return this;
        }

        public a a(a0 a0Var) {
            a("POST", a0Var);
            return this;
        }

        public a a(String str, @Nullable a0 a0Var) {
            if (str != null) {
                if (str.length() != 0) {
                    if (a0Var != null && !i.g0.g.f.b(str)) {
                        throw new IllegalArgumentException("method " + str + " must not have a request body.");
                    }
                    if (a0Var == null && i.g0.g.f.e(str)) {
                        throw new IllegalArgumentException("method " + str + " must have a request body.");
                    }
                    this.f18854b = str;
                    this.f18856d = a0Var;
                    return this;
                }
                throw new IllegalArgumentException("method.length() == 0");
            }
            throw new NullPointerException("method == null");
        }

        public a a(@Nullable Object obj) {
            a((Class<? super Class>) Object.class, (Class) obj);
            return this;
        }

        public <T> a a(Class<? super T> cls, @Nullable T t) {
            if (cls == null) {
                throw new NullPointerException("type == null");
            }
            if (t == null) {
                this.f18857e.remove(cls);
            } else {
                if (this.f18857e.isEmpty()) {
                    this.f18857e = new LinkedHashMap();
                }
                this.f18857e.put(cls, cls.cast(t));
            }
            return this;
        }

        public z a() {
            if (this.f18853a != null) {
                return new z(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    @Nullable
    public a0 a() {
        return this.f18850d;
    }
}
