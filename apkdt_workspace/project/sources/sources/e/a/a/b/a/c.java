package e.a.a.b.a;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

/* compiled from: PriorityBlockingArraySet.java */
/* loaded from: classes.dex */
public class c<E> extends AbstractSet<E> implements Serializable {
    private final a<E> al;

    public c() {
        this.al = new a<>();
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e2) {
        return this.al.addIfAbsent(e2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        return this.al.addAllAbsent(collection) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.al.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.al.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return this.al.containsAll(collection);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        r4[r7] = true;
     */
    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 1
            if (r10 != r9) goto L4
            return r0
        L4:
            boolean r1 = r10 instanceof java.util.Set
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            java.util.Set r10 = (java.util.Set) r10
            java.util.Iterator r10 = r10.iterator()
            e.a.a.b.a.a<E> r1 = r9.al
            java.lang.Object[] r1 = r1.getArray()
            int r3 = r1.length
            boolean[] r4 = new boolean[r3]
            r5 = 0
        L1a:
            boolean r6 = r10.hasNext()
            if (r6 == 0) goto L3f
            int r5 = r5 + 1
            if (r5 <= r3) goto L25
            return r2
        L25:
            java.lang.Object r6 = r10.next()
            r7 = 0
        L2a:
            if (r7 >= r3) goto L3e
            boolean r8 = r4[r7]
            if (r8 != 0) goto L3b
            r8 = r1[r7]
            boolean r8 = a(r6, r8)
            if (r8 == 0) goto L3b
            r4[r7] = r0
            goto L1a
        L3b:
            int r7 = r7 + 1
            goto L2a
        L3e:
            return r2
        L3f:
            if (r5 != r3) goto L42
            goto L43
        L42:
            r0 = 0
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.a.b.a.c.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.al.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.al.iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.al.remove(obj);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        return this.al.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        return this.al.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.al.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return this.al.toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.al.toArray(tArr);
    }

    public c(Comparator<? super E> comparator) {
        this.al = new a<>(comparator);
    }

    public c(Collection<? extends E> collection) {
        this(collection, null);
    }

    public c(Collection<? extends E> collection, Comparator<? super E> comparator) {
        if (collection.getClass() == c.class) {
            this.al = new a<>(((c) collection).al, comparator);
        } else {
            this.al = new a<>(comparator);
            this.al.addAllAbsent(collection);
        }
    }
}
