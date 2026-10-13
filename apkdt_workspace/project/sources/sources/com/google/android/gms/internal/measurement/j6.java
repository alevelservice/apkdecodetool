package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes.dex */
public final class j6<K, V> implements Comparable<j6>, Map.Entry<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final Comparable f11929e;

    /* renamed from: f, reason: collision with root package name */
    private V f11930f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ e6 f11931g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j6(e6 e6Var, Map.Entry<K, V> entry) {
        this(e6Var, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(j6 j6Var) {
        return ((Comparable) getKey()).compareTo((Comparable) j6Var.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return a(this.f11929e, entry.getKey()) && a(this.f11930f, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f11929e;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f11930f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f11929e;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f11930f;
        return hashCode ^ (v != null ? v.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f11931g.f();
        V v2 = this.f11930f;
        this.f11930f = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f11929e);
        String valueOf2 = String.valueOf(this.f11930f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public j6(e6 e6Var, K k2, V v) {
        this.f11931g = e6Var;
        this.f11929e = k2;
        this.f11930f = v;
    }
}
