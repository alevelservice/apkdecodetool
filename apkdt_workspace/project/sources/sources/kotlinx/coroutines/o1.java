package kotlinx.coroutines;

import org.jetbrains.annotations.Nullable;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class o1 {

    /* renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.t f20118a = new kotlinx.coroutines.internal.t("SEALED");

    /* renamed from: b, reason: collision with root package name */
    private static final v0 f20119b = new v0(false);

    /* renamed from: c, reason: collision with root package name */
    private static final v0 f20120c = new v0(true);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object b(@Nullable Object obj) {
        return obj instanceof b1 ? new c1((b1) obj) : obj;
    }

    @Nullable
    public static final Object c(@Nullable Object obj) {
        b1 b1Var;
        c1 c1Var = (c1) (!(obj instanceof c1) ? null : obj);
        return (c1Var == null || (b1Var = c1Var.f19993a) == null) ? obj : b1Var;
    }
}
