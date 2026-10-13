package kotlinx.coroutines.android;

import android.os.Build;
import androidx.annotation.Keep;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.h;
import kotlin.j;
import kotlin.jvm.d.k;
import kotlin.jvm.d.n;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: AndroidExceptionPreHandler.kt */
@Keep
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0096\u0002R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/android/AndroidExceptionPreHandler;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/Function0;", "Ljava/lang/reflect/Method;", "()V", "preHandler", "getPreHandler", "()Ljava/lang/reflect/Method;", "preHandler$delegate", "Lkotlin/Lazy;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", HummerConstants.NORMAL_EXCEPTION, "", "invoke", "kotlinx-coroutines-android"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes2.dex */
public final class AndroidExceptionPreHandler extends kotlin.coroutines.a implements CoroutineExceptionHandler, kotlin.jvm.c.a<Method> {
    static final /* synthetic */ KProperty[] $$delegatedProperties;
    private final h preHandler$delegate;

    static {
        k kVar = new k(n.a(AndroidExceptionPreHandler.class), "preHandler", "getPreHandler()Ljava/lang/reflect/Method;");
        n.a(kVar);
        $$delegatedProperties = new KProperty[]{kVar};
    }

    public AndroidExceptionPreHandler() {
        super(CoroutineExceptionHandler.f19978c);
        h a2;
        a2 = j.a(this);
        this.preHandler$delegate = a2;
    }

    private final Method getPreHandler() {
        h hVar = this.preHandler$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Method) hVar.getValue();
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        Thread currentThread = Thread.currentThread();
        if (Build.VERSION.SDK_INT >= 28) {
            kotlin.jvm.d.h.a((Object) currentThread, "thread");
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
            return;
        }
        Method preHandler = getPreHandler();
        Object invoke = preHandler != null ? preHandler.invoke(null, new Object[0]) : null;
        if (!(invoke instanceof Thread.UncaughtExceptionHandler)) {
            invoke = null;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) invoke;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(currentThread, th);
        }
    }

    @Override // kotlin.jvm.c.a
    @Nullable
    public Method invoke() {
        try {
            boolean z = false;
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            kotlin.jvm.d.h.a((Object) declaredMethod, "it");
            if (Modifier.isPublic(declaredMethod.getModifiers())) {
                if (Modifier.isStatic(declaredMethod.getModifiers())) {
                    z = true;
                }
            }
            if (z) {
                return declaredMethod;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
