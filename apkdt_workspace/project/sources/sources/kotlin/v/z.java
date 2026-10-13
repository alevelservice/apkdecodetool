package kotlin.v;

import kotlin.PublishedApi;

/* compiled from: Maps.kt */
/* loaded from: classes2.dex */
class z extends y {
    @PublishedApi
    public static final int a(int i2) {
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return i2 + (i2 / 3);
        }
        return Integer.MAX_VALUE;
    }
}
