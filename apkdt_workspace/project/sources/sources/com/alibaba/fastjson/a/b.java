package com.alibaba.fastjson.a;

import com.alibaba.fastjson.e.a;

/* compiled from: DefaultFieldDeserializer.java */
/* loaded from: classes.dex */
public class b extends com.alibaba.fastjson.a.a.d {

    /* renamed from: e, reason: collision with root package name */
    protected com.alibaba.fastjson.a.a.f f3143e;

    public b(n nVar, Class<?> cls, a aVar) {
        super(cls, aVar, 2);
    }

    public com.alibaba.fastjson.a.a.f a(n nVar) {
        if (this.f3143e == null) {
            a aVar = this.f3139a;
            this.f3143e = nVar.a(aVar.f3286k, aVar.f3287l);
        }
        return this.f3143e;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
    @Override // com.alibaba.fastjson.a.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.alibaba.fastjson.a.c r6, java.lang.Object r7, java.lang.reflect.Type r8, java.util.Map<java.lang.String, java.lang.Object> r9) {
        /*
            r5 = this;
            com.alibaba.fastjson.a.a.f r0 = r5.f3143e
            if (r0 != 0) goto L12
            com.alibaba.fastjson.a.n r0 = r6.f3145f
            com.alibaba.fastjson.e.a r1 = r5.f3139a
            java.lang.Class<?> r2 = r1.f3286k
            java.lang.reflect.Type r1 = r1.f3287l
            com.alibaba.fastjson.a.a.f r0 = r0.a(r2, r1)
            r5.f3143e = r0
        L12:
            com.alibaba.fastjson.e.a r0 = r5.f3139a
            java.lang.reflect.Type r0 = r0.f3287l
            boolean r1 = r8 instanceof java.lang.reflect.ParameterizedType
            if (r1 == 0) goto L2e
            com.alibaba.fastjson.a.m r2 = r6.f3149j
            if (r2 == 0) goto L20
            r2.f3201d = r8
        L20:
            java.lang.Class<?> r2 = r5.f3140b
            java.lang.reflect.Type r0 = com.alibaba.fastjson.e.a.a(r2, r8, r0)
            com.alibaba.fastjson.a.n r2 = r6.f3145f
            com.alibaba.fastjson.a.a.f r2 = r2.a(r0)
            r5.f3143e = r2
        L2e:
            boolean r2 = r0 instanceof java.lang.reflect.ParameterizedType
            if (r2 == 0) goto L62
            if (r1 == 0) goto L62
            r1 = r0
            java.lang.reflect.ParameterizedType r1 = (java.lang.reflect.ParameterizedType) r1
            java.lang.reflect.ParameterizedType r8 = (java.lang.reflect.ParameterizedType) r8
            java.lang.reflect.Type[] r2 = r1.getActualTypeArguments()
            java.lang.reflect.Type r3 = r8.getRawType()
            boolean r4 = r3 instanceof java.lang.Class
            if (r4 == 0) goto L62
            java.lang.Class r3 = (java.lang.Class) r3
            java.lang.reflect.TypeVariable[] r3 = r3.getTypeParameters()
            java.lang.reflect.Type[] r8 = r8.getActualTypeArguments()
            boolean r8 = com.alibaba.fastjson.e.d.a(r2, r3, r8)
            if (r8 == 0) goto L62
            com.alibaba.fastjson.e.c r0 = new com.alibaba.fastjson.e.c
            java.lang.reflect.Type r8 = r1.getOwnerType()
            java.lang.reflect.Type r1 = r1.getRawType()
            r0.<init>(r2, r8, r1)
        L62:
            com.alibaba.fastjson.e.a r8 = r5.f3139a
            java.lang.String r1 = r8.r
            if (r1 == 0) goto L77
            com.alibaba.fastjson.a.a.f r2 = r5.f3143e
            boolean r3 = r2 instanceof com.alibaba.fastjson.c.k
            if (r3 == 0) goto L77
            com.alibaba.fastjson.c.k r2 = (com.alibaba.fastjson.c.k) r2
            java.lang.String r8 = r8.f3280e
            java.lang.Object r8 = r2.a(r6, r0, r8, r1)
            goto L81
        L77:
            com.alibaba.fastjson.a.a.f r8 = r5.f3143e
            com.alibaba.fastjson.e.a r1 = r5.f3139a
            java.lang.String r1 = r1.f3280e
            java.lang.Object r8 = r8.a(r6, r0, r1)
        L81:
            int r0 = r6.n
            r1 = 1
            if (r0 != r1) goto L94
            com.alibaba.fastjson.a.c$a r7 = r6.k()
            r7.f3154c = r5
            com.alibaba.fastjson.a.m r8 = r6.f3149j
            r7.f3155d = r8
            r7 = 0
            r6.n = r7
            goto Lb8
        L94:
            if (r7 != 0) goto L9e
            com.alibaba.fastjson.e.a r6 = r5.f3139a
            java.lang.String r6 = r6.f3280e
            r9.put(r6, r8)
            goto Lb8
        L9e:
            if (r8 != 0) goto Lb5
            com.alibaba.fastjson.e.a r6 = r5.f3139a
            java.lang.Class<?> r6 = r6.f3286k
            java.lang.Class r9 = java.lang.Byte.TYPE
            if (r6 == r9) goto Lb4
            java.lang.Class r9 = java.lang.Short.TYPE
            if (r6 == r9) goto Lb4
            java.lang.Class r9 = java.lang.Float.TYPE
            if (r6 == r9) goto Lb4
            java.lang.Class r9 = java.lang.Double.TYPE
            if (r6 != r9) goto Lb5
        Lb4:
            return
        Lb5:
            r5.a(r7, r8)
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.b.a(com.alibaba.fastjson.a.c, java.lang.Object, java.lang.reflect.Type, java.util.Map):void");
    }
}
