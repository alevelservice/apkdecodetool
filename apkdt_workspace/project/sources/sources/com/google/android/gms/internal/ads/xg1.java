package com.google.android.gms.internal.ads;

import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xg1 {

    /* renamed from: a, reason: collision with root package name */
    public static final int f10350a;

    /* renamed from: b, reason: collision with root package name */
    public static final UUID f10351b;

    static {
        f10350a = cp1.f6080a < 23 ? 1020 : 6396;
        f10351b = new UUID(0L, 0L);
        new UUID(1186680826959645954L, -5988876978535335093L);
        new UUID(-1301668207276963122L, -6645017420763422227L);
        new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long a(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j2 / 1000;
    }

    public static long b(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j2 * 1000;
    }
}
