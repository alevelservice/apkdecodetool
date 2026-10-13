package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;

/* compiled from: DependencyCycleException.java */
/* loaded from: classes.dex */
public class r extends s {
    private final List<d<?>> componentsInCycle;

    public r(List<d<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<d<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}
