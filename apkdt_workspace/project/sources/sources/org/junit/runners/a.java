package org.junit.runners;

import java.lang.reflect.Method;
import java.util.Comparator;

/* compiled from: MethodSorters.java */
/* loaded from: classes.dex */
public enum a {
    NAME_ASCENDING(org.junit.a.a.f20199b),
    JVM(null),
    DEFAULT(org.junit.a.a.f20198a);

    private final Comparator<Method> comparator;

    a(Comparator comparator) {
        this.comparator = comparator;
    }

    public Comparator<Method> getComparator() {
        return this.comparator;
    }
}
