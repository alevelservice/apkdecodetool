package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.d.h;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes2.dex */
public final class a extends b implements o0 {
    private volatile a _immediate;

    /* renamed from: e, reason: collision with root package name */
    private final Handler f19986e;

    /* renamed from: f, reason: collision with root package name */
    private final String f19987f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f19988g;

    private a(Handler handler, String str, boolean z) {
        super(null);
        this.f19986e = handler;
        this.f19987f = str;
        this.f19988g = z;
        this._immediate = this.f19988g ? this : null;
        if (this._immediate != null) {
            return;
        }
        this._immediate = new a(this.f19986e, this.f19987f, true);
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a */
    public void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        h.b(coroutineContext, "context");
        h.b(runnable, "block");
        this.f19986e.post(runnable);
    }

    @Override // kotlinx.coroutines.z
    public boolean b(@NotNull CoroutineContext coroutineContext) {
        h.b(coroutineContext, "context");
        return !this.f19988g || (h.a(Looper.myLooper(), this.f19986e.getLooper()) ^ true);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof a) && ((a) obj).f19986e == this.f19986e;
    }

    public int hashCode() {
        return System.identityHashCode(this.f19986e);
    }

    @Override // kotlinx.coroutines.z
    @NotNull
    public String toString() {
        String str = this.f19987f;
        if (str != null) {
            if (!this.f19988g) {
                return str;
            }
            return this.f19987f + " [immediate]";
        }
        String handler = this.f19986e.toString();
        h.a((Object) handler, "handler.toString()");
        return handler;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
        h.b(handler, "handler");
    }
}
