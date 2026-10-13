package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: AbstractCoroutine.kt */
@InternalCoroutinesApi
/* loaded from: classes2.dex */
public abstract class a<T> extends JobSupport implements Job, kotlin.coroutines.c<T>, e0 {

    /* renamed from: f, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f19980f;

    /* renamed from: g, reason: collision with root package name */
    @JvmField
    @NotNull
    protected final CoroutineContext f19981g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull CoroutineContext coroutineContext, boolean z) {
        super(z);
        kotlin.jvm.d.h.b(coroutineContext, "parentContext");
        this.f19981g = coroutineContext;
        this.f19980f = this.f19981g.plus(this);
    }

    @Override // kotlinx.coroutines.e0
    @NotNull
    public CoroutineContext a() {
        return this.f19980f;
    }

    protected void a(@NotNull Throwable th, boolean z) {
        kotlin.jvm.d.h.b(th, "cause");
    }

    protected void b(T t) {
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void c(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        b0.a(this.f19980f, th);
    }

    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String g() {
        String a2 = y.a(this.f19980f);
        if (a2 != null) {
            return '\"' + a2 + "\":" + super.g();
        }
        return super.g();
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public final CoroutineContext getContext() {
        return this.f19980f;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void h() {
        o();
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean i() {
        return super.i();
    }

    public int m() {
        return 0;
    }

    public final void n() {
        a((Job) this.f19981g.get(Job.f20051d));
    }

    protected void o() {
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(@NotNull Object obj) {
        b(s.a(obj), m());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    protected final void a(@Nullable Object obj) {
        if (obj instanceof r) {
            r rVar = (r) obj;
            a(rVar.f20135a, rVar.a());
        } else {
            b((a<T>) obj);
        }
    }

    public final <R> void a(@NotNull h0 h0Var, R r, @NotNull kotlin.jvm.c.c<? super R, ? super kotlin.coroutines.c<? super T>, ? extends Object> cVar) {
        kotlin.jvm.d.h.b(h0Var, "start");
        kotlin.jvm.d.h.b(cVar, "block");
        n();
        h0Var.invoke(cVar, r, this);
    }
}
