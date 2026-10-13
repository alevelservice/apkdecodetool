package kotlinx.coroutines.scheduling;

import kotlin.jvm.JvmField;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;

/* compiled from: Tasks.kt */
/* loaded from: classes2.dex */
public abstract class i implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    @JvmField
    public long f20035e;

    /* renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public j f20036f;

    public i(long j2, @NotNull j jVar) {
        h.b(jVar, "taskContext");
        this.f20035e = j2;
        this.f20036f = jVar;
    }

    @NotNull
    public final l a() {
        return this.f20036f.m();
    }

    public i() {
        this(0L, h.f20034f);
    }
}
