package com.alibaba.fastjson.c;

import com.alibaba.fastjson.annotation.JSONField;
import java.lang.reflect.Member;
import java.util.Collection;

/* compiled from: FieldSerializer.java */
/* loaded from: classes.dex */
public final class m implements Comparable<m> {

    /* renamed from: e, reason: collision with root package name */
    public final com.alibaba.fastjson.e.a f3245e;

    /* renamed from: f, reason: collision with root package name */
    protected final boolean f3246f;

    /* renamed from: g, reason: collision with root package name */
    protected final int f3247g;

    /* renamed from: h, reason: collision with root package name */
    protected final String f3248h;

    /* renamed from: i, reason: collision with root package name */
    protected char[] f3249i;

    /* renamed from: j, reason: collision with root package name */
    private a f3250j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FieldSerializer.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        w f3251a;

        /* renamed from: b, reason: collision with root package name */
        Class<?> f3252b;

        public a(w wVar, Class<?> cls) {
            this.f3251a = wVar;
            this.f3252b = cls;
        }
    }

    public m(com.alibaba.fastjson.e.a aVar) {
        boolean z;
        this.f3245e = aVar;
        JSONField a2 = aVar.a();
        if (a2 != null) {
            z = false;
            for (b bVar : a2.serialzeFeatures()) {
                if (bVar == b.WriteMapNullValue) {
                    z = true;
                }
            }
            String trim = a2.format().trim();
            r1 = trim.length() != 0 ? trim : null;
            this.f3247g = b.of(a2.serialzeFeatures());
        } else {
            this.f3247g = 0;
            z = false;
        }
        this.f3246f = z;
        this.f3248h = r1;
        String str = aVar.f3280e;
        int length = str.length();
        this.f3249i = new char[length + 3];
        str.getChars(0, str.length(), this.f3249i, 1);
        char[] cArr = this.f3249i;
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
    }

    public void a(p pVar) {
        c0 c0Var = pVar.f3255b;
        int i2 = c0Var.f3234g;
        if ((b.QuoteFieldNames.mask & i2) != 0) {
            if ((i2 & b.UseSingleQuotes.mask) != 0) {
                c0Var.a(this.f3245e.f3280e, true);
                return;
            } else {
                char[] cArr = this.f3249i;
                c0Var.write(cArr, 0, cArr.length);
                return;
            }
        }
        c0Var.a(this.f3245e.f3280e, true);
    }

    public Object a(Object obj) {
        try {
            return this.f3245e.a(obj);
        } catch (Exception e2) {
            com.alibaba.fastjson.e.a aVar = this.f3245e;
            Member member = aVar.f3281f;
            if (member == null) {
                member = aVar.f3282g;
            }
            throw new com.alibaba.fastjson.f("get property error。 " + (member.getDeclaringClass().getName() + "." + member.getName()), e2);
        }
    }

    public void a(p pVar, Object obj) {
        Class<?> cls;
        String str = this.f3248h;
        if (str != null) {
            pVar.a(obj, str);
            return;
        }
        if (this.f3250j == null) {
            if (obj == null) {
                cls = this.f3245e.f3286k;
            } else {
                cls = obj.getClass();
            }
            this.f3250j = new a(pVar.f3254a.a(cls), cls);
        }
        a aVar = this.f3250j;
        if (obj == null) {
            if ((this.f3247g & b.WriteNullNumberAsZero.mask) != 0 && Number.class.isAssignableFrom(aVar.f3252b)) {
                pVar.f3255b.write(48);
                return;
            }
            if ((this.f3247g & b.WriteNullBooleanAsFalse.mask) != 0 && Boolean.class == aVar.f3252b) {
                pVar.f3255b.write("false");
                return;
            } else if ((this.f3247g & b.WriteNullListAsEmpty.mask) != 0 && Collection.class.isAssignableFrom(aVar.f3252b)) {
                pVar.f3255b.write("[]");
                return;
            } else {
                aVar.f3251a.a(pVar, null, this.f3245e.f3280e, aVar.f3252b);
                return;
            }
        }
        Class<?> cls2 = obj.getClass();
        if (cls2 == aVar.f3252b) {
            w wVar = aVar.f3251a;
            com.alibaba.fastjson.e.a aVar2 = this.f3245e;
            wVar.a(pVar, obj, aVar2.f3280e, aVar2.f3287l);
        } else {
            w a2 = pVar.f3254a.a(cls2);
            com.alibaba.fastjson.e.a aVar3 = this.f3245e;
            a2.a(pVar, obj, aVar3.f3280e, aVar3.f3287l);
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(m mVar) {
        return this.f3245e.compareTo(mVar.f3245e);
    }
}
