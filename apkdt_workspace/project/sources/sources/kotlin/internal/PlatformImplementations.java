package kotlin.internal;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: PlatformImplementations.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0011"}, d2 = {"Lkotlin/internal/PlatformImplementations;", "", "()V", "addSuppressed", "", "cause", "", HummerConstants.NORMAL_EXCEPTION, "defaultPlatformRandom", "Lkotlin/random/Random;", "getMatchResultNamedGroup", "Lkotlin/text/MatchGroup;", "matchResult", "Ljava/util/regex/MatchResult;", "name", "", "ReflectAddSuppressedMethod", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.internal.a, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public class PlatformImplementations {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlatformImplementations.kt */
    /* renamed from: kotlin.internal.a$a */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        @JvmField
        @Nullable
        public static final Method f19937a;

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047 A[EDGE_INSN: B:10:0x0047->B:11:0x0047 BREAK  A[LOOP:0: B:2:0x0013->B:9:0x0043], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0043 A[LOOP:0: B:2:0x0013->B:9:0x0043, LOOP_END] */
        static {
            /*
                kotlin.internal.a$a r0 = new kotlin.internal.a$a
                r0.<init>()
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableClass.methods"
                kotlin.jvm.d.h.a(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = 0
            L13:
                if (r4 >= r2) goto L46
                r5 = r1[r4]
                java.lang.String r6 = "it"
                kotlin.jvm.d.h.a(r5, r6)
                java.lang.String r6 = r5.getName()
                java.lang.String r7 = "addSuppressed"
                boolean r6 = kotlin.jvm.d.h.a(r6, r7)
                if (r6 == 0) goto L3f
                java.lang.Class[] r6 = r5.getParameterTypes()
                java.lang.String r7 = "it.parameterTypes"
                kotlin.jvm.d.h.a(r6, r7)
                java.lang.Object r6 = kotlin.v.a.b(r6)
                java.lang.Class r6 = (java.lang.Class) r6
                boolean r6 = kotlin.jvm.d.h.a(r6, r0)
                if (r6 == 0) goto L3f
                r6 = 1
                goto L40
            L3f:
                r6 = 0
            L40:
                if (r6 == 0) goto L43
                goto L47
            L43:
                int r4 = r4 + 1
                goto L13
            L46:
                r5 = 0
            L47:
                kotlin.internal.PlatformImplementations.a.f19937a = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.a.<clinit>():void");
        }

        private a() {
        }
    }

    public void a(@NotNull Throwable th, @NotNull Throwable th2) {
        h.b(th, "cause");
        h.b(th2, HummerConstants.NORMAL_EXCEPTION);
        Method method = a.f19937a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }
}
