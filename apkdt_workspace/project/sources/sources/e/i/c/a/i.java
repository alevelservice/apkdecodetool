package e.i.c.a;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: PairwiseEquivalence.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class i<T> extends b<Iterable<T>> implements Serializable {
    private static final long serialVersionUID = 1;
    final b<? super T> elementEquivalence;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(b<? super T> bVar) {
        j.a(bVar);
        this.elementEquivalence = bVar;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof i) {
            return this.elementEquivalence.equals(((i) obj).elementEquivalence);
        }
        return false;
    }

    public int hashCode() {
        return this.elementEquivalence.hashCode() ^ 1185147655;
    }

    public String toString() {
        return this.elementEquivalence + ".pairwise()";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.i.c.a.b
    public boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.elementEquivalence.equivalent(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.i.c.a.b
    public int doHash(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int i2 = 78721;
        while (it.hasNext()) {
            i2 = (i2 * 24943) + this.elementEquivalence.hash(it.next());
        }
        return i2;
    }
}
