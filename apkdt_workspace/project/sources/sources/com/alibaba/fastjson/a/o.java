package com.alibaba.fastjson.a;

import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: ResolveFieldDeserializer.java */
/* loaded from: classes.dex */
final class o extends com.alibaba.fastjson.a.a.d {

    /* renamed from: e, reason: collision with root package name */
    private final int f3209e;

    /* renamed from: f, reason: collision with root package name */
    private final List f3210f;

    /* renamed from: g, reason: collision with root package name */
    private final c f3211g;

    /* renamed from: h, reason: collision with root package name */
    private final Object f3212h;

    /* renamed from: i, reason: collision with root package name */
    private final Map f3213i;

    /* renamed from: j, reason: collision with root package name */
    private final Collection f3214j;

    public o(c cVar, List list, int i2) {
        super(null, null, 0);
        this.f3211g = cVar;
        this.f3209e = i2;
        this.f3210f = list;
        this.f3212h = null;
        this.f3213i = null;
        this.f3214j = null;
    }

    @Override // com.alibaba.fastjson.a.a.d
    public void a(c cVar, Object obj, Type type, Map<String, Object> map) {
    }

    @Override // com.alibaba.fastjson.a.a.d
    public void a(Object obj, Object obj2) {
        com.alibaba.fastjson.b bVar;
        Object relatedArray;
        Map map = this.f3213i;
        if (map != null) {
            map.put(this.f3212h, obj2);
            return;
        }
        Collection collection = this.f3214j;
        if (collection != null) {
            collection.add(obj2);
            return;
        }
        this.f3210f.set(this.f3209e, obj2);
        List list = this.f3210f;
        if (!(list instanceof com.alibaba.fastjson.b) || (relatedArray = (bVar = (com.alibaba.fastjson.b) list).getRelatedArray()) == null || Array.getLength(relatedArray) <= this.f3209e) {
            return;
        }
        if (bVar.getComponentType() != null) {
            obj2 = com.alibaba.fastjson.e.d.a(obj2, bVar.getComponentType(), this.f3211g.f3145f);
        }
        Array.set(relatedArray, this.f3209e, obj2);
    }

    public o(Map map, Object obj) {
        super(null, null, 0);
        this.f3211g = null;
        this.f3209e = -1;
        this.f3210f = null;
        this.f3212h = obj;
        this.f3213i = map;
        this.f3214j = null;
    }

    public o(Collection collection) {
        super(null, null, 0);
        this.f3211g = null;
        this.f3209e = -1;
        this.f3210f = null;
        this.f3212h = null;
        this.f3213i = null;
        this.f3214j = collection;
    }
}
