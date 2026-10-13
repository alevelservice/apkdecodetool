package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class f {
    @KeepForSdk
    @Deprecated
    public static <T> List<T> a() {
        return Collections.emptyList();
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> b(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set a2 = a(2, false);
            a2.add(t);
            a2.add(t2);
            return Collections.unmodifiableSet(a2);
        }
        if (length == 3) {
            return a(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set a3 = a(tArr.length, false);
            Collections.addAll(a3, tArr);
            return Collections.unmodifiableSet(a3);
        }
        T t3 = tArr[0];
        T t4 = tArr[1];
        T t5 = tArr[2];
        T t6 = tArr[3];
        Set a4 = a(4, false);
        a4.add(t3);
        a4.add(t4);
        a4.add(t5);
        a4.add(t6);
        return Collections.unmodifiableSet(a4);
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> a(T t) {
        return Collections.singletonList(t);
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> a(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return a();
        }
        if (length != 1) {
            return Collections.unmodifiableList(Arrays.asList(tArr));
        }
        return a(tArr[0]);
    }

    private static <T> Set<T> a(int i2, boolean z) {
        float f2 = z ? 0.75f : 1.0f;
        if (i2 <= (z ? 128 : 256)) {
            return new a.e.b(i2);
        }
        return new HashSet(i2, f2);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> a(T t, T t2, T t3) {
        Set a2 = a(3, false);
        a2.add(t);
        a2.add(t2);
        a2.add(t3);
        return Collections.unmodifiableSet(a2);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> a(K k2, V v, K k3, V v2, K k4, V v3) {
        Map b2 = b(3, false);
        b2.put(k2, v);
        b2.put(k3, v2);
        b2.put(k4, v3);
        return Collections.unmodifiableMap(b2);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> a(K[] kArr, V[] vArr) {
        if (kArr.length == vArr.length) {
            int length = kArr.length;
            if (length == 0) {
                return Collections.emptyMap();
            }
            if (length != 1) {
                Map b2 = b(kArr.length, false);
                for (int i2 = 0; i2 < kArr.length; i2++) {
                    b2.put(kArr[i2], vArr[i2]);
                }
                return Collections.unmodifiableMap(b2);
            }
            return Collections.singletonMap(kArr[0], vArr[0]);
        }
        int length2 = kArr.length;
        int length3 = vArr.length;
        StringBuilder sb = new StringBuilder(66);
        sb.append("Key and values array lengths not equal: ");
        sb.append(length2);
        sb.append(" != ");
        sb.append(length3);
        throw new IllegalArgumentException(sb.toString());
    }

    private static <K, V> Map<K, V> b(int i2, boolean z) {
        if (i2 <= 256) {
            return new a.e.a(i2);
        }
        return new HashMap(i2, 1.0f);
    }
}
