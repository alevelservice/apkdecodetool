package e.a.a.b.a;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: PriorityBlockingArrayList.java */
/* loaded from: classes.dex */
public class a<E> implements Serializable, Cloneable, List<E>, RandomAccess {
    private Comparator<? super E> comparator;

    /* renamed from: e, reason: collision with root package name */
    private volatile transient Object[] f16836e;
    final transient ReentrantLock lock;

    /* compiled from: PriorityBlockingArrayList.java */
    /* renamed from: e.a.a.b.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0177a<E> implements ListIterator<E> {

        /* renamed from: e, reason: collision with root package name */
        private final Object[] f16837e;

        /* renamed from: f, reason: collision with root package name */
        private int f16838f;

        @Override // java.util.ListIterator
        public void add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f16838f < this.f16837e.length;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f16838f > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (hasNext()) {
                Object[] objArr = this.f16837e;
                int i2 = this.f16838f;
                this.f16838f = i2 + 1;
                return (E) objArr[i2];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f16838f;
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                Object[] objArr = this.f16837e;
                int i2 = this.f16838f - 1;
                this.f16838f = i2;
                return (E) objArr[i2];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f16838f - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(E e2) {
            throw new UnsupportedOperationException();
        }

        private C0177a(Object[] objArr, int i2) {
            this.f16838f = i2;
            this.f16837e = objArr;
        }
    }

    public a() {
        this.lock = new ReentrantLock();
        a(new Object[0]);
    }

    private void a(Object[] objArr) {
        this.f16836e = objArr;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        Object[] objArr = new Object[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            objArr[i2] = objectInputStream.readObject();
        }
        a(objArr);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        Object[] array = getArray();
        objectOutputStream.writeInt(array.length);
        for (Object obj : array) {
            objectOutputStream.writeObject(obj);
        }
    }

    @Override // java.util.List
    public void add(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        Object[] array = collection.getClass() == a.class ? ((a) collection).getArray() : collection.toArray();
        if (array.length == 0) {
            return false;
        }
        return addAll(array);
    }

    public int addAllAbsent(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (addIfAbsent(it.next())) {
                i2++;
            }
        }
        return i2;
    }

    public boolean addIfAbsent(E e2) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object[] array = getArray();
            int length = array.length;
            int binarySearch = Arrays.binarySearch(array, e2, this.comparator);
            if (binarySearch >= 0) {
                return false;
            }
            int i2 = binarySearch ^ (-1);
            Object[] objArr = (Object[]) Array.newInstance(array.getClass().getComponentType(), length + 1);
            if (length > 0) {
                if (i2 == 0) {
                    System.arraycopy(array, 0, objArr, 1, length);
                } else if (i2 > length) {
                    System.arraycopy(array, 0, objArr, 0, length);
                } else {
                    System.arraycopy(array, 0, objArr, 0, i2);
                    System.arraycopy(array, i2, objArr, i2 + 1, length - i2);
                }
            }
            objArr[i2] = e2;
            a(objArr);
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public int binarySearch(Object obj) {
        Object[] array = getArray();
        return a(obj, array, 0, array.length, this.comparator);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            a(new Object[0]);
        } finally {
            reentrantLock.unlock();
        }
    }

    public Object clone() {
        try {
            a aVar = (a) super.clone();
            aVar.f16836e = (Object[]) aVar.f16836e.clone();
            return aVar;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        Object[] array = getArray();
        return a(obj, array, 0, array.length) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Object[] array = getArray();
        int length = array.length;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (a(it.next(), array, 0, length) < 0) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Iterator<E> it = ((List) obj).iterator();
        for (Object obj2 : getArray()) {
            if (!it.hasNext() || !a(obj2, it.next())) {
                return false;
            }
        }
        return !it.hasNext();
    }

    @Override // java.util.List
    public E get(int i2) {
        return a(getArray(), i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] getArray() {
        return this.f16836e;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        Object[] array = getArray();
        int length = array.length;
        int i2 = 1;
        for (int i3 = 0; i3 < length; i3++) {
            Object obj = array[i3];
            i2 = (i2 * 31) + (obj == null ? 0 : obj.hashCode());
        }
        return i2;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Object[] array = getArray();
        return a(obj, array, 0, array.length);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new C0177a(getArray(), 0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new C0177a(getArray(), 0);
    }

    @Override // java.util.List
    public E remove(int i2) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object[] array = getArray();
            int length = array.length;
            E a2 = a(array, i2);
            int i3 = (length - i2) - 1;
            if (i3 == 0) {
                a(Arrays.copyOf(array, length - 1));
            } else {
                Object[] objArr = new Object[length - 1];
                System.arraycopy(array, 0, objArr, 0, i2);
                System.arraycopy(array, i2 + 1, objArr, i2, i3);
                a(objArr);
            }
            return a2;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        if (collection != null) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                Object[] array = getArray();
                int length = array.length;
                if (length != 0) {
                    Object[] objArr = new Object[length];
                    int i2 = 0;
                    for (Object obj : array) {
                        if (!collection.contains(obj)) {
                            objArr[i2] = obj;
                            i2++;
                        }
                    }
                    if (i2 != length) {
                        a(Arrays.copyOf(objArr, i2));
                        reentrantLock.unlock();
                        return true;
                    }
                }
                return false;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new NullPointerException();
    }

    void removeRange(int i2, int i3) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object[] array = getArray();
            int length = array.length;
            if (i2 < 0 || i3 > length || i3 < i2) {
                throw new IndexOutOfBoundsException();
            }
            int i4 = length - (i3 - i2);
            int i5 = length - i3;
            if (i5 == 0) {
                a(Arrays.copyOf(array, i4));
            } else {
                Object[] objArr = new Object[i4];
                System.arraycopy(array, 0, objArr, 0, i2);
                System.arraycopy(array, i3, objArr, i2, i5);
                a(objArr);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        if (collection != null) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                Object[] array = getArray();
                int length = array.length;
                if (length != 0) {
                    Object[] objArr = new Object[length];
                    int i2 = 0;
                    for (Object obj : array) {
                        if (collection.contains(obj)) {
                            objArr[i2] = obj;
                            i2++;
                        }
                    }
                    if (i2 != length) {
                        a(Arrays.copyOf(objArr, i2));
                        reentrantLock.unlock();
                        return true;
                    }
                }
                return false;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new NullPointerException();
    }

    @Override // java.util.List
    public E set(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return getArray().length;
    }

    @Override // java.util.List
    public List<E> subList(int i2, int i3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        Object[] array = getArray();
        return Arrays.copyOf(array, array.length);
    }

    public String toString() {
        return Arrays.toString(getArray());
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e2) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object[] array = getArray();
            int length = array.length;
            Object[] objArr = (Object[]) Array.newInstance(array.getClass().getComponentType(), length + 1);
            int i2 = 0;
            if (length > 0) {
                int binarySearch = Arrays.binarySearch(array, e2, this.comparator);
                if (binarySearch < 0) {
                    binarySearch ^= -1;
                }
                if (binarySearch == 0) {
                    System.arraycopy(array, 0, objArr, 1, length);
                } else if (binarySearch > length) {
                    System.arraycopy(array, 0, objArr, 0, length);
                } else {
                    System.arraycopy(array, 0, objArr, 0, binarySearch);
                    System.arraycopy(array, binarySearch, objArr, binarySearch + 1, length - binarySearch);
                }
                i2 = binarySearch;
            }
            objArr[i2] = e2;
            a(objArr);
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i2) {
        Object[] array = getArray();
        int length = array.length;
        if (i2 >= 0 && i2 <= length) {
            return new C0177a(array, i2);
        }
        throw new IndexOutOfBoundsException("Index: " + i2);
    }

    private static int a(Object obj, Object[] objArr, int i2, int i3) {
        if (obj == null) {
            while (i2 < i3) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        while (i2 < i3) {
            if (obj.equals(objArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int binarySearch(Object obj, int i2, int i3) {
        return a(obj, getArray(), i2, i3, this.comparator);
    }

    public int indexOf(E e2, int i2) {
        Object[] array = getArray();
        return a(e2, array, i2, array.length);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        Object[] array = getArray();
        int length = array.length;
        if (tArr.length < length) {
            return (T[]) Arrays.copyOf(array, length, tArr.getClass());
        }
        System.arraycopy(array, 0, tArr, 0, length);
        if (tArr.length > length) {
            tArr[length] = null;
        }
        return tArr;
    }

    public a(Comparator<? super E> comparator) {
        this.lock = new ReentrantLock();
        this.comparator = comparator;
        a(new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean addAll(E[] eArr) {
        Object[] copyOf = Arrays.copyOf(eArr, eArr.length);
        Arrays.sort(copyOf, this.comparator);
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object[] array = getArray();
            int length = array.length;
            if (length == 0 && copyOf.getClass() == Object[].class) {
                a(copyOf);
            } else {
                Object[] objArr = (Object[]) Array.newInstance(array.getClass().getComponentType(), copyOf.length + length);
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (i2 < length && i3 < copyOf.length) {
                    if (a(array[i2], copyOf[i3], this.comparator) > 0) {
                        objArr[i4] = copyOf[i3];
                        i3++;
                    } else {
                        objArr[i4] = array[i2];
                        i2++;
                    }
                    i4++;
                }
                while (i2 < length) {
                    objArr[i4] = array[i2];
                    i4++;
                    i2++;
                }
                while (i3 < copyOf.length) {
                    objArr[i4] = copyOf[i3];
                    i4++;
                    i3++;
                }
                a(objArr);
            }
            reentrantLock.unlock();
            return true;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    private static int a(Object obj, Object[] objArr, int i2, int i3, Comparator comparator) {
        int binarySearch = Arrays.binarySearch(objArr, i2, i3, obj, comparator);
        if (binarySearch < 0) {
            return -1;
        }
        return binarySearch;
    }

    private E a(Object[] objArr, int i2) {
        return (E) objArr[i2];
    }

    private boolean a(Object obj, Object[] objArr, int i2) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Object[] array = getArray();
            int length = array.length;
            if (objArr != array) {
                int min = Math.min(i2, length);
                int i3 = 0;
                while (true) {
                    if (i3 < min) {
                        if (array[i3] != objArr[i3] && a(obj, array[i3])) {
                            i2 = i3;
                            break;
                        }
                        i3++;
                    } else {
                        if (i2 >= length) {
                            return false;
                        }
                        if (array[i2] != obj && (i2 = a(obj, array, i2, length)) < 0) {
                            return false;
                        }
                    }
                }
            }
            Object[] objArr2 = new Object[length - 1];
            System.arraycopy(array, 0, objArr2, 0, i2);
            System.arraycopy(array, i2 + 1, objArr2, i2, (length - i2) - 1);
            a(objArr2);
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public a(Collection<? extends E> collection) {
        this(collection, (Comparator) null);
    }

    public a(Collection<? extends E> collection, Comparator<? super E> comparator) {
        this.lock = new ReentrantLock();
        this.comparator = comparator;
        if (collection.getClass() == a.class) {
            a(((a) collection).getArray());
        } else {
            addAll(collection);
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        Object[] array = getArray();
        int a2 = a(obj, array, 0, array.length);
        if (a2 < 0) {
            return false;
        }
        return a(obj, array, a2);
    }

    public a(E[] eArr) {
        this(eArr, (Comparator) null);
    }

    public a(E[] eArr, Comparator<? super E> comparator) {
        this.lock = new ReentrantLock();
        this.comparator = comparator;
        addAll(eArr);
    }

    private int a(E e2, E e3, Comparator<? super E> comparator) {
        if (comparator == null) {
            return ((Comparable) e2).compareTo(e3);
        }
        return comparator.compare(e2, e3);
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }
}
