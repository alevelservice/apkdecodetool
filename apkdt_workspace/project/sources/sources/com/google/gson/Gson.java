package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes.dex */
public final class Gson {

    /* renamed from: k, reason: collision with root package name */
    private static final com.google.gson.q.a<?> f15304k = com.google.gson.q.a.get(Object.class);

    /* renamed from: a, reason: collision with root package name */
    private final ThreadLocal<Map<com.google.gson.q.a<?>, FutureTypeAdapter<?>>> f15305a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<com.google.gson.q.a<?>, TypeAdapter<?>> f15306b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.gson.internal.c f15307c;

    /* renamed from: d, reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f15308d;

    /* renamed from: e, reason: collision with root package name */
    final List<p> f15309e;

    /* renamed from: f, reason: collision with root package name */
    final boolean f15310f;

    /* renamed from: g, reason: collision with root package name */
    final boolean f15311g;

    /* renamed from: h, reason: collision with root package name */
    final boolean f15312h;

    /* renamed from: i, reason: collision with root package name */
    final boolean f15313i;

    /* renamed from: j, reason: collision with root package name */
    final boolean f15314j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FutureTypeAdapter<T> extends TypeAdapter<T> {

        /* renamed from: a, reason: collision with root package name */
        private TypeAdapter<T> f15317a;

        FutureTypeAdapter() {
        }

        public void a(TypeAdapter<T> typeAdapter) {
            if (this.f15317a == null) {
                this.f15317a = typeAdapter;
                return;
            }
            throw new AssertionError();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public T read2(com.google.gson.r.a aVar) {
            TypeAdapter<T> typeAdapter = this.f15317a;
            if (typeAdapter != null) {
                return typeAdapter.read2(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.TypeAdapter
        public void write(com.google.gson.r.c cVar, T t) {
            TypeAdapter<T> typeAdapter = this.f15317a;
            if (typeAdapter != null) {
                typeAdapter.write(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public Gson() {
        this(Excluder.f15332k, c.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, o.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    private TypeAdapter<Number> a(boolean z) {
        if (z) {
            return TypeAdapters.v;
        }
        return new TypeAdapter<Number>(this) { // from class: com.google.gson.Gson.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.gson.r.c cVar, Number number) {
                if (number == null) {
                    cVar.q();
                } else {
                    Gson.a(number.doubleValue());
                    cVar.a(number);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read, reason: merged with bridge method [inline-methods] */
            public Number read2(com.google.gson.r.a aVar) {
                if (aVar.C() == com.google.gson.r.b.NULL) {
                    aVar.A();
                    return null;
                }
                return Double.valueOf(aVar.t());
            }
        };
    }

    private TypeAdapter<Number> b(boolean z) {
        if (z) {
            return TypeAdapters.u;
        }
        return new TypeAdapter<Number>(this) { // from class: com.google.gson.Gson.2
            @Override // com.google.gson.TypeAdapter
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.gson.r.c cVar, Number number) {
                if (number == null) {
                    cVar.q();
                } else {
                    Gson.a(number.floatValue());
                    cVar.a(number);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public Number read2(com.google.gson.r.a aVar) {
                if (aVar.C() == com.google.gson.r.b.NULL) {
                    aVar.A();
                    return null;
                }
                return Float.valueOf((float) aVar.t());
            }
        };
    }

    public String toString() {
        return "{serializeNulls:" + this.f15310f + ",factories:" + this.f15309e + ",instanceCreators:" + this.f15307c + "}";
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static TypeAdapter<AtomicLongArray> b(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLongArray>() { // from class: com.google.gson.Gson.5
            @Override // com.google.gson.TypeAdapter
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.gson.r.c cVar, AtomicLongArray atomicLongArray) {
                cVar.i();
                int length = atomicLongArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    TypeAdapter.this.write(cVar, Long.valueOf(atomicLongArray.get(i2)));
                }
                cVar.k();
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read, reason: avoid collision after fix types in other method */
            public AtomicLongArray read2(com.google.gson.r.a aVar) {
                ArrayList arrayList = new ArrayList();
                aVar.i();
                while (aVar.p()) {
                    arrayList.add(Long.valueOf(((Number) TypeAdapter.this.read2(aVar)).longValue()));
                }
                aVar.l();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
                }
                return atomicLongArray;
            }
        }.nullSafe();
    }

    private static TypeAdapter<Number> a(o oVar) {
        if (oVar == o.DEFAULT) {
            return TypeAdapters.t;
        }
        return new TypeAdapter<Number>() { // from class: com.google.gson.Gson.3
            @Override // com.google.gson.TypeAdapter
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.gson.r.c cVar, Number number) {
                if (number == null) {
                    cVar.q();
                } else {
                    cVar.d(number.toString());
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public Number read2(com.google.gson.r.a aVar) {
                if (aVar.C() == com.google.gson.r.b.NULL) {
                    aVar.A();
                    return null;
                }
                return Long.valueOf(aVar.v());
            }
        };
    }

    public JsonElement b(Object obj) {
        if (obj == null) {
            return j.f15470a;
        }
        return b(obj, obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gson(Excluder excluder, d dVar, Map<Type, f<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, o oVar, String str, int i2, int i3, List<p> list, List<p> list2, List<p> list3) {
        this.f15305a = new ThreadLocal<>();
        this.f15306b = new ConcurrentHashMap();
        this.f15307c = new com.google.gson.internal.c(map);
        this.f15310f = z;
        this.f15311g = z3;
        this.f15312h = z4;
        this.f15313i = z5;
        this.f15314j = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.Y);
        arrayList.add(ObjectTypeAdapter.f15361b);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.D);
        arrayList.add(TypeAdapters.m);
        arrayList.add(TypeAdapters.f15405g);
        arrayList.add(TypeAdapters.f15407i);
        arrayList.add(TypeAdapters.f15409k);
        TypeAdapter<Number> a2 = a(oVar);
        arrayList.add(TypeAdapters.a(Long.TYPE, Long.class, a2));
        arrayList.add(TypeAdapters.a(Double.TYPE, Double.class, a(z7)));
        arrayList.add(TypeAdapters.a(Float.TYPE, Float.class, b(z7)));
        arrayList.add(TypeAdapters.x);
        arrayList.add(TypeAdapters.o);
        arrayList.add(TypeAdapters.q);
        arrayList.add(TypeAdapters.a(AtomicLong.class, a(a2)));
        arrayList.add(TypeAdapters.a(AtomicLongArray.class, b(a2)));
        arrayList.add(TypeAdapters.s);
        arrayList.add(TypeAdapters.z);
        arrayList.add(TypeAdapters.F);
        arrayList.add(TypeAdapters.H);
        arrayList.add(TypeAdapters.a(BigDecimal.class, TypeAdapters.B));
        arrayList.add(TypeAdapters.a(BigInteger.class, TypeAdapters.C));
        arrayList.add(TypeAdapters.J);
        arrayList.add(TypeAdapters.L);
        arrayList.add(TypeAdapters.P);
        arrayList.add(TypeAdapters.R);
        arrayList.add(TypeAdapters.W);
        arrayList.add(TypeAdapters.N);
        arrayList.add(TypeAdapters.f15402d);
        arrayList.add(DateTypeAdapter.f15352b);
        arrayList.add(TypeAdapters.U);
        arrayList.add(TimeTypeAdapter.f15382b);
        arrayList.add(SqlDateTypeAdapter.f15380b);
        arrayList.add(TypeAdapters.S);
        arrayList.add(ArrayTypeAdapter.f15346c);
        arrayList.add(TypeAdapters.f15400b);
        arrayList.add(new CollectionTypeAdapterFactory(this.f15307c));
        arrayList.add(new MapTypeAdapterFactory(this.f15307c, z2));
        this.f15308d = new JsonAdapterAnnotationTypeAdapterFactory(this.f15307c);
        arrayList.add(this.f15308d);
        arrayList.add(TypeAdapters.Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.f15307c, dVar, excluder, this.f15308d));
        this.f15309e = Collections.unmodifiableList(arrayList);
    }

    public JsonElement b(Object obj, Type type) {
        com.google.gson.internal.bind.b bVar = new com.google.gson.internal.bind.b();
        a(obj, type, bVar);
        return bVar.r();
    }

    private static TypeAdapter<AtomicLong> a(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLong>() { // from class: com.google.gson.Gson.4
            @Override // com.google.gson.TypeAdapter
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.gson.r.c cVar, AtomicLong atomicLong) {
                TypeAdapter.this.write(cVar, Long.valueOf(atomicLong.get()));
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read, reason: avoid collision after fix types in other method */
            public AtomicLong read2(com.google.gson.r.a aVar) {
                return new AtomicLong(((Number) TypeAdapter.this.read2(aVar)).longValue());
            }
        }.nullSafe();
    }

    public <T> TypeAdapter<T> a(com.google.gson.q.a<T> aVar) {
        TypeAdapter<T> typeAdapter = (TypeAdapter) this.f15306b.get(aVar == null ? f15304k : aVar);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        Map<com.google.gson.q.a<?>, FutureTypeAdapter<?>> map = this.f15305a.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.f15305a.set(map);
            z = true;
        }
        FutureTypeAdapter<?> futureTypeAdapter = map.get(aVar);
        if (futureTypeAdapter != null) {
            return futureTypeAdapter;
        }
        try {
            FutureTypeAdapter<?> futureTypeAdapter2 = new FutureTypeAdapter<>();
            map.put(aVar, futureTypeAdapter2);
            Iterator<p> it = this.f15309e.iterator();
            while (it.hasNext()) {
                TypeAdapter<T> create = it.next().create(this, aVar);
                if (create != null) {
                    futureTypeAdapter2.a(create);
                    this.f15306b.put(aVar, create);
                    return create;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.6) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z) {
                this.f15305a.remove();
            }
        }
    }

    public <T> TypeAdapter<T> a(p pVar, com.google.gson.q.a<T> aVar) {
        if (!this.f15309e.contains(pVar)) {
            pVar = this.f15308d;
        }
        boolean z = false;
        for (p pVar2 : this.f15309e) {
            if (z) {
                TypeAdapter<T> create = pVar2.create(this, aVar);
                if (create != null) {
                    return create;
                }
            } else if (pVar2 == pVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public <T> TypeAdapter<T> a(Class<T> cls) {
        return a((com.google.gson.q.a) com.google.gson.q.a.get((Class) cls));
    }

    public String a(Object obj) {
        if (obj == null) {
            return a((JsonElement) j.f15470a);
        }
        return a(obj, obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) {
        try {
            a(obj, type, a(com.google.gson.internal.k.a(appendable)));
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    public void a(Object obj, Type type, com.google.gson.r.c cVar) {
        TypeAdapter a2 = a((com.google.gson.q.a) com.google.gson.q.a.get(type));
        boolean p = cVar.p();
        cVar.b(true);
        boolean o = cVar.o();
        cVar.a(this.f15312h);
        boolean m = cVar.m();
        cVar.c(this.f15310f);
        try {
            try {
                a2.write(cVar, obj);
            } catch (IOException e2) {
                throw new i(e2);
            } catch (AssertionError e3) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e3.getMessage());
                assertionError.initCause(e3);
                throw assertionError;
            }
        } finally {
            cVar.b(p);
            cVar.a(o);
            cVar.c(m);
        }
    }

    public String a(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        a(jsonElement, stringWriter);
        return stringWriter.toString();
    }

    public void a(JsonElement jsonElement, Appendable appendable) {
        try {
            a(jsonElement, a(com.google.gson.internal.k.a(appendable)));
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    public com.google.gson.r.c a(Writer writer) {
        if (this.f15311g) {
            writer.write(")]}'\n");
        }
        com.google.gson.r.c cVar = new com.google.gson.r.c(writer);
        if (this.f15313i) {
            cVar.c("  ");
        }
        cVar.c(this.f15310f);
        return cVar;
    }

    public com.google.gson.r.a a(Reader reader) {
        com.google.gson.r.a aVar = new com.google.gson.r.a(reader);
        aVar.a(this.f15314j);
        return aVar;
    }

    public void a(JsonElement jsonElement, com.google.gson.r.c cVar) {
        boolean p = cVar.p();
        cVar.b(true);
        boolean o = cVar.o();
        cVar.a(this.f15312h);
        boolean m = cVar.m();
        cVar.c(this.f15310f);
        try {
            try {
                com.google.gson.internal.k.a(jsonElement, cVar);
            } catch (IOException e2) {
                throw new i(e2);
            } catch (AssertionError e3) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e3.getMessage());
                assertionError.initCause(e3);
                throw assertionError;
            }
        } finally {
            cVar.b(p);
            cVar.a(o);
            cVar.c(m);
        }
    }

    public <T> T a(String str, Class<T> cls) {
        return (T) com.google.gson.internal.j.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Class<T> cls) {
        com.google.gson.r.a a2 = a(reader);
        Object a3 = a(a2, (Type) cls);
        a(a3, a2);
        return (T) com.google.gson.internal.j.a((Class) cls).cast(a3);
    }

    public <T> T a(Reader reader, Type type) {
        com.google.gson.r.a a2 = a(reader);
        T t = (T) a(a2, type);
        a(t, a2);
        return t;
    }

    private static void a(Object obj, com.google.gson.r.a aVar) {
        if (obj != null) {
            try {
                if (aVar.C() == com.google.gson.r.b.END_DOCUMENT) {
                } else {
                    throw new i("JSON document was not fully consumed.");
                }
            } catch (com.google.gson.r.d e2) {
                throw new n(e2);
            } catch (IOException e3) {
                throw new i(e3);
            }
        }
    }

    public <T> T a(com.google.gson.r.a aVar, Type type) {
        boolean q = aVar.q();
        boolean z = true;
        aVar.a(true);
        try {
            try {
                try {
                    aVar.C();
                    z = false;
                    T read2 = a((com.google.gson.q.a) com.google.gson.q.a.get(type)).read2(aVar);
                    aVar.a(q);
                    return read2;
                } catch (AssertionError e2) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                    assertionError.initCause(e2);
                    throw assertionError;
                } catch (IllegalStateException e3) {
                    throw new n(e3);
                }
            } catch (EOFException e4) {
                if (z) {
                    aVar.a(q);
                    return null;
                }
                throw new n(e4);
            } catch (IOException e5) {
                throw new n(e5);
            }
        } catch (Throwable th) {
            aVar.a(q);
            throw th;
        }
    }

    public <T> T a(JsonElement jsonElement, Class<T> cls) {
        return (T) com.google.gson.internal.j.a((Class) cls).cast(a(jsonElement, (Type) cls));
    }

    public <T> T a(JsonElement jsonElement, Type type) {
        if (jsonElement == null) {
            return null;
        }
        return (T) a((com.google.gson.r.a) new com.google.gson.internal.bind.a(jsonElement), type);
    }
}
