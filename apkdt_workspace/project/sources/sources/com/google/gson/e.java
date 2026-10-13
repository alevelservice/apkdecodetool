package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: GsonBuilder.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: h, reason: collision with root package name */
    private String f15327h;

    /* renamed from: a, reason: collision with root package name */
    private Excluder f15320a = Excluder.f15332k;

    /* renamed from: b, reason: collision with root package name */
    private o f15321b = o.DEFAULT;

    /* renamed from: c, reason: collision with root package name */
    private d f15322c = c.IDENTITY;

    /* renamed from: d, reason: collision with root package name */
    private final Map<Type, f<?>> f15323d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private final List<p> f15324e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    private final List<p> f15325f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    private boolean f15326g = false;

    /* renamed from: i, reason: collision with root package name */
    private int f15328i = 2;

    /* renamed from: j, reason: collision with root package name */
    private int f15329j = 2;

    /* renamed from: k, reason: collision with root package name */
    private boolean f15330k = false;

    /* renamed from: l, reason: collision with root package name */
    private boolean f15331l = false;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;

    public e a(Type type, Object obj) {
        boolean z = obj instanceof m;
        com.google.gson.internal.a.a(z || (obj instanceof h) || (obj instanceof f) || (obj instanceof TypeAdapter));
        if (obj instanceof f) {
            this.f15323d.put(type, (f) obj);
        }
        if (z || (obj instanceof h)) {
            this.f15324e.add(TreeTypeAdapter.a(com.google.gson.q.a.get(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            this.f15324e.add(TypeAdapters.a(com.google.gson.q.a.get(type), (TypeAdapter) obj));
        }
        return this;
    }

    public e b() {
        this.f15326g = true;
        return this;
    }

    public e a(p pVar) {
        this.f15324e.add(pVar);
        return this;
    }

    public Gson a() {
        List<p> arrayList = new ArrayList<>(this.f15324e.size() + this.f15325f.size() + 3);
        arrayList.addAll(this.f15324e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f15325f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.f15327h, this.f15328i, this.f15329j, arrayList);
        return new Gson(this.f15320a, this.f15322c, this.f15323d, this.f15326g, this.f15330k, this.o, this.m, this.n, this.p, this.f15331l, this.f15321b, this.f15327h, this.f15328i, this.f15329j, this.f15324e, this.f15325f, arrayList);
    }

    private void a(String str, int i2, int i3, List<p> list) {
        DefaultDateTypeAdapter defaultDateTypeAdapter;
        DefaultDateTypeAdapter defaultDateTypeAdapter2;
        DefaultDateTypeAdapter defaultDateTypeAdapter3;
        if (str != null && !"".equals(str.trim())) {
            DefaultDateTypeAdapter defaultDateTypeAdapter4 = new DefaultDateTypeAdapter(Date.class, str);
            defaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Timestamp.class, str);
            defaultDateTypeAdapter3 = new DefaultDateTypeAdapter(java.sql.Date.class, str);
            defaultDateTypeAdapter = defaultDateTypeAdapter4;
        } else {
            if (i2 == 2 || i3 == 2) {
                return;
            }
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(Date.class, i2, i3);
            DefaultDateTypeAdapter defaultDateTypeAdapter5 = new DefaultDateTypeAdapter(Timestamp.class, i2, i3);
            DefaultDateTypeAdapter defaultDateTypeAdapter6 = new DefaultDateTypeAdapter(java.sql.Date.class, i2, i3);
            defaultDateTypeAdapter2 = defaultDateTypeAdapter5;
            defaultDateTypeAdapter3 = defaultDateTypeAdapter6;
        }
        list.add(TypeAdapters.a(Date.class, defaultDateTypeAdapter));
        list.add(TypeAdapters.a(Timestamp.class, defaultDateTypeAdapter2));
        list.add(TypeAdapters.a(java.sql.Date.class, defaultDateTypeAdapter3));
    }
}
