package com.alibaba.fastjson.c;

import com.alibaba.fastjson.JSON;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: JSONSerializer.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public final a0 f3254a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f3255b;

    /* renamed from: j, reason: collision with root package name */
    private String f3263j;

    /* renamed from: k, reason: collision with root package name */
    private DateFormat f3264k;
    protected z m;
    public TimeZone n;

    /* renamed from: c, reason: collision with root package name */
    protected List<g> f3256c = null;

    /* renamed from: d, reason: collision with root package name */
    protected List<a> f3257d = null;

    /* renamed from: e, reason: collision with root package name */
    protected List<x> f3258e = null;

    /* renamed from: f, reason: collision with root package name */
    protected List<d> f3259f = null;

    /* renamed from: g, reason: collision with root package name */
    protected List<u> f3260g = null;

    /* renamed from: h, reason: collision with root package name */
    protected List<y> f3261h = null;

    /* renamed from: i, reason: collision with root package name */
    private int f3262i = 0;

    /* renamed from: l, reason: collision with root package name */
    protected IdentityHashMap<Object, z> f3265l = null;
    public Locale o = JSON.defaultLocale;

    public p(c0 c0Var, a0 a0Var) {
        this.n = JSON.defaultTimeZone;
        this.f3255b = c0Var;
        this.f3254a = a0Var;
        this.n = JSON.defaultTimeZone;
    }

    public DateFormat a() {
        String str;
        if (this.f3264k == null && (str = this.f3263j) != null) {
            this.f3264k = new SimpleDateFormat(str, this.o);
            this.f3264k.setTimeZone(this.n);
        }
        return this.f3264k;
    }

    public List<d> b() {
        if (this.f3259f == null) {
            this.f3259f = new ArrayList();
        }
        return this.f3259f;
    }

    public void c() {
        this.f3262i++;
    }

    public void d() {
        this.f3262i--;
    }

    public void e() {
        this.f3255b.write(10);
        for (int i2 = 0; i2 < this.f3262i; i2++) {
            this.f3255b.write(9);
        }
    }

    public List<g> f() {
        if (this.f3256c == null) {
            this.f3256c = new ArrayList();
        }
        return this.f3256c;
    }

    public List<a> g() {
        if (this.f3257d == null) {
            this.f3257d = new ArrayList();
        }
        return this.f3257d;
    }

    public List<u> h() {
        if (this.f3260g == null) {
            this.f3260g = new ArrayList();
        }
        return this.f3260g;
    }

    public List<y> i() {
        if (this.f3261h == null) {
            this.f3261h = new ArrayList();
        }
        return this.f3261h;
    }

    public List<x> j() {
        if (this.f3258e == null) {
            this.f3258e = new ArrayList();
        }
        return this.f3258e;
    }

    public String toString() {
        return this.f3255b.toString();
    }

    public final void b(Object obj) {
        if (obj == null) {
            this.f3255b.i();
            return;
        }
        try {
            this.f3254a.a(obj.getClass()).a(this, obj, null, null);
        } catch (IOException e2) {
            throw new com.alibaba.fastjson.f(e2.getMessage(), e2);
        }
    }

    public void a(String str) {
        this.f3263j = str;
        if (this.f3264k != null) {
            this.f3264k = null;
        }
    }

    public void a(z zVar, Object obj, Object obj2, int i2) {
        if ((this.f3255b.f3234g & b.DisableCircularReferenceDetect.mask) == 0) {
            this.m = new z(zVar, obj, obj2, i2);
            if (this.f3265l == null) {
                this.f3265l = new IdentityHashMap<>();
            }
            this.f3265l.put(obj, this.m);
        }
    }

    public final void b(String str) {
        if (str == null) {
            c0 c0Var = this.f3255b;
            if ((c0Var.f3234g & b.WriteNullStringAsEmpty.mask) != 0) {
                c0Var.c("");
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        c0 c0Var2 = this.f3255b;
        if ((c0Var2.f3234g & b.UseSingleQuotes.mask) != 0) {
            c0Var2.d(str);
        } else {
            c0Var2.a(str, (char) 0, true);
        }
    }

    public void a(Object obj) {
        z zVar = this.m;
        if (obj == zVar.f3277b) {
            this.f3255b.write("{\"$ref\":\"@\"}");
            return;
        }
        z zVar2 = zVar.f3276a;
        if (zVar2 != null && obj == zVar2.f3277b) {
            this.f3255b.write("{\"$ref\":\"..\"}");
            return;
        }
        while (true) {
            z zVar3 = zVar.f3276a;
            if (zVar3 == null) {
                break;
            } else {
                zVar = zVar3;
            }
        }
        if (obj == zVar.f3277b) {
            this.f3255b.write("{\"$ref\":\"$\"}");
            return;
        }
        String zVar4 = this.f3265l.get(obj).toString();
        this.f3255b.write("{\"$ref\":\"");
        this.f3255b.write(zVar4);
        this.f3255b.write("\"}");
    }

    public boolean b(Object obj, Object obj2) {
        List<y> list = this.f3261h;
        if (list == null) {
            return true;
        }
        for (y yVar : list) {
            if (obj2 != null && !(obj2 instanceof String)) {
                obj2 = JSON.toJSONString(obj2);
            }
            if (!yVar.a(this, obj, (String) obj2)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(Object obj, Object obj2, Object obj3) {
        List<x> list = this.f3258e;
        if (list == null) {
            return true;
        }
        if (obj2 != null && !(obj2 instanceof String)) {
            obj2 = JSON.toJSONString(obj2);
        }
        Iterator<x> it = list.iterator();
        while (it.hasNext()) {
            if (!it.next().a(obj, (String) obj2, obj3)) {
                return false;
            }
        }
        return true;
    }

    public void a(b bVar, boolean z) {
        this.f3255b.a(bVar, z);
    }

    public final void a(Object obj, Object obj2) {
        a(obj, obj2, (Type) null, 0);
    }

    public final void a(Object obj, Object obj2, Type type, int i2) {
        try {
            if (obj == null) {
                this.f3255b.i();
            } else {
                this.f3254a.a(obj.getClass()).a(this, obj, obj2, type);
            }
        } catch (IOException e2) {
            throw new com.alibaba.fastjson.f(e2.getMessage(), e2);
        }
    }

    public final void a(Object obj, String str) {
        if (obj instanceof Date) {
            DateFormat a2 = a();
            if (a2 == null) {
                a2 = new SimpleDateFormat(str, this.o);
                a2.setTimeZone(this.n);
            }
            this.f3255b.c(a2.format((Date) obj));
            return;
        }
        b(obj);
    }

    public static Object a(p pVar, Object obj, Object obj2, Object obj3) {
        List<d> list = pVar.f3259f;
        if (list != null) {
            if (obj2 != null && !(obj2 instanceof String)) {
                obj2 = JSON.toJSONString(obj2);
            }
            Iterator<d> it = list.iterator();
            while (it.hasNext()) {
                obj3 = it.next().a(obj, (String) obj2, obj3);
            }
        }
        return obj3;
    }

    public Object a(Object obj, Object obj2, Object obj3) {
        List<u> list = this.f3260g;
        if (list != null) {
            if (obj2 != null && !(obj2 instanceof String)) {
                obj2 = JSON.toJSONString(obj2);
            }
            Iterator<u> it = list.iterator();
            while (it.hasNext()) {
                obj2 = it.next().a(obj, (String) obj2, obj3);
            }
        }
        return obj2;
    }
}
