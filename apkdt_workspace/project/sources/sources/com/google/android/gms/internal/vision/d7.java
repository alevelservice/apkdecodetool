package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class d7<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f12327e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f12328f;

    /* renamed from: g, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f12329g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ v6 f12330h;

    private d7(v6 v6Var) {
        this.f12330h = v6Var;
        this.f12327e = -1;
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f12329g == null) {
            map = this.f12330h.f12557g;
            this.f12329g = map.entrySet().iterator();
        }
        return this.f12329g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i2 = this.f12327e + 1;
        list = this.f12330h.f12556f;
        if (i2 >= list.size()) {
            map = this.f12330h.f12557g;
            if (map.isEmpty() || !a().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f12328f = true;
        int i2 = this.f12327e + 1;
        this.f12327e = i2;
        list = this.f12330h.f12556f;
        if (i2 >= list.size()) {
            return a().next();
        }
        list2 = this.f12330h.f12556f;
        return (Map.Entry) list2.get(this.f12327e);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f12328f) {
            this.f12328f = false;
            this.f12330h.f();
            int i2 = this.f12327e;
            list = this.f12330h.f12556f;
            if (i2 < list.size()) {
                v6 v6Var = this.f12330h;
                int i3 = this.f12327e;
                this.f12327e = i3 - 1;
                v6Var.c(i3);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d7(v6 v6Var, u6 u6Var) {
        this(v6Var);
    }
}
