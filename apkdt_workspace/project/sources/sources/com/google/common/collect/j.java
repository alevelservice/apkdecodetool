package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;

/* compiled from: Collections2.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder a(int i2) {
        i.a(i2, "size");
        return new StringBuilder((int) Math.min(i2 * 8, 1073741824L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Collection<T> a(Iterable<T> iterable) {
        return (Collection) iterable;
    }
}
