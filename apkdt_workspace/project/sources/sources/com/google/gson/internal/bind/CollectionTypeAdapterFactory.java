package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.p;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class CollectionTypeAdapterFactory implements p {

    /* renamed from: e, reason: collision with root package name */
    private final c f15349e;

    /* loaded from: classes2.dex */
    private static final class Adapter<E> extends TypeAdapter<Collection<E>> {

        /* renamed from: a, reason: collision with root package name */
        private final TypeAdapter<E> f15350a;

        /* renamed from: b, reason: collision with root package name */
        private final h<? extends Collection<E>> f15351b;

        public Adapter(Gson gson, Type type, TypeAdapter<E> typeAdapter, h<? extends Collection<E>> hVar) {
            this.f15350a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f15351b = hVar;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.gson.r.c cVar, Collection<E> collection) {
            if (collection == null) {
                cVar.q();
                return;
            }
            cVar.i();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f15350a.write(cVar, it.next());
            }
            cVar.k();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Collection<E> read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            Collection<E> a2 = this.f15351b.a();
            aVar.i();
            while (aVar.p()) {
                a2.add(this.f15350a.read2(aVar));
            }
            aVar.l();
            return a2;
        }
    }

    public CollectionTypeAdapterFactory(c cVar) {
        this.f15349e = cVar;
    }

    @Override // com.google.gson.p
    public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type a2 = com.google.gson.internal.b.a(type, (Class<?>) rawType);
        return new Adapter(gson, a2, gson.a((com.google.gson.q.a) com.google.gson.q.a.get(a2)), this.f15349e.a(aVar));
    }
}
