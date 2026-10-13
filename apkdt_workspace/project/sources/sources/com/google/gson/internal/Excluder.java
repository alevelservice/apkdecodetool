package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.p;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Excluder implements p, Cloneable {

    /* renamed from: k, reason: collision with root package name */
    public static final Excluder f15332k = new Excluder();

    /* renamed from: h, reason: collision with root package name */
    private boolean f15336h;

    /* renamed from: e, reason: collision with root package name */
    private double f15333e = -1.0d;

    /* renamed from: f, reason: collision with root package name */
    private int f15334f = 136;

    /* renamed from: g, reason: collision with root package name */
    private boolean f15335g = true;

    /* renamed from: i, reason: collision with root package name */
    private List<com.google.gson.a> f15337i = Collections.emptyList();

    /* renamed from: j, reason: collision with root package name */
    private List<com.google.gson.a> f15338j = Collections.emptyList();

    private boolean b(Class<?> cls, boolean z) {
        Iterator<com.google.gson.a> it = (z ? this.f15337i : this.f15338j).iterator();
        while (it.hasNext()) {
            if (it.next().a(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public boolean a(Field field, boolean z) {
        Expose expose;
        if ((this.f15334f & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f15333e != -1.0d && !a((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f15336h && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z ? expose.deserialize() : expose.serialize()))) {
            return true;
        }
        if ((!this.f15335g && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<com.google.gson.a> list = z ? this.f15337i : this.f15338j;
        if (list.isEmpty()) {
            return false;
        }
        com.google.gson.b bVar = new com.google.gson.b(field);
        Iterator<com.google.gson.a> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().a(bVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.gson.p
    public <T> TypeAdapter<T> create(final Gson gson, final com.google.gson.q.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        boolean a2 = a(rawType);
        final boolean z = a2 || b(rawType, true);
        final boolean z2 = a2 || b(rawType, false);
        if (z || z2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1

                /* renamed from: a, reason: collision with root package name */
                private TypeAdapter<T> f15339a;

                private TypeAdapter<T> a() {
                    TypeAdapter<T> typeAdapter = this.f15339a;
                    if (typeAdapter != null) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> a3 = gson.a(Excluder.this, aVar);
                    this.f15339a = a3;
                    return a3;
                }

                @Override // com.google.gson.TypeAdapter
                /* renamed from: read */
                public T read2(com.google.gson.r.a aVar2) {
                    if (z2) {
                        aVar2.D();
                        return null;
                    }
                    return a().read2(aVar2);
                }

                @Override // com.google.gson.TypeAdapter
                public void write(com.google.gson.r.c cVar, T t) {
                    if (z) {
                        cVar.q();
                    } else {
                        a().write(cVar, t);
                    }
                }
            };
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Excluder m7clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    private boolean b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean a(Class<?> cls) {
        if (this.f15333e == -1.0d || a((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return (!this.f15335g && c(cls)) || b(cls);
        }
        return true;
    }

    public boolean a(Class<?> cls, boolean z) {
        return a(cls) || b(cls, z);
    }

    private boolean a(Since since, Until until) {
        return a(since) && a(until);
    }

    private boolean a(Since since) {
        return since == null || since.value() <= this.f15333e;
    }

    private boolean a(Until until) {
        return until == null || until.value() > this.f15333e;
    }
}
