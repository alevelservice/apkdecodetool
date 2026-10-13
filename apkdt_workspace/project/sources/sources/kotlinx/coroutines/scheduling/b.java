package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.scheduling.CoroutineScheduler;

/* loaded from: classes2.dex */
public final /* synthetic */ class b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f20019a = new int[CoroutineScheduler.c.values().length];

    static {
        f20019a[CoroutineScheduler.c.PARKING.ordinal()] = 1;
        f20019a[CoroutineScheduler.c.BLOCKING.ordinal()] = 2;
        f20019a[CoroutineScheduler.c.CPU_ACQUIRED.ordinal()] = 3;
        f20019a[CoroutineScheduler.c.RETIRING.ordinal()] = 4;
        f20019a[CoroutineScheduler.c.TERMINATED.ordinal()] = 5;
    }
}
