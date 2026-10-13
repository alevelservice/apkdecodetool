package io.reactivex.rxjava3.internal.util;

/* compiled from: Pow2.java */
/* loaded from: classes2.dex */
public final class c {
    public static int a(int i2) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
    }
}
