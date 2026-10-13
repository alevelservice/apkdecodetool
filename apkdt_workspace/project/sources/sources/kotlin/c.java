package kotlin;

import com.ap.zoloz.hummer.biz.HummerConstants;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Exceptions.kt */
/* loaded from: classes2.dex */
public class c {
    public static void a(@NotNull Throwable th, @NotNull Throwable th2) {
        kotlin.jvm.d.h.b(th, "$this$addSuppressed");
        kotlin.jvm.d.h.b(th2, HummerConstants.NORMAL_EXCEPTION);
        kotlin.internal.b.f19938a.a(th, th2);
    }
}
