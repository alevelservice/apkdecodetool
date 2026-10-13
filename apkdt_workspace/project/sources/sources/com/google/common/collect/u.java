package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Hashing.java */
@GwtCompatible
/* loaded from: classes.dex */
final class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2) {
        return (int) (Integer.rotateLeft((int) (i2 * (-862048943)), 15) * 461845907);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(@NullableDecl Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, double d2) {
        int max = Math.max(i2, 2);
        int highestOneBit = Integer.highestOneBit(max);
        double d3 = highestOneBit;
        Double.isNaN(d3);
        if (max <= ((int) (d2 * d3))) {
            return highestOneBit;
        }
        int i3 = highestOneBit << 1;
        if (i3 > 0) {
            return i3;
        }
        return 1073741824;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i2, int i3, double d2) {
        double d3 = i2;
        double d4 = i3;
        Double.isNaN(d4);
        return d3 > d2 * d4 && i3 < 1073741824;
    }
}
