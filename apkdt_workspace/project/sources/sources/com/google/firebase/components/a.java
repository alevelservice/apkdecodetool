package com.google.firebase.components;

import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractComponentContainer.java */
/* loaded from: classes.dex */
public abstract class a implements e {
    @Override // com.google.firebase.components.e
    public <T> T a(Class<T> cls) {
        com.google.firebase.p.b<T> b2 = b(cls);
        if (b2 == null) {
            return null;
        }
        return b2.get();
    }

    @Override // com.google.firebase.components.e
    public <T> Set<T> d(Class<T> cls) {
        return c(cls).get();
    }
}
