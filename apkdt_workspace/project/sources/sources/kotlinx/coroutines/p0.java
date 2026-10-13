package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Dispatched.kt */
/* loaded from: classes2.dex */
public final class p0<T> extends r0<T> implements kotlin.coroutines.jvm.internal.e, kotlin.coroutines.c<T> {

    /* renamed from: h, reason: collision with root package name */
    @JvmField
    @Nullable
    public Object f20126h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private final kotlin.coroutines.jvm.internal.e f20127i;

    /* renamed from: j, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Object f20128j;

    /* renamed from: k, reason: collision with root package name */
    @JvmField
    @NotNull
    public final z f20129k;

    /* renamed from: l, reason: collision with root package name */
    @JvmField
    @NotNull
    public final kotlin.coroutines.c<T> f20130l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public p0(@NotNull z zVar, @NotNull kotlin.coroutines.c<? super T> cVar) {
        super(0);
        kotlin.jvm.d.h.b(zVar, "dispatcher");
        kotlin.jvm.d.h.b(cVar, "continuation");
        this.f20129k = zVar;
        this.f20130l = cVar;
        this.f20126h = q0.a();
        kotlin.coroutines.c<T> cVar2 = this.f20130l;
        this.f20127i = (kotlin.coroutines.jvm.internal.e) (cVar2 instanceof kotlin.coroutines.jvm.internal.e ? cVar2 : null);
        this.f20128j = kotlinx.coroutines.internal.x.a(getContext());
    }

    @Override // kotlinx.coroutines.r0
    @NotNull
    public kotlin.coroutines.c<T> b() {
        return this;
    }

    @Override // kotlinx.coroutines.r0
    @Nullable
    public Object c() {
        Object obj = this.f20126h;
        if (obj != q0.a()) {
            this.f20126h = q0.a();
            return obj;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        return this.f20127i;
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public CoroutineContext getContext() {
        return this.f20130l.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.c
    public void resumeWith(@NotNull Object obj) {
        CoroutineContext context = this.f20130l.getContext();
        Object a2 = s.a(obj);
        if (this.f20129k.b(context)) {
            this.f20126h = a2;
            this.f20136g = 0;
            this.f20129k.mo32a(context, this);
            return;
        }
        w0 a3 = a2.f19985b.a();
        if (a3.p()) {
            this.f20126h = a2;
            this.f20136g = 0;
            a3.a(this);
            return;
        }
        a3.b(true);
        try {
            CoroutineContext context2 = getContext();
            Object b2 = kotlinx.coroutines.internal.x.b(context2, this.f20128j);
            try {
                this.f20130l.resumeWith(obj);
                kotlin.t tVar = kotlin.t.f19946a;
                do {
                } while (a3.r());
            } finally {
                kotlinx.coroutines.internal.x.a(context2, b2);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.f20129k + ", " + j0.a((kotlin.coroutines.c<?>) this.f20130l) + ']';
    }
}
