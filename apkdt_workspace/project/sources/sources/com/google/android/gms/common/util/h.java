package com.google.android.gms.common.util;

import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class h implements e {

    /* renamed from: a, reason: collision with root package name */
    private static final h f5418a = new h();

    private h() {
    }

    @KeepForSdk
    public static e d() {
        return f5418a;
    }

    @Override // com.google.android.gms.common.util.e
    public long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.e
    public long b() {
        return System.nanoTime();
    }

    @Override // com.google.android.gms.common.util.e
    public long c() {
        return SystemClock.elapsedRealtime();
    }
}
