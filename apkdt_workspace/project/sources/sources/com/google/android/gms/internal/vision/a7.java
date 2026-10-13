package com.google.android.gms.internal.vision;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX WARN: Incorrect field signature: TK; */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class a7<K, V> implements Comparable<a7>, Map.Entry<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final Comparable f12294e;

    /* renamed from: f, reason: collision with root package name */
    private V f12295f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ v6 f12296g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a7(v6 v6Var, Map.Entry<K, V> entry) {
        this(v6Var, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(a7 a7Var) {
        return ((Comparable) getKey()).compareTo((Comparable) a7Var.getKey());
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
        return a(this.f12294e, entry.getKey()) && a(this.f12295f, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f12294e;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f12295f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f12294e;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f12295f;
        return hashCode ^ (v != null ? v.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f12296g.f();
        V v2 = this.f12295f;
        this.f12295f = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f12294e);
        String valueOf2 = String.valueOf(this.f12295f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public a7(v6 v6Var, K k2, V v) {
        this.f12296g = v6Var;
        this.f12294e = k2;
        this.f12295f = v;
    }
}
