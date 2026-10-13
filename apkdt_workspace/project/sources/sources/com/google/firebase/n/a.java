package com.google.firebase.n;

import com.google.firebase.components.c0;

/* compiled from: Event.java */
/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Class<T> f15278a;

    /* renamed from: b, reason: collision with root package name */
    private final T f15279b;

    public a(Class<T> cls, T t) {
        c0.a(cls);
        this.f15278a = cls;
        c0.a(t);
        this.f15279b = t;
    }

    public Class<T> a() {
        return this.f15278a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f15278a, this.f15279b);
    }
}
