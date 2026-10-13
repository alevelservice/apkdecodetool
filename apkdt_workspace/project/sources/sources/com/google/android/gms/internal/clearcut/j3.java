package com.google.android.gms.internal.clearcut;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes.dex */
public final class j3<K, V> implements Comparable<j3>, Map.Entry<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final Comparable f11445e;

    /* renamed from: f, reason: collision with root package name */
    private V f11446f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ c3 f11447g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public j3(c3 c3Var, K k2, V v) {
        this.f11447g = c3Var;
        this.f11445e = k2;
        this.f11446f = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j3(c3 c3Var, Map.Entry<K, V> entry) {
        this(c3Var, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(j3 j3Var) {
        return ((Comparable) getKey()).compareTo((Comparable) j3Var.getKey());
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
        return a(this.f11445e, entry.getKey()) && a(this.f11446f, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f11445e;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f11446f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f11445e;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f11446f;
        return hashCode ^ (v != null ? v.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f11447g.f();
        V v2 = this.f11446f;
        this.f11446f = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f11445e);
        String valueOf2 = String.valueOf(this.f11446f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
