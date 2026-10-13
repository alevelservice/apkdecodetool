package kotlin.internal.e;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.internal.PlatformImplementations;
import kotlin.jvm.d.h;
import org.jetbrains.annotations.NotNull;

/* compiled from: JDK7PlatformImplementations.kt */
/* loaded from: classes2.dex */
public class a extends PlatformImplementations {
    @Override // kotlin.internal.PlatformImplementations
    public void a(@NotNull Throwable th, @NotNull Throwable th2) {
        h.b(th, "cause");
        h.b(th2, HummerConstants.NORMAL_EXCEPTION);
        th.addSuppressed(th2);
    }
}
