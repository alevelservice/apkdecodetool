package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.TypeAdapter;
import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.internal.k;
import com.google.gson.l;
import com.google.gson.m;
import com.google.gson.p;
import com.google.gson.r.c;

/* loaded from: classes2.dex */
public final class TreeTypeAdapter<T> extends TypeAdapter<T> {

    /* renamed from: a, reason: collision with root package name */
    private final m<T> f15384a;

    /* renamed from: b, reason: collision with root package name */
    private final h<T> f15385b;

    /* renamed from: c, reason: collision with root package name */
    final Gson f15386c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.gson.q.a<T> f15387d;

    /* renamed from: e, reason: collision with root package name */
    private final p f15388e;

    /* renamed from: f, reason: collision with root package name */
    private final TreeTypeAdapter<T>.b f15389f = new b();

    /* renamed from: g, reason: collision with root package name */
    private TypeAdapter<T> f15390g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class SingleTypeFactory implements p {

        /* renamed from: e, reason: collision with root package name */
        private final com.google.gson.q.a<?> f15391e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f15392f;

        /* renamed from: g, reason: collision with root package name */
        private final Class<?> f15393g;

        /* renamed from: h, reason: collision with root package name */
        private final m<?> f15394h;

        /* renamed from: i, reason: collision with root package name */
        private final h<?> f15395i;

        SingleTypeFactory(Object obj, com.google.gson.q.a<?> aVar, boolean z, Class<?> cls) {
            this.f15394h = obj instanceof m ? (m) obj : null;
            this.f15395i = obj instanceof h ? (h) obj : null;
            com.google.gson.internal.a.a((this.f15394h == null && this.f15395i == null) ? false : true);
            this.f15391e = aVar;
            this.f15392f = z;
            this.f15393g = cls;
        }

        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            boolean isAssignableFrom;
            com.google.gson.q.a<?> aVar2 = this.f15391e;
            if (aVar2 != null) {
                isAssignableFrom = aVar2.equals(aVar) || (this.f15392f && this.f15391e.getType() == aVar.getRawType());
            } else {
                isAssignableFrom = this.f15393g.isAssignableFrom(aVar.getRawType());
            }
            if (isAssignableFrom) {
                return new TreeTypeAdapter(this.f15394h, this.f15395i, gson, aVar, this);
            }
            return null;
        }
    }

    /* loaded from: classes2.dex */
    private final class b implements l, g {
        private b(TreeTypeAdapter treeTypeAdapter) {
        }
    }

    public TreeTypeAdapter(m<T> mVar, h<T> hVar, Gson gson, com.google.gson.q.a<T> aVar, p pVar) {
        this.f15384a = mVar;
        this.f15385b = hVar;
        this.f15386c = gson;
        this.f15387d = aVar;
        this.f15388e = pVar;
    }

    private TypeAdapter<T> a() {
        TypeAdapter<T> typeAdapter = this.f15390g;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter<T> a2 = this.f15386c.a(this.f15388e, this.f15387d);
        this.f15390g = a2;
        return a2;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public T read2(com.google.gson.r.a aVar) {
        if (this.f15385b == null) {
            return a().read2(aVar);
        }
        JsonElement a2 = k.a(aVar);
        if (a2.isJsonNull()) {
            return null;
        }
        return this.f15385b.a(a2, this.f15387d.getType(), this.f15389f);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, T t) {
        m<T> mVar = this.f15384a;
        if (mVar == null) {
            a().write(cVar, t);
        } else if (t == null) {
            cVar.q();
        } else {
            k.a(mVar.a(t, this.f15387d.getType(), this.f15389f), cVar);
        }
    }

    public static p a(com.google.gson.q.a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, aVar.getType() == aVar.getRawType(), null);
    }
}
