package com.google.android.datatransport.cct.f;

import android.util.SparseArray;
import androidx.annotation.Nullable;

/* compiled from: QosTier.java */
/* loaded from: classes.dex */
public enum p {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);


    /* renamed from: e, reason: collision with root package name */
    private static final SparseArray<p> f4360e = new SparseArray<>();
    private final int value;

    static {
        f4360e.put(0, DEFAULT);
        f4360e.put(1, UNMETERED_ONLY);
        f4360e.put(2, UNMETERED_OR_DAILY);
        f4360e.put(3, FAST_IF_RADIO_AWAKE);
        f4360e.put(4, NEVER);
        f4360e.put(-1, UNRECOGNIZED);
    }

    p(int i2) {
        this.value = i2;
    }

    @Nullable
    public static p forNumber(int i2) {
        if (i2 == 0) {
            return DEFAULT;
        }
        if (i2 == 1) {
            return UNMETERED_ONLY;
        }
        if (i2 == 2) {
            return UNMETERED_OR_DAILY;
        }
        if (i2 == 3) {
            return FAST_IF_RADIO_AWAKE;
        }
        if (i2 != 4) {
            return null;
        }
        return NEVER;
    }

    public final int getNumber() {
        return this.value;
    }
}
