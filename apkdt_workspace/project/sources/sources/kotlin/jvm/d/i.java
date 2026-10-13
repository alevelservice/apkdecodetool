package kotlin.jvm.d;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

/* compiled from: Lambda.kt */
/* loaded from: classes2.dex */
public abstract class i<R> implements f<R>, Serializable {
    private final int arity;

    public i(int i2) {
        this.arity = i2;
    }

    @Override // kotlin.jvm.d.f
    public int getArity() {
        return this.arity;
    }

    @NotNull
    public String toString() {
        String a2 = n.a((i) this);
        h.a((Object) a2, "Reflection.renderLambdaToString(this)");
        return a2;
    }
}
