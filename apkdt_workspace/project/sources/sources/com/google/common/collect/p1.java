package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;

/* compiled from: SortedIterable.java */
@GwtCompatible
/* loaded from: classes.dex */
interface p1<T> extends Iterable<T> {
    Comparator<? super T> comparator();
}
