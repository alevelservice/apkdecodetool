package com.alibaba.fastjson.a;

import com.alibaba.fastjson.e.a;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ListTypeFieldDeserializer.java */
/* loaded from: classes.dex */
public class k extends com.alibaba.fastjson.a.a.d {

    /* renamed from: e, reason: collision with root package name */
    private final Type f3194e;

    /* renamed from: f, reason: collision with root package name */
    private com.alibaba.fastjson.a.a.f f3195f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f3196g;

    public k(n nVar, Class<?> cls, a aVar) {
        super(cls, aVar, 14);
        Type type = aVar.f3287l;
        Class<?> cls2 = aVar.f3286k;
        if (cls2.isArray()) {
            this.f3194e = cls2.getComponentType();
            this.f3196g = true;
        } else {
            this.f3194e = com.alibaba.fastjson.e.d.d(type);
            this.f3196g = false;
        }
    }

    @Override // com.alibaba.fastjson.a.a.d
    public void a(c cVar, Object obj, Type type, Map<String, Object> map) {
        List list;
        f fVar = cVar.f3148i;
        int a2 = fVar.a();
        com.alibaba.fastjson.b bVar = null;
        if (a2 != 8 && (a2 != 4 || fVar.m().length() != 0)) {
            if (this.f3196g) {
                com.alibaba.fastjson.b bVar2 = new com.alibaba.fastjson.b();
                bVar2.setComponentType(this.f3194e);
                list = bVar2;
                bVar = bVar2;
            } else {
                list = new ArrayList();
            }
            m mVar = cVar.f3149j;
            cVar.a(mVar, obj, this.f3139a.f3280e);
            a(cVar, type, list);
            cVar.a(mVar);
            Object obj2 = list;
            if (this.f3196g) {
                Object array = list.toArray((Object[]) Array.newInstance((Class<?>) this.f3194e, list.size()));
                bVar.setRelatedArray(array);
                obj2 = array;
            }
            if (obj == null) {
                map.put(this.f3139a.f3280e, obj2);
                return;
            } else {
                a(obj, obj2);
                return;
            }
        }
        a(obj, (Object) null);
        cVar.f3148i.e();
    }

    final void a(c cVar, Type type, Collection collection) {
        Class cls;
        int i2;
        int i3;
        Type type2 = this.f3194e;
        com.alibaba.fastjson.a.a.f fVar = this.f3195f;
        if (type instanceof ParameterizedType) {
            if (type2 instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) type2;
                ParameterizedType parameterizedType = (ParameterizedType) type;
                cls = parameterizedType.getRawType() instanceof Class ? (Class) parameterizedType.getRawType() : null;
                if (cls != null) {
                    int length = cls.getTypeParameters().length;
                    i3 = 0;
                    while (i3 < length) {
                        if (cls.getTypeParameters()[i3].getName().equals(typeVariable.getName())) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
                i3 = -1;
                if (i3 != -1) {
                    type2 = parameterizedType.getActualTypeArguments()[i3];
                    if (!type2.equals(this.f3194e)) {
                        fVar = cVar.f3145f.a(type2);
                    }
                }
            } else if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                if (actualTypeArguments.length == 1 && (actualTypeArguments[0] instanceof TypeVariable)) {
                    TypeVariable typeVariable2 = (TypeVariable) actualTypeArguments[0];
                    ParameterizedType parameterizedType3 = (ParameterizedType) type;
                    cls = parameterizedType3.getRawType() instanceof Class ? (Class) parameterizedType3.getRawType() : null;
                    if (cls != null) {
                        int length2 = cls.getTypeParameters().length;
                        i2 = 0;
                        while (i2 < length2) {
                            if (cls.getTypeParameters()[i2].getName().equals(typeVariable2.getName())) {
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                    i2 = -1;
                    if (i2 != -1) {
                        actualTypeArguments[0] = parameterizedType3.getActualTypeArguments()[i2];
                        type2 = new com.alibaba.fastjson.e.c(actualTypeArguments, parameterizedType2.getOwnerType(), parameterizedType2.getRawType());
                    }
                }
            }
        }
        f fVar2 = cVar.f3148i;
        if (fVar == null) {
            fVar = cVar.f3145f.a(type2);
            this.f3195f = fVar;
        }
        int i4 = fVar2.f3161a;
        if (i4 != 14) {
            if (i4 == 12) {
                collection.add(fVar.a(cVar, type2, 0));
                return;
            }
            String str = "exepct '[', but " + g.a(fVar2.f3161a);
            if (type != null) {
                str = str + ", type : " + type;
            }
            throw new com.alibaba.fastjson.f(str);
        }
        int i5 = 0;
        char c2 = fVar2.f3164d;
        int i6 = 15;
        if (c2 == '[') {
            int i7 = fVar2.f3165e + 1;
            fVar2.f3165e = i7;
            fVar2.f3164d = i7 >= fVar2.r ? (char) 26 : fVar2.q.charAt(i7);
            fVar2.f3161a = 14;
        } else if (c2 == '{') {
            int i8 = fVar2.f3165e + 1;
            fVar2.f3165e = i8;
            fVar2.f3164d = i8 >= fVar2.r ? (char) 26 : fVar2.q.charAt(i8);
            fVar2.f3161a = 12;
        } else if (c2 == '\"') {
            fVar2.j();
        } else if (c2 == ']') {
            int i9 = fVar2.f3165e + 1;
            fVar2.f3165e = i9;
            fVar2.f3164d = i9 >= fVar2.r ? (char) 26 : fVar2.q.charAt(i9);
            fVar2.f3161a = 15;
        } else {
            fVar2.e();
        }
        while (true) {
            int i10 = fVar2.f3161a;
            if (i10 == 16) {
                fVar2.e();
            } else {
                if (i10 == i6) {
                    break;
                }
                collection.add(fVar.a(cVar, type2, Integer.valueOf(i5)));
                if (cVar.n == 1) {
                    cVar.a(collection);
                }
                if (fVar2.f3161a == 16) {
                    char c3 = fVar2.f3164d;
                    if (c3 == '[') {
                        int i11 = fVar2.f3165e + 1;
                        fVar2.f3165e = i11;
                        fVar2.f3164d = i11 >= fVar2.r ? (char) 26 : fVar2.q.charAt(i11);
                        fVar2.f3161a = 14;
                    } else if (c3 == '{') {
                        int i12 = fVar2.f3165e + 1;
                        fVar2.f3165e = i12;
                        fVar2.f3164d = i12 >= fVar2.r ? (char) 26 : fVar2.q.charAt(i12);
                        fVar2.f3161a = 12;
                    } else if (c3 == '\"') {
                        fVar2.j();
                    } else {
                        fVar2.e();
                    }
                }
                i5++;
                i6 = 15;
            }
        }
        if (fVar2.f3164d == ',') {
            int i13 = fVar2.f3165e + 1;
            fVar2.f3165e = i13;
            fVar2.f3164d = i13 < fVar2.r ? fVar2.q.charAt(i13) : (char) 26;
            fVar2.f3161a = 16;
            return;
        }
        fVar2.e();
    }
}
