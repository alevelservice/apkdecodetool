package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Dispatched.kt */
/* loaded from: classes2.dex */
public abstract class r0<T> extends kotlinx.coroutines.scheduling.i {

    /* renamed from: g, reason: collision with root package name */
    @JvmField
    public int f20136g;

    public r0(int i2) {
        this.f20136g = i2;
    }

    @Nullable
    public final Throwable a(@Nullable Object obj) {
        if (!(obj instanceof r)) {
            obj = null;
        }
        r rVar = (r) obj;
        if (rVar != null) {
            return rVar.f20135a;
        }
        return null;
    }

    public void a(@Nullable Object obj, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, "cause");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T b(@Nullable Object obj) {
        return obj;
    }

    @NotNull
    public abstract kotlin.coroutines.c<T> b();

    @Nullable
    public abstract Object c();

    /* JADX WARN: Can't wrap try/catch for region: R(12:5|(1:7)(1:32)|8|(3:28|29|(7:31|13|14|15|16|17|18))|10|(1:12)(1:27)|13|14|15|16|17|18) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
    
        r1 = kotlin.Result.INSTANCE;
        r0 = kotlin.Result.m23constructorimpl(kotlin.o.a(r0));
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            kotlinx.coroutines.f2.j r0 = r8.f20036f
            kotlin.coroutines.c r1 = r8.b()     // Catch: java.lang.Throwable -> La4
            if (r1 == 0) goto L9c
            kotlinx.coroutines.p0 r1 = (kotlinx.coroutines.p0) r1     // Catch: java.lang.Throwable -> La4
            kotlin.coroutines.c<T> r2 = r1.f20130l     // Catch: java.lang.Throwable -> La4
            kotlin.coroutines.f r3 = r2.getContext()     // Catch: java.lang.Throwable -> La4
            int r4 = r8.f20136g     // Catch: java.lang.Throwable -> La4
            boolean r4 = kotlinx.coroutines.x1.a(r4)     // Catch: java.lang.Throwable -> La4
            r5 = 0
            if (r4 == 0) goto L22
            kotlinx.coroutines.g1$b r4 = kotlinx.coroutines.Job.f20051d     // Catch: java.lang.Throwable -> La4
            kotlin.coroutines.f$b r4 = r3.get(r4)     // Catch: java.lang.Throwable -> La4
            kotlinx.coroutines.g1 r4 = (kotlinx.coroutines.Job) r4     // Catch: java.lang.Throwable -> La4
            goto L23
        L22:
            r4 = r5
        L23:
            java.lang.Object r6 = r8.c()     // Catch: java.lang.Throwable -> La4
            java.lang.Object r1 = r1.f20128j     // Catch: java.lang.Throwable -> La4
            java.lang.Object r1 = kotlinx.coroutines.internal.x.b(r3, r1)     // Catch: java.lang.Throwable -> La4
            if (r4 == 0) goto L4e
            boolean r7 = r4.i()     // Catch: java.lang.Throwable -> L97
            if (r7 != 0) goto L4e
            java.util.concurrent.CancellationException r4 = r4.j()     // Catch: java.lang.Throwable -> L97
            r8.a(r6, r4)     // Catch: java.lang.Throwable -> L97
            kotlin.n$a r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L97
            java.lang.Throwable r4 = kotlinx.coroutines.internal.s.a(r4, r2)     // Catch: java.lang.Throwable -> L97
            java.lang.Object r4 = kotlin.o.a(r4)     // Catch: java.lang.Throwable -> L97
            java.lang.Object r4 = kotlin.Result.m23constructorimpl(r4)     // Catch: java.lang.Throwable -> L97
            r2.resumeWith(r4)     // Catch: java.lang.Throwable -> L97
            goto L73
        L4e:
            java.lang.Throwable r4 = r8.a(r6)     // Catch: java.lang.Throwable -> L97
            if (r4 == 0) goto L66
            kotlin.n$a r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L97
            java.lang.Throwable r4 = kotlinx.coroutines.internal.s.a(r4, r2)     // Catch: java.lang.Throwable -> L97
            java.lang.Object r4 = kotlin.o.a(r4)     // Catch: java.lang.Throwable -> L97
            java.lang.Object r4 = kotlin.Result.m23constructorimpl(r4)     // Catch: java.lang.Throwable -> L97
            r2.resumeWith(r4)     // Catch: java.lang.Throwable -> L97
            goto L73
        L66:
            java.lang.Object r4 = r8.b(r6)     // Catch: java.lang.Throwable -> L97
            kotlin.n$a r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L97
            java.lang.Object r4 = kotlin.Result.m23constructorimpl(r4)     // Catch: java.lang.Throwable -> L97
            r2.resumeWith(r4)     // Catch: java.lang.Throwable -> L97
        L73:
            kotlin.t r2 = kotlin.t.f19946a     // Catch: java.lang.Throwable -> L97
            kotlinx.coroutines.internal.x.a(r3, r1)     // Catch: java.lang.Throwable -> La4
            kotlin.n$a r1 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L84
            r0.l()     // Catch: java.lang.Throwable -> L84
            kotlin.t r0 = kotlin.t.f19946a     // Catch: java.lang.Throwable -> L84
            java.lang.Object r0 = kotlin.Result.m23constructorimpl(r0)     // Catch: java.lang.Throwable -> L84
            goto L8f
        L84:
            r0 = move-exception
            kotlin.n$a r1 = kotlin.Result.INSTANCE
            java.lang.Object r0 = kotlin.o.a(r0)
            java.lang.Object r0 = kotlin.Result.m23constructorimpl(r0)
        L8f:
            java.lang.Throwable r0 = kotlin.Result.m26exceptionOrNullimpl(r0)
            r8.a(r5, r0)
            goto Lc3
        L97:
            r2 = move-exception
            kotlinx.coroutines.internal.x.a(r3, r1)     // Catch: java.lang.Throwable -> La4
            throw r2     // Catch: java.lang.Throwable -> La4
        L9c:
            kotlin.r r1 = new kotlin.r     // Catch: java.lang.Throwable -> La4
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> La4
            throw r1     // Catch: java.lang.Throwable -> La4
        La4:
            r1 = move-exception
            kotlin.n$a r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> Lb1
            r0.l()     // Catch: java.lang.Throwable -> Lb1
            kotlin.t r0 = kotlin.t.f19946a     // Catch: java.lang.Throwable -> Lb1
            java.lang.Object r0 = kotlin.Result.m23constructorimpl(r0)     // Catch: java.lang.Throwable -> Lb1
            goto Lbc
        Lb1:
            r0 = move-exception
            kotlin.n$a r2 = kotlin.Result.INSTANCE
            java.lang.Object r0 = kotlin.o.a(r0)
            java.lang.Object r0 = kotlin.Result.m23constructorimpl(r0)
        Lbc:
            java.lang.Throwable r0 = kotlin.Result.m26exceptionOrNullimpl(r0)
            r8.a(r1, r0)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.r0.run():void");
    }

    public final void a(@Nullable Throwable th, @Nullable Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            kotlin.c.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        String str = "Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers";
        if (th != null) {
            b0.a(b().getContext(), new i0(str, th));
        } else {
            kotlin.jvm.d.h.a();
            throw null;
        }
    }
}
