package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0018B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/CoroutineId;", "Lkotlinx/coroutines/ThreadContextElement;", "", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "id", "", "(J)V", "getId", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "toString", "updateThreadContext", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.c0, reason: from Kotlin metadata and from toString */
/* loaded from: classes2.dex */
public final /* data */ class CoroutineId extends kotlin.coroutines.a implements ThreadContextElement<String> {

    /* renamed from: f, reason: collision with root package name */
    public static final a f19991f = new a(null);

    /* renamed from: e, reason: collision with root package name */
    private final long f19992e;

    /* compiled from: CoroutineContext.kt */
    /* renamed from: kotlinx.coroutines.c0$a */
    /* loaded from: classes2.dex */
    public static final class a implements CoroutineContext.c<CoroutineId> {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.d.e eVar) {
            this();
        }
    }

    public CoroutineId(long j2) {
        super(f19991f);
        this.f19992e = j2;
    }

    public boolean equals(@Nullable Object other) {
        if (this != other) {
            if (other instanceof CoroutineId) {
                if (this.f19992e == ((CoroutineId) other).f19992e) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull kotlin.jvm.c.c<? super R, ? super CoroutineContext.b, ? extends R> cVar) {
        kotlin.jvm.d.h.b(cVar, "operation");
        return (R) ThreadContextElement.a.a(this, r, cVar);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext.b, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.b> E get(@NotNull CoroutineContext.c<E> cVar) {
        kotlin.jvm.d.h.b(cVar, "key");
        return (E) ThreadContextElement.a.a(this, cVar);
    }

    public int hashCode() {
        long j2 = this.f19992e;
        return (int) (j2 ^ (j2 >>> 32));
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "key");
        return ThreadContextElement.a.b(this, cVar);
    }

    /* renamed from: o, reason: from getter */
    public final long getF19992e() {
        return this.f19992e;
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        return ThreadContextElement.a.a(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        return "CoroutineId(" + this.f19992e + ')';
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    @NotNull
    public String a(@NotNull CoroutineContext coroutineContext) {
        String str;
        int b2;
        kotlin.jvm.d.h.b(coroutineContext, "context");
        CoroutineName coroutineName = (CoroutineName) coroutineContext.get(CoroutineName.f19995f);
        if (coroutineName == null || (str = coroutineName.getF19996e()) == null) {
            str = "coroutine";
        }
        Thread currentThread = Thread.currentThread();
        kotlin.jvm.d.h.a((Object) currentThread, "currentThread");
        String name = currentThread.getName();
        kotlin.jvm.d.h.a((Object) name, "oldName");
        b2 = kotlin.text.m.b(name, " @", 0, false, 6, null);
        if (b2 < 0) {
            b2 = name.length();
        }
        StringBuilder sb = new StringBuilder(str.length() + b2 + 10);
        String substring = name.substring(0, b2);
        kotlin.jvm.d.h.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(substring);
        sb.append(" @");
        sb.append(str);
        sb.append('#');
        sb.append(this.f19992e);
        String sb2 = sb.toString();
        kotlin.jvm.d.h.a((Object) sb2, "StringBuilder(capacity).…builderAction).toString()");
        currentThread.setName(sb2);
        return name;
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public void a(@NotNull CoroutineContext coroutineContext, @NotNull String str) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(str, "oldState");
        Thread currentThread = Thread.currentThread();
        kotlin.jvm.d.h.a((Object) currentThread, "Thread.currentThread()");
        currentThread.setName(str);
    }
}
