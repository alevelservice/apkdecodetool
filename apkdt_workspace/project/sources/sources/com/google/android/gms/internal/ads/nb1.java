package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX WARN: Incorrect field signature: TK; */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class nb1<K, V> implements Comparable<nb1>, Map.Entry<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final Comparable f8313e;

    /* renamed from: f, reason: collision with root package name */
    private V f8314f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ ib1 f8315g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nb1(ib1 ib1Var, Map.Entry<K, V> entry) {
        this(ib1Var, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(nb1 nb1Var) {
        return ((Comparable) getKey()).compareTo((Comparable) nb1Var.getKey());
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
        return a(this.f8313e, entry.getKey()) && a(this.f8314f, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f8313e;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f8314f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f8313e;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f8314f;
        return hashCode ^ (v != null ? v.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f8315g.f();
        V v2 = this.f8314f;
        this.f8314f = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8313e);
        String valueOf2 = String.valueOf(this.f8314f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public nb1(ib1 ib1Var, K k2, V v) {
        this.f8315g = ib1Var;
        this.f8313e = k2;
        this.f8314f = v;
    }
}
