package com.google.firebase.m;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Map;

/* compiled from: FieldDescriptor.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final String f15148a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, Object> f15149b;

    private d(String str, Map<Class<?>, Object> map) {
        this.f15148a = str;
        this.f15149b = map;
    }

    @NonNull
    public String a() {
        return this.f15148a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f15148a.equals(dVar.f15148a) && this.f15149b.equals(dVar.f15149b);
    }

    public int hashCode() {
        return (this.f15148a.hashCode() * 31) + this.f15149b.hashCode();
    }

    @NonNull
    public String toString() {
        return "FieldDescriptor{name=" + this.f15148a + ", properties=" + this.f15149b.values() + "}";
    }

    @NonNull
    public static d a(@NonNull String str) {
        return new d(str, Collections.emptyMap());
    }
}
