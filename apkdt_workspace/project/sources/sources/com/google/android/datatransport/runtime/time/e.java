package com.google.android.datatransport.runtime.time;

import android.os.SystemClock;

/* compiled from: UptimeClock.java */
/* loaded from: classes.dex */
public class e implements a {
    @Override // com.google.android.datatransport.runtime.time.a
    public long a() {
        return SystemClock.elapsedRealtime();
    }
}
