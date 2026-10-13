package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineContext.kt */
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicLong f20154a = new AtomicLong();

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f20155b;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
    
        if (r0.equals("on") != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if (r0.equals("") != false) goto L19;
     */
    static {
        /*
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r0.<init>()
            kotlinx.coroutines.y.f20154a = r0
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = kotlinx.coroutines.internal.u.a(r0)
            if (r0 != 0) goto L10
            goto L3a
        L10:
            int r1 = r0.hashCode()
            if (r1 == 0) goto L32
            r2 = 3551(0xddf, float:4.976E-42)
            if (r1 == r2) goto L29
            r2 = 109935(0x1ad6f, float:1.54052E-40)
            if (r1 != r2) goto L3e
            java.lang.String r1 = "off"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3e
            r0 = 0
            goto L3b
        L29:
            java.lang.String r1 = "on"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3e
            goto L3a
        L32:
            java.lang.String r1 = ""
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3e
        L3a:
            r0 = 1
        L3b:
            kotlinx.coroutines.y.f20155b = r0
            return
        L3e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "System property 'kotlinx.coroutines.scheduler' has unrecognized value '"
            r1.append(r2)
            r1.append(r0)
            r0 = 39
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.y.<clinit>():void");
    }

    @NotNull
    public static final z a() {
        return f20155b ? kotlinx.coroutines.scheduling.c.f20021k : CommonPool.f20123g;
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final CoroutineContext a(@NotNull e0 e0Var, @NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(e0Var, "$this$newCoroutineContext");
        kotlin.jvm.d.h.b(coroutineContext, "context");
        CoroutineContext plus = e0Var.a().plus(coroutineContext);
        CoroutineContext plus2 = j0.f20100a ? plus.plus(new CoroutineId(f20154a.incrementAndGet())) : plus;
        return (plus == s0.a() || plus.get(ContinuationInterceptor.f19921b) != null) ? plus2 : plus2.plus(s0.a());
    }

    @Nullable
    public static final String a(@NotNull CoroutineContext coroutineContext) {
        CoroutineId coroutineId;
        String str;
        kotlin.jvm.d.h.b(coroutineContext, "$this$coroutineName");
        if (!j0.f20100a || (coroutineId = (CoroutineId) coroutineContext.get(CoroutineId.f19991f)) == null) {
            return null;
        }
        CoroutineName coroutineName = (CoroutineName) coroutineContext.get(CoroutineName.f19995f);
        if (coroutineName == null || (str = coroutineName.getF19996e()) == null) {
            str = "coroutine";
        }
        return str + '#' + coroutineId.getF19992e();
    }
}
