package com.mapbox.android.gestures;

import androidx.annotation.IntRange;

/* compiled from: PermittedActionsGuard.java */
/* loaded from: classes2.dex */
class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i2, @IntRange(from = 0) int i3, @IntRange(from = 0) int i4) {
        long a2 = a(i3, i4);
        long j2 = i2;
        if (j2 == a2) {
            return false;
        }
        while (a2 != 0) {
            if (j2 == (255 & a2)) {
                return false;
            }
            a2 >>= 8;
        }
        return true;
    }

    private long a(@IntRange(from = 0) int i2, @IntRange(from = 0) int i3) {
        if (i3 == 0) {
            return 0L;
        }
        if (Math.abs(i2 - i3) > 1) {
            return 255L;
        }
        if (i2 > i3) {
            return 5L;
        }
        if (i2 < i3) {
            return 255L;
        }
        return ((i2 == 1 ? 1L : 6L) << 8) + 2;
    }
}
