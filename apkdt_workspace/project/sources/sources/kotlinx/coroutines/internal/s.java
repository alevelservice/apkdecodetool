package kotlinx.coroutines.internal;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.j0;
import org.jetbrains.annotations.NotNull;

/* compiled from: StackTraceRecovery.kt */
/* loaded from: classes2.dex */
public final class s {
    public static final /* synthetic */ Throwable a(Throwable th, kotlin.coroutines.jvm.internal.e eVar) {
        return b(th, eVar);
    }

    public static final <E extends Throwable> E b(E e2, kotlin.coroutines.jvm.internal.e eVar) {
        kotlin.m b2 = b(e2);
        Throwable th = (Throwable) b2.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) b2.component2();
        E e3 = (E) g.a(th);
        if (e3 == null) {
            return e2;
        }
        ArrayDeque<StackTraceElement> a2 = a(eVar);
        if (a2.isEmpty()) {
            return e2;
        }
        if (th != e2) {
            a(stackTraceElementArr, a2);
        }
        a(th, e3, a2);
        return e3;
    }

    public static final <E extends Throwable> boolean c(E e2) {
        return !j0.f20101b;
    }

    @NotNull
    public static final <E extends Throwable> E d(@NotNull E e2) {
        E e3;
        kotlin.jvm.d.h.b(e2, HummerConstants.NORMAL_EXCEPTION);
        if (!c(e2) && (e3 = (E) e2.getCause()) != null) {
            boolean z = true;
            if (!(!kotlin.jvm.d.h.a(e3.getClass(), e2.getClass()))) {
                StackTraceElement[] stackTrace = e2.getStackTrace();
                kotlin.jvm.d.h.a((Object) stackTrace, "exception.stackTrace");
                int length = stackTrace.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    kotlin.jvm.d.h.a((Object) stackTraceElement, "it");
                    if (a(stackTraceElement)) {
                        break;
                    }
                    i2++;
                }
                if (z) {
                    return e3;
                }
            }
        }
        return e2;
    }

    public static final /* synthetic */ boolean a(Throwable th) {
        return c(th);
    }

    @NotNull
    public static final <E extends Throwable> E a(@NotNull E e2, @NotNull kotlin.coroutines.c<?> cVar) {
        kotlin.jvm.d.h.b(e2, HummerConstants.NORMAL_EXCEPTION);
        kotlin.jvm.d.h.b(cVar, "continuation");
        return (c(e2) || !(cVar instanceof kotlin.coroutines.jvm.internal.e)) ? e2 : (E) b(e2, (kotlin.coroutines.jvm.internal.e) cVar);
    }

    private static final <E extends Throwable> E a(E e2, E e3, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(a("Coroutine boundary"));
        StackTraceElement[] stackTrace = e2.getStackTrace();
        kotlin.jvm.d.h.a((Object) stackTrace, "causeTrace");
        int a2 = a(stackTrace, "kotlin.coroutines.jvm.internal.BaseContinuationImpl");
        int i2 = 0;
        if (a2 == -1) {
            if (arrayDeque != null) {
                Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
                if (array == null) {
                    throw new kotlin.r("null cannot be cast to non-null type kotlin.Array<T>");
                }
                e3.setStackTrace((StackTraceElement[]) array);
                return e3;
            }
            throw new kotlin.r("null cannot be cast to non-null type java.util.Collection<T>");
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + a2];
        for (int i3 = 0; i3 < a2; i3++) {
            stackTraceElementArr[i3] = stackTrace[i3];
        }
        Iterator<T> it = arrayDeque.iterator();
        while (it.hasNext()) {
            stackTraceElementArr[a2 + i2] = (StackTraceElement) it.next();
            i2++;
        }
        e3.setStackTrace(stackTraceElementArr);
        return e3;
    }

    private static final <E extends Throwable> kotlin.m<E, StackTraceElement[]> b(@NotNull E e2) {
        boolean z;
        Throwable cause = e2.getCause();
        if (cause != null && kotlin.jvm.d.h.a(cause.getClass(), e2.getClass())) {
            StackTraceElement[] stackTrace = e2.getStackTrace();
            kotlin.jvm.d.h.a((Object) stackTrace, "currentTrace");
            int length = stackTrace.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i2];
                kotlin.jvm.d.h.a((Object) stackTraceElement, "it");
                if (a(stackTraceElement)) {
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                return kotlin.q.a(cause, stackTrace);
            }
            return kotlin.q.a(e2, new StackTraceElement[0]);
        }
        return kotlin.q.a(e2, new StackTraceElement[0]);
    }

    private static final ArrayDeque<StackTraceElement> a(kotlin.coroutines.jvm.internal.e eVar) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = eVar.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(b(stackTraceElement));
        }
        while (true) {
            if (!(eVar instanceof kotlin.coroutines.jvm.internal.e)) {
                eVar = null;
            }
            if (eVar == null || (eVar = eVar.getCallerFrame()) == null) {
                break;
            }
            StackTraceElement stackTraceElement2 = eVar.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(b(stackTraceElement2));
            }
        }
        return arrayDeque;
    }

    @InternalCoroutinesApi
    @NotNull
    public static final StackTraceElement b(@NotNull StackTraceElement stackTraceElement) {
        boolean a2;
        String a3;
        kotlin.jvm.d.h.b(stackTraceElement, "element");
        String className = stackTraceElement.getClassName();
        kotlin.jvm.d.h.a((Object) className, "element.className");
        a2 = kotlin.text.m.a((CharSequence) className, '/', false, 2, (Object) null);
        if (!a2) {
            return stackTraceElement;
        }
        String className2 = stackTraceElement.getClassName();
        kotlin.jvm.d.h.a((Object) className2, "element.className");
        a3 = kotlin.text.l.a(className2, '/', '.', false, 4, (Object) null);
        return new StackTraceElement(a3, stackTraceElement.getMethodName(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
    }

    @InternalCoroutinesApi
    @NotNull
    public static final StackTraceElement a(@NotNull String str) {
        kotlin.jvm.d.h.b(str, "message");
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    public static final boolean a(@NotNull StackTraceElement stackTraceElement) {
        boolean a2;
        kotlin.jvm.d.h.b(stackTraceElement, "$this$isArtificial");
        String className = stackTraceElement.getClassName();
        kotlin.jvm.d.h.a((Object) className, "className");
        a2 = kotlin.text.l.a(className, "\b\b\b", false, 2, null);
        return a2;
    }

    private static final boolean a(@NotNull StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && kotlin.jvm.d.h.a((Object) stackTraceElement.getMethodName(), (Object) stackTraceElement2.getMethodName()) && kotlin.jvm.d.h.a((Object) stackTraceElement.getFileName(), (Object) stackTraceElement2.getFileName()) && kotlin.jvm.d.h.a((Object) stackTraceElement.getClassName(), (Object) stackTraceElement2.getClassName());
    }

    private static final void a(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (a(stackTraceElementArr[i2])) {
                break;
            } else {
                i2++;
            }
        }
        int i3 = i2 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (length2 < i3) {
            return;
        }
        while (true) {
            StackTraceElement stackTraceElement = stackTraceElementArr[length2];
            StackTraceElement last = arrayDeque.getLast();
            kotlin.jvm.d.h.a((Object) last, "result.last");
            if (a(stackTraceElement, last)) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i3) {
                return;
            } else {
                length2--;
            }
        }
    }

    private static final int a(@NotNull StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (kotlin.jvm.d.h.a((Object) str, (Object) stackTraceElementArr[i2].getClassName())) {
                return i2;
            }
        }
        return -1;
    }
}
