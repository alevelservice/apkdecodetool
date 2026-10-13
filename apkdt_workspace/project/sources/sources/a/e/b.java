package a.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: ArraySet.java */
/* loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* renamed from: i, reason: collision with root package name */
    private static final int[] f80i = new int[0];

    /* renamed from: j, reason: collision with root package name */
    private static final Object[] f81j = new Object[0];

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private static Object[] f82k;

    /* renamed from: l, reason: collision with root package name */
    private static int f83l;

    @Nullable
    private static Object[] m;
    private static int n;

    /* renamed from: e, reason: collision with root package name */
    private int[] f84e;

    /* renamed from: f, reason: collision with root package name */
    Object[] f85f;

    /* renamed from: g, reason: collision with root package name */
    int f86g;

    /* renamed from: h, reason: collision with root package name */
    private f<E, E> f87h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArraySet.java */
    /* loaded from: classes.dex */
    public class a extends f<E, E> {
        a() {
        }

        @Override // a.e.f
        protected Object a(int i2, int i3) {
            return b.this.f85f[i2];
        }

        @Override // a.e.f
        protected int b(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // a.e.f
        protected int c() {
            return b.this.f86g;
        }

        @Override // a.e.f
        protected int a(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // a.e.f
        protected Map<E, E> b() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // a.e.f
        protected void a(E e2, E e3) {
            b.this.add(e2);
        }

        @Override // a.e.f
        protected E a(int i2, E e2) {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // a.e.f
        protected void a(int i2) {
            b.this.b(i2);
        }

        @Override // a.e.f
        protected void a() {
            b.this.clear();
        }
    }

    public b() {
        this(0);
    }

    private int a(Object obj, int i2) {
        int i3 = this.f86g;
        if (i3 == 0) {
            return -1;
        }
        int a2 = c.a(this.f84e, i3, i2);
        if (a2 < 0 || obj.equals(this.f85f[a2])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.f84e[i4] == i2) {
            if (obj.equals(this.f85f[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = a2 - 1; i5 >= 0 && this.f84e[i5] == i2; i5--) {
            if (obj.equals(this.f85f[i5])) {
                return i5;
            }
        }
        return i4 ^ (-1);
    }

    private int b() {
        int i2 = this.f86g;
        if (i2 == 0) {
            return -1;
        }
        int a2 = c.a(this.f84e, i2, 0);
        if (a2 < 0 || this.f85f[a2] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.f84e[i3] == 0) {
            if (this.f85f[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = a2 - 1; i4 >= 0 && this.f84e[i4] == 0; i4--) {
            if (this.f85f[i4] == null) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    private void n(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                if (m != null) {
                    Object[] objArr = m;
                    this.f85f = objArr;
                    m = (Object[]) objArr[0];
                    this.f84e = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    n--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                if (f82k != null) {
                    Object[] objArr2 = f82k;
                    this.f85f = objArr2;
                    f82k = (Object[]) objArr2[0];
                    this.f84e = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f83l--;
                    return;
                }
            }
        }
        this.f84e = new int[i2];
        this.f85f = new Object[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e2) {
        int i2;
        int a2;
        if (e2 == null) {
            a2 = b();
            i2 = 0;
        } else {
            int hashCode = e2.hashCode();
            i2 = hashCode;
            a2 = a(e2, hashCode);
        }
        if (a2 >= 0) {
            return false;
        }
        int i3 = a2 ^ (-1);
        int i4 = this.f86g;
        if (i4 >= this.f84e.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f84e;
            Object[] objArr = this.f85f;
            n(i5);
            int[] iArr2 = this.f84e;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f85f, 0, objArr.length);
            }
            a(iArr, objArr, this.f86g);
        }
        int i6 = this.f86g;
        if (i3 < i6) {
            int[] iArr3 = this.f84e;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f85f;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f86g - i3);
        }
        this.f84e[i3] = i2;
        this.f85f[i3] = e2;
        this.f86g++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        a(this.f86g + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f86g;
        if (i2 != 0) {
            a(this.f84e, this.f85f, i2);
            this.f84e = f80i;
            this.f85f = f81j;
            this.f86g = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f86g; i2++) {
                try {
                    if (!set.contains(m(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f84e;
        int i2 = this.f86g;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? b() : a(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f86g <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return a().e().iterator();
    }

    @Nullable
    public E m(int i2) {
        return (E) this.f85f[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        b(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.f86g - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f85f[i2])) {
                b(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f86g;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i2 = this.f86g;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f85f, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f86g * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f86g; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E m2 = m(i2);
            if (m2 != this) {
                sb.append(m2);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public b(int i2) {
        if (i2 == 0) {
            this.f84e = f80i;
            this.f85f = f81j;
        } else {
            n(i2);
        }
        this.f86g = 0;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.f86g) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f86g));
        }
        System.arraycopy(this.f85f, 0, tArr, 0, this.f86g);
        int length = tArr.length;
        int i2 = this.f86g;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (n < 10) {
                    objArr[0] = m;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    m = objArr;
                    n++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (f83l < 10) {
                    objArr[0] = f82k;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f82k = objArr;
                    f83l++;
                }
            }
        }
    }

    public E b(int i2) {
        Object[] objArr = this.f85f;
        E e2 = (E) objArr[i2];
        int i3 = this.f86g;
        if (i3 <= 1) {
            a(this.f84e, objArr, i3);
            this.f84e = f80i;
            this.f85f = f81j;
            this.f86g = 0;
        } else {
            int[] iArr = this.f84e;
            if (iArr.length > 8 && i3 < iArr.length / 3) {
                int i4 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr2 = this.f84e;
                Object[] objArr2 = this.f85f;
                n(i4);
                this.f86g--;
                if (i2 > 0) {
                    System.arraycopy(iArr2, 0, this.f84e, 0, i2);
                    System.arraycopy(objArr2, 0, this.f85f, 0, i2);
                }
                int i5 = this.f86g;
                if (i2 < i5) {
                    int i6 = i2 + 1;
                    System.arraycopy(iArr2, i6, this.f84e, i2, i5 - i2);
                    System.arraycopy(objArr2, i6, this.f85f, i2, this.f86g - i2);
                }
            } else {
                this.f86g--;
                int i7 = this.f86g;
                if (i2 < i7) {
                    int[] iArr3 = this.f84e;
                    int i8 = i2 + 1;
                    System.arraycopy(iArr3, i8, iArr3, i2, i7 - i2);
                    Object[] objArr3 = this.f85f;
                    System.arraycopy(objArr3, i8, objArr3, i2, this.f86g - i2);
                }
                this.f85f[this.f86g] = null;
            }
        }
        return e2;
    }

    public void a(int i2) {
        int[] iArr = this.f84e;
        if (iArr.length < i2) {
            Object[] objArr = this.f85f;
            n(i2);
            int i3 = this.f86g;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f84e, 0, i3);
                System.arraycopy(objArr, 0, this.f85f, 0, this.f86g);
            }
            a(iArr, objArr, this.f86g);
        }
    }

    private f<E, E> a() {
        if (this.f87h == null) {
            this.f87h = new a();
        }
        return this.f87h;
    }
}
