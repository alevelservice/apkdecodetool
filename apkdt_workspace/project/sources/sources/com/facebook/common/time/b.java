package com.facebook.common.time;

import com.facebook.common.internal.DoNotStrip;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: MonotonicClock.java */
@ThreadSafe
/* loaded from: classes.dex */
public interface b {
    @DoNotStrip
    long now();
}
