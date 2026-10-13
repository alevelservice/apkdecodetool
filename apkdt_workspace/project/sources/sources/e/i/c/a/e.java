package e.i.c.a;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FunctionalEquivalence.java */
@Beta
@GwtCompatible
/* loaded from: classes.dex */
final class e<F, T> extends b<F> implements Serializable {
    private static final long serialVersionUID = 0;
    private final d<F, ? extends T> function;
    private final b<T> resultEquivalence;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d<F, ? extends T> dVar, b<T> bVar) {
        j.a(dVar);
        this.function = dVar;
        j.a(bVar);
        this.resultEquivalence = bVar;
    }

    @Override // e.i.c.a.b
    protected boolean doEquivalent(F f2, F f3) {
        return this.resultEquivalence.equivalent(this.function.apply(f2), this.function.apply(f3));
    }

    @Override // e.i.c.a.b
    protected int doHash(F f2) {
        return this.resultEquivalence.hash(this.function.apply(f2));
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.function.equals(eVar.function) && this.resultEquivalence.equals(eVar.resultEquivalence);
    }

    public int hashCode() {
        return h.a(this.function, this.resultEquivalence);
    }

    public String toString() {
        return this.resultEquivalence + ".onResultOf(" + this.function + ")";
    }
}
