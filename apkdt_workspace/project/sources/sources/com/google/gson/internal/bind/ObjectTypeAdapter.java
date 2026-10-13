package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.g;
import com.google.gson.p;
import com.google.gson.r.c;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class ObjectTypeAdapter extends TypeAdapter<Object> {

    /* renamed from: b, reason: collision with root package name */
    public static final p f15361b = new p() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter.1
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            if (aVar.getRawType() == Object.class) {
                return new ObjectTypeAdapter(gson);
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final Gson f15362a;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15363a = new int[com.google.gson.r.b.values().length];

        static {
            try {
                f15363a[com.google.gson.r.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15363a[com.google.gson.r.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15363a[com.google.gson.r.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15363a[com.google.gson.r.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15363a[com.google.gson.r.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15363a[com.google.gson.r.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    ObjectTypeAdapter(Gson gson) {
        this.f15362a = gson;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public Object read2(com.google.gson.r.a aVar) {
        switch (a.f15363a[aVar.C().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.i();
                while (aVar.p()) {
                    arrayList.add(read2(aVar));
                }
                aVar.l();
                return arrayList;
            case 2:
                g gVar = new g();
                aVar.j();
                while (aVar.p()) {
                    gVar.put(aVar.z(), read2(aVar));
                }
                aVar.m();
                return gVar;
            case 3:
                return aVar.B();
            case 4:
                return Double.valueOf(aVar.t());
            case 5:
                return Boolean.valueOf(aVar.s());
            case 6:
                aVar.A();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, Object obj) {
        if (obj == null) {
            cVar.q();
            return;
        }
        TypeAdapter a2 = this.f15362a.a((Class) obj.getClass());
        if (a2 instanceof ObjectTypeAdapter) {
            cVar.j();
            cVar.l();
        } else {
            a2.write(cVar, obj);
        }
    }
}
