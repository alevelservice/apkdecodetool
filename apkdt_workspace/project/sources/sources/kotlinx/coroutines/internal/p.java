package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.r1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: MainDispatchers.kt */
/* loaded from: classes2.dex */
final class p extends r1 implements o0 {

    /* renamed from: e, reason: collision with root package name */
    private final Throwable f20089e;

    /* renamed from: f, reason: collision with root package name */
    private final String f20090f;

    public /* synthetic */ p(Throwable th, String str, int i2, kotlin.jvm.d.e eVar) {
        this(th, (i2 & 2) != 0 ? null : str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r1 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void o() {
        /*
            r4 = this;
            java.lang.Throwable r0 = r4.f20089e
            if (r0 == 0) goto L37
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            r0.append(r1)
            java.lang.String r1 = r4.f20090f
            if (r1 == 0) goto L26
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = ". "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            if (r1 == 0) goto L26
            goto L28
        L26:
            java.lang.String r1 = ""
        L28:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.Throwable r2 = r4.f20089e
            r1.<init>(r0, r2)
            throw r1
        L37:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android'"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.p.o():java.lang.Void");
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ void mo32a(CoroutineContext coroutineContext, Runnable runnable) {
        a(coroutineContext, runnable);
        throw null;
    }

    @Override // kotlinx.coroutines.z
    public boolean b(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        o();
        throw null;
    }

    @Override // kotlinx.coroutines.z
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Main[missing");
        if (this.f20089e != null) {
            str = ", cause=" + this.f20089e;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }

    public p(@Nullable Throwable th, @Nullable String str) {
        this.f20089e = th;
        this.f20090f = str;
    }

    @NotNull
    public Void a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(runnable, "block");
        o();
        throw null;
    }
}
