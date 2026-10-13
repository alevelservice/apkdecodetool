package g.c.a.d;

import io.reactivex.rxjava3.annotations.NonNull;

/* compiled from: Exceptions.java */
/* loaded from: classes2.dex */
public final class b {
    @NonNull
    public static RuntimeException a(@NonNull Throwable th) {
        throw io.reactivex.rxjava3.internal.util.a.a(th);
    }

    public static void b(@NonNull Throwable th) {
        if (!(th instanceof VirtualMachineError)) {
            if (!(th instanceof ThreadDeath)) {
                if (th instanceof LinkageError) {
                    throw ((LinkageError) th);
                }
                return;
            }
            throw ((ThreadDeath) th);
        }
        throw ((VirtualMachineError) th);
    }
}
