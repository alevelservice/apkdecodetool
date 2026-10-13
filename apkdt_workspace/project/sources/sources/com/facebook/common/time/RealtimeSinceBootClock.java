package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.DoNotStrip;

@DoNotStrip
/* loaded from: classes.dex */
public class RealtimeSinceBootClock implements b {

    /* renamed from: a, reason: collision with root package name */
    private static final RealtimeSinceBootClock f3539a = new RealtimeSinceBootClock();

    private RealtimeSinceBootClock() {
    }

    @DoNotStrip
    public static RealtimeSinceBootClock get() {
        return f3539a;
    }

    @Override // com.facebook.common.time.b
    public long now() {
        return SystemClock.elapsedRealtime();
    }
}
