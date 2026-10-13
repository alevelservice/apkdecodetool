package kotlinx.coroutines;

import kotlin.Result;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* compiled from: Debug.kt */
/* loaded from: classes2.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    public static final boolean f20100a;

    /* renamed from: b, reason: collision with root package name */
    @JvmField
    public static final boolean f20101b;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
    
        if (r0.equals("auto") != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003e, code lost:
    
        if (r0.equals("on") != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0047, code lost:
    
        if (r0.equals("") != false) goto L24;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.u.a(r0)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto Lb
            goto L27
        Lb:
            int r3 = r0.hashCode()
            if (r3 == 0) goto L41
            r4 = 3551(0xddf, float:4.976E-42)
            if (r3 == r4) goto L38
            r4 = 109935(0x1ad6f, float:1.54052E-40)
            if (r3 == r4) goto L2e
            r4 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r3 != r4) goto L5c
            java.lang.String r3 = "auto"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L5c
        L27:
            java.lang.Class<kotlinx.coroutines.c0> r0 = kotlinx.coroutines.CoroutineId.class
            boolean r0 = r0.desiredAssertionStatus()
            goto L4a
        L2e:
            java.lang.String r3 = "off"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L5c
            r0 = 0
            goto L4a
        L38:
            java.lang.String r3 = "on"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L5c
            goto L49
        L41:
            java.lang.String r3 = ""
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L5c
        L49:
            r0 = 1
        L4a:
            kotlinx.coroutines.j0.f20100a = r0
            boolean r0 = kotlinx.coroutines.j0.f20100a
            if (r0 == 0) goto L59
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            boolean r0 = kotlinx.coroutines.internal.u.a(r0, r2)
            if (r0 == 0) goto L59
            r1 = 1
        L59:
            kotlinx.coroutines.j0.f20101b = r1
            return
        L5c:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.j0.<clinit>():void");
    }

    @NotNull
    public static final String a(@NotNull kotlin.coroutines.c<?> cVar) {
        Object m23constructorimpl;
        kotlin.jvm.d.h.b(cVar, "$this$toDebugString");
        if (cVar instanceof p0) {
            return cVar.toString();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            m23constructorimpl = Result.m23constructorimpl(cVar + '@' + b(cVar));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m23constructorimpl = Result.m23constructorimpl(kotlin.o.a(th));
        }
        if (Result.m26exceptionOrNullimpl(m23constructorimpl) != null) {
            m23constructorimpl = cVar.getClass().getName() + '@' + b(cVar);
        }
        return (String) m23constructorimpl;
    }

    @NotNull
    public static final String b(@NotNull Object obj) {
        kotlin.jvm.d.h.b(obj, "$this$hexAddress");
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        kotlin.jvm.d.h.a((Object) hexString, "Integer.toHexString(System.identityHashCode(this))");
        return hexString;
    }

    @NotNull
    public static final String a(@NotNull Object obj) {
        kotlin.jvm.d.h.b(obj, "$this$classSimpleName");
        String simpleName = obj.getClass().getSimpleName();
        kotlin.jvm.d.h.a((Object) simpleName, "this::class.java.simpleName");
        return simpleName;
    }
}
