package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.JvmField;
import kotlin.ranges.q;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.w;
import org.jetbrains.annotations.NotNull;

/* compiled from: Tasks.kt */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    public static final long f20039a;

    /* renamed from: b, reason: collision with root package name */
    @JvmField
    public static final int f20040b;

    /* renamed from: c, reason: collision with root package name */
    @JvmField
    public static final int f20041c;

    /* renamed from: d, reason: collision with root package name */
    @JvmField
    public static final int f20042d;

    /* renamed from: e, reason: collision with root package name */
    @JvmField
    public static final long f20043e;

    /* renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public static n f20044f;

    static {
        long a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        long a8;
        a2 = w.a("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, (Object) null);
        f20039a = a2;
        a3 = w.a("kotlinx.coroutines.scheduler.offload.threshold", 96, 0, 128, 4, (Object) null);
        f20040b = a3;
        w.a("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, (Object) null);
        a4 = q.a(u.a(), 2);
        a5 = w.a("kotlinx.coroutines.scheduler.core.pool.size", a4, 1, 0, 8, (Object) null);
        f20041c = a5;
        a6 = q.a(u.a() * 128, f20041c, 2097150);
        a7 = w.a("kotlinx.coroutines.scheduler.max.pool.size", a6, 0, 2097150, 4, (Object) null);
        f20042d = a7;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        a8 = w.a("kotlinx.coroutines.scheduler.keep.alive.sec", 5L, 0L, 0L, 12, (Object) null);
        f20043e = timeUnit.toNanos(a8);
        f20044f = g.f20032a;
    }
}
