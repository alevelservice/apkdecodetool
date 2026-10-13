package com.google.firebase.r;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: GlobalLibraryVersionRegistrar.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static volatile d f15298b;

    /* renamed from: a, reason: collision with root package name */
    private final Set<f> f15299a = new HashSet();

    d() {
    }

    public static d b() {
        d dVar = f15298b;
        if (dVar == null) {
            synchronized (d.class) {
                dVar = f15298b;
                if (dVar == null) {
                    dVar = new d();
                    f15298b = dVar;
                }
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<f> a() {
        Set<f> unmodifiableSet;
        synchronized (this.f15299a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f15299a);
        }
        return unmodifiableSet;
    }
}
