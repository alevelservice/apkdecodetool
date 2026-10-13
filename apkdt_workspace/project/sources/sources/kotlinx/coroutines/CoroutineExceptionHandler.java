package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: CoroutineExceptionHandler.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018\u0000 \b2\u00020\u0001:\u0001\bJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext$Element;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", HummerConstants.NORMAL_EXCEPTION, "", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public interface CoroutineExceptionHandler extends CoroutineContext.b {

    /* renamed from: c, reason: collision with root package name */
    public static final a f19978c = a.f19979a;

    /* compiled from: CoroutineExceptionHandler.kt */
    /* loaded from: classes2.dex */
    public static final class a implements CoroutineContext.c<CoroutineExceptionHandler> {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f19979a = new a();

        private a() {
        }
    }

    void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th);
}
