package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.d;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.internal.j;
import com.google.gson.n;
import com.google.gson.p;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ReflectiveTypeAdapterFactory implements p {

    /* renamed from: e, reason: collision with root package name */
    private final c f15364e;

    /* renamed from: f, reason: collision with root package name */
    private final d f15365f;

    /* renamed from: g, reason: collision with root package name */
    private final Excluder f15366g;

    /* renamed from: h, reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f15367h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.gson.internal.m.b f15368i = com.google.gson.internal.m.b.a();

    /* loaded from: classes2.dex */
    public static final class Adapter<T> extends TypeAdapter<T> {

        /* renamed from: a, reason: collision with root package name */
        private final h<T> f15369a;

        /* renamed from: b, reason: collision with root package name */
        private final Map<String, b> f15370b;

        Adapter(h<T> hVar, Map<String, b> map) {
            this.f15369a = hVar;
            this.f15370b = map;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public T read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            T a2 = this.f15369a.a();
            try {
                aVar.j();
                while (aVar.p()) {
                    b bVar = this.f15370b.get(aVar.z());
                    if (bVar != null && bVar.f15379c) {
                        bVar.a(aVar, a2);
                    }
                    aVar.D();
                }
                aVar.m();
                return a2;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (IllegalStateException e3) {
                throw new n(e3);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(com.google.gson.r.c cVar, T t) {
            if (t == null) {
                cVar.q();
                return;
            }
            cVar.j();
            try {
                for (b bVar : this.f15370b.values()) {
                    if (bVar.a(t)) {
                        cVar.b(bVar.f15377a);
                        bVar.a(cVar, t);
                    }
                }
                cVar.l();
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        final String f15377a;

        /* renamed from: b, reason: collision with root package name */
        final boolean f15378b;

        /* renamed from: c, reason: collision with root package name */
        final boolean f15379c;

        protected b(String str, boolean z, boolean z2) {
            this.f15377a = str;
            this.f15378b = z;
            this.f15379c = z2;
        }

        abstract void a(com.google.gson.r.a aVar, Object obj);

        abstract void a(com.google.gson.r.c cVar, Object obj);

        abstract boolean a(Object obj);
    }

    public ReflectiveTypeAdapterFactory(c cVar, d dVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f15364e = cVar;
        this.f15365f = dVar;
        this.f15366g = excluder;
        this.f15367h = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public boolean a(Field field, boolean z) {
        return a(field, z, this.f15366g);
    }

    @Override // com.google.gson.p
    public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new Adapter(this.f15364e.a(aVar), a(gson, (com.google.gson.q.a<?>) aVar, (Class<?>) rawType));
        }
        return null;
    }

    static boolean a(Field field, boolean z, Excluder excluder) {
        return (excluder.a(field.getType(), z) || excluder.a(field, z)) ? false : true;
    }

    private List<String> a(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.f15365f.translateName(field));
        }
        String value = serializedName.value();
        String[] alternate = serializedName.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        for (String str : alternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends b {

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Field f15371d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f15372e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ TypeAdapter f15373f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Gson f15374g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ com.google.gson.q.a f15375h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ boolean f15376i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory, String str, boolean z, boolean z2, Field field, boolean z3, TypeAdapter typeAdapter, Gson gson, com.google.gson.q.a aVar, boolean z4) {
            super(str, z, z2);
            this.f15371d = field;
            this.f15372e = z3;
            this.f15373f = typeAdapter;
            this.f15374g = gson;
            this.f15375h = aVar;
            this.f15376i = z4;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void a(com.google.gson.r.c cVar, Object obj) {
            (this.f15372e ? this.f15373f : new TypeAdapterRuntimeTypeWrapper(this.f15374g, this.f15373f, this.f15375h.getType())).write(cVar, this.f15371d.get(obj));
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void a(com.google.gson.r.a aVar, Object obj) {
            Object read2 = this.f15373f.read2(aVar);
            if (read2 == null && this.f15376i) {
                return;
            }
            this.f15371d.set(obj, read2);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        public boolean a(Object obj) {
            return this.f15378b && this.f15371d.get(obj) != obj;
        }
    }

    private b a(Gson gson, Field field, String str, com.google.gson.q.a<?> aVar, boolean z, boolean z2) {
        boolean a2 = j.a((Type) aVar.getRawType());
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> a3 = jsonAdapter != null ? this.f15367h.a(this.f15364e, gson, aVar, jsonAdapter) : null;
        boolean z3 = a3 != null;
        if (a3 == null) {
            a3 = gson.a((com.google.gson.q.a) aVar);
        }
        return new a(this, str, z, z2, field, z3, a3, gson, aVar, a2);
    }

    private Map<String, b> a(Gson gson, com.google.gson.q.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = aVar.getType();
        com.google.gson.q.a<?> aVar2 = aVar;
        Class<?> cls2 = cls;
        while (cls2 != Object.class) {
            Field[] declaredFields = cls2.getDeclaredFields();
            int length = declaredFields.length;
            boolean z = false;
            int i2 = 0;
            while (i2 < length) {
                Field field = declaredFields[i2];
                boolean a2 = a(field, true);
                boolean a3 = a(field, z);
                if (a2 || a3) {
                    this.f15368i.a(field);
                    Type a4 = com.google.gson.internal.b.a(aVar2.getType(), cls2, field.getGenericType());
                    List<String> a5 = a(field);
                    int size = a5.size();
                    b bVar = null;
                    int i3 = 0;
                    while (i3 < size) {
                        String str = a5.get(i3);
                        boolean z2 = i3 != 0 ? false : a2;
                        b bVar2 = bVar;
                        int i4 = i3;
                        int i5 = size;
                        List<String> list = a5;
                        Field field2 = field;
                        bVar = bVar2 == null ? (b) linkedHashMap.put(str, a(gson, field, str, com.google.gson.q.a.get(a4), z2, a3)) : bVar2;
                        i3 = i4 + 1;
                        a2 = z2;
                        a5 = list;
                        size = i5;
                        field = field2;
                    }
                    b bVar3 = bVar;
                    if (bVar3 != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + bVar3.f15377a);
                    }
                }
                i2++;
                z = false;
            }
            aVar2 = com.google.gson.q.a.get(com.google.gson.internal.b.a(aVar2.getType(), cls2, cls2.getGenericSuperclass()));
            cls2 = aVar2.getRawType();
        }
        return linkedHashMap;
    }
}
