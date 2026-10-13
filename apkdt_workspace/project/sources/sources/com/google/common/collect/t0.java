package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Map;

/* compiled from: Multimap.java */
@GwtCompatible
/* loaded from: classes.dex */
public interface t0<K, V> {
    Map<K, Collection<V>> asMap();

    boolean isEmpty();

    int size();
}
