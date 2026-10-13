package com.alibaba.fastjson.a;

import java.lang.reflect.Type;
import java.util.Arrays;

/* compiled from: EnumDeserializer.java */
/* loaded from: classes.dex */
public class d implements com.alibaba.fastjson.a.a.f {

    /* renamed from: a, reason: collision with root package name */
    private final Class<?> f3156a;

    /* renamed from: b, reason: collision with root package name */
    protected final Enum[] f3157b;

    /* renamed from: c, reason: collision with root package name */
    protected final Enum[] f3158c;

    /* renamed from: d, reason: collision with root package name */
    protected long[] f3159d;

    public d(Class<?> cls) {
        this.f3156a = cls;
        this.f3158c = (Enum[]) cls.getEnumConstants();
        Enum[] enumArr = this.f3158c;
        long[] jArr = new long[enumArr.length];
        this.f3159d = new long[enumArr.length];
        int i2 = 0;
        while (true) {
            Enum[] enumArr2 = this.f3158c;
            if (i2 >= enumArr2.length) {
                break;
            }
            long j2 = -3750763034362895579L;
            for (int i3 = 0; i3 < enumArr2[i2].name().length(); i3++) {
                j2 = (j2 ^ r2.charAt(i3)) * 1099511628211L;
            }
            jArr[i2] = j2;
            this.f3159d[i2] = j2;
            i2++;
        }
        Arrays.sort(this.f3159d);
        this.f3157b = new Enum[this.f3158c.length];
        for (int i4 = 0; i4 < this.f3159d.length; i4++) {
            int i5 = 0;
            while (true) {
                if (i5 >= jArr.length) {
                    break;
                }
                if (this.f3159d[i4] == jArr[i5]) {
                    this.f3157b[i4] = this.f3158c[i5];
                    break;
                }
                i5++;
            }
        }
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(c cVar, Type type, Object obj) {
        try {
            f fVar = cVar.f3148i;
            int i2 = fVar.f3161a;
            if (i2 == 2) {
                int k2 = fVar.k();
                fVar.b(16);
                if (k2 >= 0 && k2 <= this.f3158c.length) {
                    return (T) this.f3158c[k2];
                }
                throw new com.alibaba.fastjson.f("parse enum " + this.f3156a.getName() + " error, value : " + k2);
            }
            if (i2 != 4) {
                if (i2 == 8) {
                    fVar.b(16);
                    return null;
                }
                throw new com.alibaba.fastjson.f("parse enum " + this.f3156a.getName() + " error, value : " + cVar.p());
            }
            String m = fVar.m();
            fVar.b(16);
            if (m.length() == 0) {
                return null;
            }
            long j2 = -3750763034362895579L;
            for (int i3 = 0; i3 < m.length(); i3++) {
                j2 = (j2 ^ m.charAt(i3)) * 1099511628211L;
            }
            int binarySearch = Arrays.binarySearch(this.f3159d, j2);
            if (binarySearch < 0) {
                return null;
            }
            return (T) this.f3157b[binarySearch];
        } catch (com.alibaba.fastjson.f e2) {
            throw e2;
        } catch (Exception e3) {
            throw new com.alibaba.fastjson.f(e3.getMessage(), e3);
        }
    }
}
