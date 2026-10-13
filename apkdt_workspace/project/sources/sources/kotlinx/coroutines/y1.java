package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: Builders.common.kt */
/* loaded from: classes2.dex */
class y1 extends a<kotlin.t> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y1(@NotNull CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, z);
        kotlin.jvm.d.h.b(coroutineContext, "parentContext");
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean b(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        b0.a(getContext(), th);
        return true;
    }
}
