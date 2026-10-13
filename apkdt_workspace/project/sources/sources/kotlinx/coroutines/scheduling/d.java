package kotlinx.coroutines.scheduling;

import java.util.concurrent.RejectedExecutionException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.e;
import kotlin.jvm.d.h;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.z;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;

/* compiled from: Dispatcher.kt */
@InternalCoroutinesApi
/* loaded from: classes2.dex */
public class d extends z0 {

    /* renamed from: e, reason: collision with root package name */
    private CoroutineScheduler f20022e;

    /* renamed from: f, reason: collision with root package name */
    private final int f20023f;

    /* renamed from: g, reason: collision with root package name */
    private final int f20024g;

    /* renamed from: h, reason: collision with root package name */
    private final long f20025h;

    /* renamed from: i, reason: collision with root package name */
    private final String f20026i;

    public d(int i2, int i3, long j2, @NotNull String str) {
        h.b(str, "schedulerName");
        this.f20023f = i2;
        this.f20024g = i3;
        this.f20025h = j2;
        this.f20026i = str;
        this.f20022e = o();
    }

    private final CoroutineScheduler o() {
        return new CoroutineScheduler(this.f20023f, this.f20024g, this.f20025h, this.f20026i);
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a */
    public void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        h.b(coroutineContext, "context");
        h.b(runnable, "block");
        try {
            CoroutineScheduler.a(this.f20022e, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            k0.f20104k.mo32a(coroutineContext, runnable);
        }
    }

    @NotNull
    public final z c(int i2) {
        if (i2 > 0) {
            return new f(this, i2, l.PROBABLY_BLOCKING);
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i2).toString());
    }

    public /* synthetic */ d(int i2, int i3, String str, int i4, e eVar) {
        this((i4 & 1) != 0 ? m.f20041c : i2, (i4 & 2) != 0 ? m.f20042d : i3, (i4 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    public final void a(@NotNull Runnable runnable, @NotNull j jVar, boolean z) {
        h.b(runnable, "block");
        h.b(jVar, "context");
        try {
            this.f20022e.a(runnable, jVar, z);
        } catch (RejectedExecutionException unused) {
            k0.f20104k.b(this.f20022e.a(runnable, jVar));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(int i2, int i3, @NotNull String str) {
        this(i2, i3, m.f20043e, str);
        h.b(str, "schedulerName");
    }
}
