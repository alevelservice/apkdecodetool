package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Exceptions.kt */
/* loaded from: classes2.dex */
public final class h1 extends CancellationException implements x<h1> {

    @JvmField
    @NotNull
    public final Job job;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(@NotNull String str, @Nullable Throwable th, @NotNull Job job) {
        super(str);
        kotlin.jvm.d.h.b(str, "message");
        kotlin.jvm.d.h.b(job, "job");
        this.job = job;
        if (th != null) {
            initCause(th);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != this) {
            if (obj instanceof h1) {
                h1 h1Var = (h1) obj;
                if (!kotlin.jvm.d.h.a((Object) h1Var.getMessage(), (Object) getMessage()) || !kotlin.jvm.d.h.a(h1Var.job, this.job) || !kotlin.jvm.d.h.a(h1Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        if (!j0.f20100a) {
            return this;
        }
        Throwable fillInStackTrace = super.fillInStackTrace();
        kotlin.jvm.d.h.a((Object) fillInStackTrace, "super.fillInStackTrace()");
        return fillInStackTrace;
    }

    public int hashCode() {
        String message = getMessage();
        if (message == null) {
            kotlin.jvm.d.h.a();
            throw null;
        }
        int hashCode = ((message.hashCode() * 31) + this.job.hashCode()) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return super.toString() + "; job=" + this.job;
    }

    @Override // kotlinx.coroutines.x
    @Nullable
    public h1 createCopy() {
        if (!j0.f20100a) {
            return null;
        }
        String message = getMessage();
        if (message != null) {
            return new h1(message, this, this.job);
        }
        kotlin.jvm.d.h.a();
        throw null;
    }
}
