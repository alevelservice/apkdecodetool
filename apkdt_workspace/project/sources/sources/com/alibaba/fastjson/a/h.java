package com.alibaba.fastjson.a;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.e.a;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: JavaBeanDeserializer.java */
/* loaded from: classes.dex */
public class h implements com.alibaba.fastjson.a.a.f {

    /* renamed from: a, reason: collision with root package name */
    private final com.alibaba.fastjson.a.a.d[] f3173a;

    /* renamed from: b, reason: collision with root package name */
    private final com.alibaba.fastjson.a.a.d[] f3174b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, com.alibaba.fastjson.a.a.d> f3175c;

    /* renamed from: d, reason: collision with root package name */
    protected final Class<?> f3176d;

    /* renamed from: e, reason: collision with root package name */
    public final i f3177e;

    /* renamed from: f, reason: collision with root package name */
    private ConcurrentMap<String, Object> f3178f;

    /* renamed from: g, reason: collision with root package name */
    private transient long[] f3179g;

    /* renamed from: h, reason: collision with root package name */
    private transient int[] f3180h;

    public h(n nVar, Class<?> cls, Type type) {
        this(nVar, cls, type, i.a(cls, cls.getModifiers(), type, false, true, true, true, nVar.f3208d));
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x06f2, code lost:
    
        throw new com.alibaba.fastjson.f("syntax error, unexpect token " + com.alibaba.fastjson.a.g.a(r10.f3161a));
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x02d0, code lost:
    
        if (r1 == 16) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x02e2, code lost:
    
        r10.a(':');
        r0 = r10.f3161a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x02e8, code lost:
    
        if (r0 != 4) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x02ea, code lost:
    
        r0 = r10.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x02f4, code lost:
    
        if ("@".equals(r0) == false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x02f8, code lost:
    
        r6 = (T) r14.f3198a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0345, code lost:
    
        r10.b(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x034c, code lost:
    
        if (r10.f3161a != 13) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x034e, code lost:
    
        r10.b(16);
        r35.a(r14, r6, r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0356, code lost:
    
        r1 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0358, code lost:
    
        if (r1 == null) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x035a, code lost:
    
        r1.f3198a = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x035c, code lost:
    
        r35.a(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x035f, code lost:
    
        return (T) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0369, code lost:
    
        throw new com.alibaba.fastjson.f("illegal ref");
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0300, code lost:
    
        if ("..".equals(r0) == false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0302, code lost:
    
        r1 = r14.f3199b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0306, code lost:
    
        if (r1.f3198a == null) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0308, code lost:
    
        r6 = (T) r1.f3198a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x030b, code lost:
    
        r35.a(new com.alibaba.fastjson.a.c.a(r1, r0));
        r35.n = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x031d, code lost:
    
        if ("$".equals(r0) == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x031f, code lost:
    
        r1 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0322, code lost:
    
        if (r1.f3199b == null) goto L599;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0324, code lost:
    
        r1 = r1.f3199b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0329, code lost:
    
        if (r1.f3198a == null) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x032b, code lost:
    
        r6 = (T) r1.f3198a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x032e, code lost:
    
        r35.a(new com.alibaba.fastjson.a.c.a(r1, r0));
        r35.n = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x033a, code lost:
    
        r35.a(new com.alibaba.fastjson.a.c.a(r14, r0));
        r35.n = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0386, code lost:
    
        throw new com.alibaba.fastjson.f("illegal ref, " + com.alibaba.fastjson.a.g.a(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0393, code lost:
    
        if (com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY == r15) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0395, code lost:
    
        r10.a(':');
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x039d, code lost:
    
        if (r10.f3161a != 4) goto L548;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x039f, code lost:
    
        r2 = r10.m();
        r10.b(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x03aa, code lost:
    
        if ((r36 instanceof java.lang.Class) == false) goto L550;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x03b7, code lost:
    
        if (r2.equals(((java.lang.Class) r36).getName()) == false) goto L552;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x03bd, code lost:
    
        if (r10.f3161a != 13) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x03bf, code lost:
    
        r10.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x03c2, code lost:
    
        r12 = r1;
        r13 = r6;
        r1 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x03d4, code lost:
    
        r4 = a(r35.f3145f, r34.f3177e, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x03dc, code lost:
    
        if (r4 != null) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x03de, code lost:
    
        r12 = r35.f3145f.a(r2, r34.f3176d, r10.f3163c);
        r0 = com.alibaba.fastjson.e.d.c(r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x03ec, code lost:
    
        if (r0 == null) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x03ee, code lost:
    
        if (r12 == null) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x03f4, code lost:
    
        if (r0.isAssignableFrom(r12) == false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x03fe, code lost:
    
        throw new com.alibaba.fastjson.f("type not match");
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x03ff, code lost:
    
        r4 = r35.f3145f.a((java.lang.reflect.Type) r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0409, code lost:
    
        if ((r4 instanceof com.alibaba.fastjson.a.h) == false) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x040b, code lost:
    
        r4 = (com.alibaba.fastjson.a.h) r4;
        r0 = (T) r4.b(r35, r12, r37, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0412, code lost:
    
        if (r3 == null) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0414, code lost:
    
        r4.a(r3).a(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x0420, code lost:
    
        if (r1 == null) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0422, code lost:
    
        r1.f3198a = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0424, code lost:
    
        r35.a(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0427, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x041c, code lost:
    
        r0 = (T) r4.a(r35, r12, r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0406, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x042f, code lost:
    
        throw new com.alibaba.fastjson.f("syntax error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x038f, code lost:
    
        if (r3.equals(r15) == false) goto L276;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0441 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x05ca A[Catch: all -> 0x06fb, TryCatch #9 {all -> 0x06fb, blocks: (B:299:0x0474, B:141:0x05c2, B:148:0x05ca, B:160:0x05d0, B:151:0x06be, B:153:0x06c4, B:156:0x06d6, B:157:0x06f2, B:115:0x0483, B:120:0x048c, B:125:0x0495, B:130:0x049e, B:136:0x04c4, B:138:0x057b, B:237:0x04aa, B:239:0x04b2, B:240:0x04ba, B:241:0x04bf, B:246:0x04d9, B:251:0x04e3, B:256:0x04ec, B:261:0x04f5, B:266:0x04fe, B:267:0x0505, B:269:0x0509, B:271:0x050d, B:272:0x0512, B:273:0x051b, B:275:0x051f, B:277:0x0523, B:278:0x0527, B:279:0x0530, B:281:0x0534, B:283:0x0538, B:284:0x053e, B:285:0x0548, B:287:0x054c, B:289:0x0550, B:290:0x0554, B:244:0x0576, B:293:0x055d, B:294:0x0575, B:300:0x058f, B:302:0x05ab, B:306:0x05b1, B:307:0x05bc, B:310:0x06f3, B:311:0x06fa), top: B:298:0x0474, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x058f A[Catch: all -> 0x06fb, TryCatch #9 {all -> 0x06fb, blocks: (B:299:0x0474, B:141:0x05c2, B:148:0x05ca, B:160:0x05d0, B:151:0x06be, B:153:0x06c4, B:156:0x06d6, B:157:0x06f2, B:115:0x0483, B:120:0x048c, B:125:0x0495, B:130:0x049e, B:136:0x04c4, B:138:0x057b, B:237:0x04aa, B:239:0x04b2, B:240:0x04ba, B:241:0x04bf, B:246:0x04d9, B:251:0x04e3, B:256:0x04ec, B:261:0x04f5, B:266:0x04fe, B:267:0x0505, B:269:0x0509, B:271:0x050d, B:272:0x0512, B:273:0x051b, B:275:0x051f, B:277:0x0523, B:278:0x0527, B:279:0x0530, B:281:0x0534, B:283:0x0538, B:284:0x053e, B:285:0x0548, B:287:0x054c, B:289:0x0550, B:290:0x0554, B:244:0x0576, B:293:0x055d, B:294:0x0575, B:300:0x058f, B:302:0x05ab, B:306:0x05b1, B:307:0x05bc, B:310:0x06f3, B:311:0x06fa), top: B:298:0x0474, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x02b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #0 {all -> 0x0040, blocks: (B:17:0x0030, B:19:0x0035, B:25:0x004a, B:27:0x0050, B:32:0x005f, B:39:0x006e, B:44:0x007a, B:46:0x0084, B:49:0x008b, B:51:0x00a0, B:52:0x00a8, B:53:0x00b1, B:58:0x00b7), top: B:15:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0438  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T b(com.alibaba.fastjson.a.c r35, java.lang.reflect.Type r36, java.lang.Object r37, java.lang.Object r38) {
        /*
            Method dump skipped, instructions count: 1808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.h.b(com.alibaba.fastjson.a.c, java.lang.reflect.Type, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object a(c cVar, Type type) {
        Object newInstance;
        if ((type instanceof Class) && this.f3176d.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject((cVar.f3148i.f3163c & e.OrderedField.mask) != 0));
        }
        i iVar = this.f3177e;
        if (iVar.f3181a == null && iVar.f3184d == null) {
            return null;
        }
        i iVar2 = this.f3177e;
        if (iVar2.f3184d != null && iVar2.f3182b > 0) {
            return null;
        }
        try {
            Constructor<?> constructor = this.f3177e.f3181a;
            if (this.f3177e.f3182b != 0) {
                newInstance = constructor.newInstance(cVar.f3149j.f3198a);
            } else if (constructor != null) {
                newInstance = constructor.newInstance(new Object[0]);
            } else {
                newInstance = this.f3177e.f3184d.invoke(null, new Object[0]);
            }
            if (cVar != null && (cVar.f3148i.f3163c & e.InitStringFieldAsEmpty.mask) != 0) {
                for (a aVar : this.f3177e.f3185e) {
                    if (aVar.f3286k == String.class) {
                        aVar.a(newInstance, "");
                    }
                }
            }
            return newInstance;
        } catch (Exception e2) {
            throw new com.alibaba.fastjson.f("create instance error, class " + this.f3176d.getName(), e2);
        }
    }

    public h(n nVar, Class<?> cls, Type type, i iVar) {
        this.f3176d = cls;
        this.f3177e = iVar;
        a[] aVarArr = iVar.f3186f;
        this.f3174b = new com.alibaba.fastjson.a.a.d[aVarArr.length];
        int length = aVarArr.length;
        HashMap hashMap = null;
        int i2 = 0;
        while (i2 < length) {
            a aVar = iVar.f3186f[i2];
            com.alibaba.fastjson.a.a.d a2 = nVar.a(nVar, cls, aVar);
            this.f3174b[i2] = a2;
            HashMap hashMap2 = hashMap;
            for (String str : aVar.t) {
                if (hashMap2 == null) {
                    hashMap2 = new HashMap();
                }
                hashMap2.put(str, a2);
            }
            i2++;
            hashMap = hashMap2;
        }
        this.f3175c = hashMap;
        a[] aVarArr2 = iVar.f3185e;
        this.f3173a = new com.alibaba.fastjson.a.a.d[aVarArr2.length];
        int length2 = aVarArr2.length;
        for (int i3 = 0; i3 < length2; i3++) {
            this.f3173a[i3] = a(iVar.f3185e[i3].f3280e);
        }
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(c cVar, Type type, Object obj) {
        return (T) b(cVar, type, obj, null);
    }

    private <T> T a(c cVar, Type type, Object obj, Object obj2) {
        Enum r8;
        String str;
        f fVar = cVar.f3148i;
        T t = (T) a(cVar, type);
        int length = this.f3174b.length;
        int i2 = 0;
        while (i2 < length) {
            char c2 = i2 == length + (-1) ? ']' : ',';
            com.alibaba.fastjson.a.a.d dVar = this.f3174b[i2];
            a aVar = dVar.f3139a;
            Class<?> cls = aVar.f3286k;
            try {
                if (cls == Integer.TYPE) {
                    int s = (int) fVar.s();
                    if (aVar.f3283h) {
                        aVar.f3282g.setInt(t, s);
                    } else {
                        dVar.a(t, new Integer(s));
                    }
                    if (fVar.f3164d == ',') {
                        int i3 = fVar.f3165e + 1;
                        fVar.f3165e = i3;
                        fVar.f3164d = i3 >= fVar.r ? (char) 26 : fVar.q.charAt(i3);
                        fVar.f3161a = 16;
                    } else if (fVar.f3164d == ']') {
                        int i4 = fVar.f3165e + 1;
                        fVar.f3165e = i4;
                        fVar.f3164d = i4 >= fVar.r ? (char) 26 : fVar.q.charAt(i4);
                        fVar.f3161a = 15;
                    } else {
                        fVar.e();
                    }
                } else if (cls == String.class) {
                    if (fVar.f3164d == '\"') {
                        str = fVar.b('\"');
                    } else if (fVar.f3164d == 'n' && fVar.q.startsWith("null", fVar.f3165e)) {
                        fVar.f3165e += 4;
                        fVar.f3164d = fVar.f3165e >= fVar.r ? (char) 26 : fVar.q.charAt(fVar.f3165e);
                        str = null;
                    } else {
                        throw new com.alibaba.fastjson.f("not match string. feild : " + obj);
                    }
                    if (aVar.f3283h) {
                        aVar.f3282g.set(t, str);
                    } else {
                        dVar.a(t, str);
                    }
                    if (fVar.f3164d == ',') {
                        int i5 = fVar.f3165e + 1;
                        fVar.f3165e = i5;
                        fVar.f3164d = i5 >= fVar.r ? (char) 26 : fVar.q.charAt(i5);
                        fVar.f3161a = 16;
                    } else if (fVar.f3164d == ']') {
                        int i6 = fVar.f3165e + 1;
                        fVar.f3165e = i6;
                        fVar.f3164d = i6 >= fVar.r ? (char) 26 : fVar.q.charAt(i6);
                        fVar.f3161a = 15;
                    } else {
                        fVar.e();
                    }
                } else {
                    if (cls == Long.TYPE) {
                        long s2 = fVar.s();
                        if (aVar.f3283h) {
                            aVar.f3282g.setLong(t, s2);
                        } else {
                            dVar.a(t, new Long(s2));
                        }
                        if (fVar.f3164d == ',') {
                            int i7 = fVar.f3165e + 1;
                            fVar.f3165e = i7;
                            fVar.f3164d = i7 >= fVar.r ? (char) 26 : fVar.q.charAt(i7);
                            fVar.f3161a = 16;
                        } else if (fVar.f3164d == ']') {
                            int i8 = fVar.f3165e + 1;
                            fVar.f3165e = i8;
                            fVar.f3164d = i8 >= fVar.r ? (char) 26 : fVar.q.charAt(i8);
                            fVar.f3161a = 15;
                        } else {
                            fVar.e();
                        }
                    } else if (cls == Boolean.TYPE) {
                        boolean q = fVar.q();
                        if (aVar.f3283h) {
                            aVar.f3282g.setBoolean(t, q);
                        } else {
                            dVar.a(t, Boolean.valueOf(q));
                        }
                        if (fVar.f3164d == ',') {
                            int i9 = fVar.f3165e + 1;
                            fVar.f3165e = i9;
                            fVar.f3164d = i9 >= fVar.r ? (char) 26 : fVar.q.charAt(i9);
                            fVar.f3161a = 16;
                        } else if (fVar.f3164d == ']') {
                            int i10 = fVar.f3165e + 1;
                            fVar.f3165e = i10;
                            fVar.f3164d = i10 >= fVar.r ? (char) 26 : fVar.q.charAt(i10);
                            fVar.f3161a = 15;
                        } else {
                            fVar.e();
                        }
                    } else if (cls.isEnum()) {
                        char c3 = fVar.f3164d;
                        if (c3 == '\"') {
                            String a2 = fVar.a(cVar.f3144e);
                            r8 = a2 == null ? null : Enum.valueOf(cls, a2);
                        } else if (c3 >= '0' && c3 <= '9') {
                            r8 = ((d) ((b) dVar).a(cVar.f3145f)).f3158c[(int) fVar.s()];
                        } else {
                            throw new com.alibaba.fastjson.f("illegal enum." + fVar.h());
                        }
                        dVar.a(t, r8);
                        if (fVar.f3164d == ',') {
                            int i11 = fVar.f3165e + 1;
                            fVar.f3165e = i11;
                            fVar.f3164d = i11 >= fVar.r ? (char) 26 : fVar.q.charAt(i11);
                            fVar.f3161a = 16;
                        } else if (fVar.f3164d == ']') {
                            int i12 = fVar.f3165e + 1;
                            fVar.f3165e = i12;
                            fVar.f3164d = i12 >= fVar.r ? (char) 26 : fVar.q.charAt(i12);
                            fVar.f3161a = 15;
                        } else {
                            fVar.e();
                        }
                    } else if (cls == Date.class && fVar.f3164d == '1') {
                        dVar.a(t, new Date(fVar.s()));
                        if (fVar.f3164d == ',') {
                            int i13 = fVar.f3165e + 1;
                            fVar.f3165e = i13;
                            fVar.f3164d = i13 >= fVar.r ? (char) 26 : fVar.q.charAt(i13);
                            fVar.f3161a = 16;
                        } else if (fVar.f3164d == ']') {
                            int i14 = fVar.f3165e + 1;
                            fVar.f3165e = i14;
                            fVar.f3164d = i14 >= fVar.r ? (char) 26 : fVar.q.charAt(i14);
                            fVar.f3161a = 15;
                        } else {
                            fVar.e();
                        }
                    } else {
                        if (fVar.f3164d == '[') {
                            int i15 = fVar.f3165e + 1;
                            fVar.f3165e = i15;
                            fVar.f3164d = i15 >= fVar.r ? (char) 26 : fVar.q.charAt(i15);
                            fVar.f3161a = 14;
                        } else if (fVar.f3164d == '{') {
                            int i16 = fVar.f3165e + 1;
                            fVar.f3165e = i16;
                            fVar.f3164d = i16 >= fVar.r ? (char) 26 : fVar.q.charAt(i16);
                            fVar.f3161a = 12;
                        } else {
                            fVar.e();
                        }
                        dVar.a(cVar, t, aVar.f3287l, null);
                        if (c2 == ']') {
                            if (fVar.f3161a != 15) {
                                throw new com.alibaba.fastjson.f("syntax error");
                            }
                        } else if (c2 == ',' && fVar.f3161a != 16) {
                            throw new com.alibaba.fastjson.f("syntax error");
                        }
                    }
                    i2++;
                }
                i2++;
            } catch (IllegalAccessException e2) {
                throw new com.alibaba.fastjson.f("set " + aVar.f3280e + HummerConstants.HUMMER_ERROR, e2);
            }
        }
        if (fVar.f3164d == ',') {
            int i17 = fVar.f3165e + 1;
            fVar.f3165e = i17;
            fVar.f3164d = i17 >= fVar.r ? (char) 26 : fVar.q.charAt(i17);
            fVar.f3161a = 16;
        } else {
            fVar.e();
        }
        return t;
    }

    protected com.alibaba.fastjson.a.a.d a(long j2) {
        int i2 = 0;
        while (true) {
            com.alibaba.fastjson.a.a.d[] dVarArr = this.f3174b;
            if (i2 >= dVarArr.length) {
                return null;
            }
            com.alibaba.fastjson.a.a.d dVar = dVarArr[i2];
            if (dVar.f3139a.s == j2) {
                return dVar;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.alibaba.fastjson.a.a.d a(String str) {
        if (str == null) {
            return null;
        }
        int i2 = 0;
        if (!this.f3177e.f3188h) {
            int length = this.f3174b.length - 1;
            while (i2 <= length) {
                int i3 = (i2 + length) >>> 1;
                int compareTo = this.f3174b[i3].f3139a.f3280e.compareTo(str);
                if (compareTo < 0) {
                    i2 = i3 + 1;
                } else {
                    if (compareTo <= 0) {
                        return this.f3174b[i3];
                    }
                    length = i3 - 1;
                }
            }
            Map<String, com.alibaba.fastjson.a.a.d> map = this.f3175c;
            if (map != null) {
                return map.get(str);
            }
            return null;
        }
        while (true) {
            com.alibaba.fastjson.a.a.d[] dVarArr = this.f3174b;
            if (i2 >= dVarArr.length) {
                return null;
            }
            com.alibaba.fastjson.a.a.d dVar = dVarArr[i2];
            if (dVar.f3139a.f3280e.equalsIgnoreCase(str)) {
                return dVar;
            }
            i2++;
        }
    }

    private boolean a(c cVar, String str, Object obj, Type type, Map<String, Object> map) {
        boolean z;
        f fVar = cVar.f3148i;
        com.alibaba.fastjson.a.a.d a2 = a(str);
        if (a2 == null) {
            long c2 = com.alibaba.fastjson.e.d.c(str);
            if (this.f3179g == null) {
                long[] jArr = new long[this.f3174b.length];
                int i2 = 0;
                while (true) {
                    com.alibaba.fastjson.a.a.d[] dVarArr = this.f3174b;
                    if (i2 >= dVarArr.length) {
                        break;
                    }
                    jArr[i2] = com.alibaba.fastjson.e.d.c(dVarArr[i2].f3139a.f3280e);
                    i2++;
                }
                Arrays.sort(jArr);
                this.f3179g = jArr;
            }
            int binarySearch = Arrays.binarySearch(this.f3179g, c2);
            if (binarySearch < 0) {
                z = str.startsWith("is");
                if (z) {
                    binarySearch = Arrays.binarySearch(this.f3179g, com.alibaba.fastjson.e.d.c(str.substring(2)));
                }
            } else {
                z = false;
            }
            if (binarySearch >= 0) {
                if (this.f3180h == null) {
                    int[] iArr = new int[this.f3179g.length];
                    Arrays.fill(iArr, -1);
                    int i3 = 0;
                    while (true) {
                        com.alibaba.fastjson.a.a.d[] dVarArr2 = this.f3174b;
                        if (i3 >= dVarArr2.length) {
                            break;
                        }
                        int binarySearch2 = Arrays.binarySearch(this.f3179g, com.alibaba.fastjson.e.d.c(dVarArr2[i3].f3139a.f3280e));
                        if (binarySearch2 >= 0) {
                            iArr[binarySearch2] = i3;
                        }
                        i3++;
                    }
                    this.f3180h = iArr;
                }
                int i4 = this.f3180h[binarySearch];
                if (i4 != -1) {
                    a2 = this.f3174b[i4];
                    Class<?> cls = a2.f3139a.f3286k;
                    if (z && cls != Boolean.TYPE && cls != Boolean.class) {
                        a2 = null;
                    }
                }
            }
        }
        int i5 = e.SupportNonPublicField.mask;
        if (a2 == null && ((cVar.f3148i.f3163c & i5) != 0 || (i5 & this.f3177e.f3192l) != 0)) {
            if (this.f3178f == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(1, 0.75f, 1);
                for (Class<?> cls2 = this.f3176d; cls2 != null && cls2 != Object.class; cls2 = cls2.getSuperclass()) {
                    for (Field field : cls2.getDeclaredFields()) {
                        String name = field.getName();
                        if (a(name) == null) {
                            int modifiers = field.getModifiers();
                            if ((modifiers & 16) == 0 && (modifiers & 8) == 0) {
                                concurrentHashMap.put(name, field);
                            }
                        }
                    }
                }
                this.f3178f = concurrentHashMap;
            }
            Object obj2 = this.f3178f.get(str);
            if (obj2 != null) {
                if (obj2 instanceof com.alibaba.fastjson.a.a.d) {
                    a2 = (com.alibaba.fastjson.a.a.d) obj2;
                } else {
                    Field field2 = (Field) obj2;
                    field2.setAccessible(true);
                    a2 = new b(cVar.f3145f, this.f3176d, new a(str, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0));
                    this.f3178f.put(str, a2);
                }
            }
        }
        if (a2 == null) {
            a(cVar, obj, str);
            return false;
        }
        fVar.a(':');
        a2.a(cVar, obj, type, map);
        return true;
    }

    void a(c cVar, Object obj, String str) {
        Object a2;
        f fVar = cVar.f3148i;
        if ((fVar.f3163c & e.IgnoreNotMatch.mask) != 0) {
            fVar.a(':');
            Type type = null;
            List<com.alibaba.fastjson.a.a.c> list = cVar.o;
            if (list != null) {
                Iterator<com.alibaba.fastjson.a.a.c> it = list.iterator();
                while (it.hasNext()) {
                    type = it.next().a(obj, str);
                }
            }
            if (type == null) {
                a2 = cVar.p();
            } else {
                a2 = cVar.a(type);
            }
            if (obj instanceof com.alibaba.fastjson.a.a.a) {
                ((com.alibaba.fastjson.a.a.a) obj).a(str, a2);
                return;
            }
            List<com.alibaba.fastjson.a.a.b> list2 = cVar.p;
            if (list2 != null) {
                Iterator<com.alibaba.fastjson.a.a.b> it2 = list2.iterator();
                while (it2.hasNext()) {
                    it2.next().a(obj, str, a2);
                }
                return;
            }
            return;
        }
        throw new com.alibaba.fastjson.f("setter not found, class " + this.f3176d.getName() + ", property " + str);
    }

    public Object a(Map<String, Object> map, n nVar) {
        i iVar = this.f3177e;
        if (iVar.f3183c == null) {
            Object a2 = a((c) null, this.f3176d);
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                com.alibaba.fastjson.a.a.d a3 = a(entry.getKey());
                if (a3 != null) {
                    Object value = entry.getValue();
                    a aVar = a3.f3139a;
                    Method method = aVar.f3281f;
                    if (method != null) {
                        method.invoke(a2, com.alibaba.fastjson.e.d.a(value, method.getGenericParameterTypes()[0], nVar));
                    } else {
                        aVar.f3282g.set(a2, com.alibaba.fastjson.e.d.a(value, aVar.f3287l, nVar));
                    }
                }
            }
            return a2;
        }
        a[] aVarArr = iVar.f3185e;
        int length = aVarArr.length;
        Object[] objArr = new Object[length];
        for (int i2 = 0; i2 < length; i2++) {
            a aVar2 = aVarArr[i2];
            Object obj = map.get(aVar2.f3280e);
            if (obj == null) {
                obj = com.alibaba.fastjson.e.d.c(aVar2.f3286k);
            }
            objArr[i2] = obj;
        }
        Constructor<?> constructor = this.f3177e.f3183c;
        if (constructor == null) {
            return null;
        }
        try {
            return constructor.newInstance(objArr);
        } catch (Exception e2) {
            throw new com.alibaba.fastjson.f("create instance error, " + this.f3177e.f3183c.toGenericString(), e2);
        }
    }

    protected h a(n nVar, i iVar, String str) {
        JSONType jSONType = iVar.f3187g;
        if (jSONType == null) {
            return null;
        }
        for (Class<?> cls : jSONType.seeAlso()) {
            com.alibaba.fastjson.a.a.f a2 = nVar.a((Type) cls);
            if (a2 instanceof h) {
                h hVar = (h) a2;
                i iVar2 = hVar.f3177e;
                if (iVar2.f3190j.equals(str)) {
                    return hVar;
                }
                h a3 = a(nVar, iVar2, str);
                if (a3 != null) {
                    return a3;
                }
            }
        }
        return null;
    }
}
