package kotlin.coroutines.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.jvm.d.n;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ContinuationImpl.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public abstract class k extends d implements kotlin.jvm.d.f<Object>, j {
    private final int arity;

    public k(int i2, @Nullable kotlin.coroutines.c<Object> cVar) {
        super(cVar);
        this.arity = i2;
    }

    @Override // kotlin.jvm.d.f
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public String toString() {
        if (getCompletion() == null) {
            String a2 = n.a(this);
            kotlin.jvm.d.h.a((Object) a2, "Reflection.renderLambdaToString(this)");
            return a2;
        }
        return super.toString();
    }

    public k(int i2) {
        this(i2, null);
    }
}
