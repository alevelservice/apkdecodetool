package a.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* compiled from: SimpleArrayMap.java */
/* loaded from: classes.dex */
public class g<K, V> {

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    static Object[] f120h;

    /* renamed from: i, reason: collision with root package name */
    static int f121i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    static Object[] f122j;

    /* renamed from: k, reason: collision with root package name */
    static int f123k;

    /* renamed from: e, reason: collision with root package name */
    int[] f124e;

    /* renamed from: f, reason: collision with root package name */
    Object[] f125f;

    /* renamed from: g, reason: collision with root package name */
    int f126g;

    public g() {
        this.f124e = c.f89a;
        this.f125f = c.f91c;
        this.f126g = 0;
    }

    private static int a(int[] iArr, int i2, int i3) {
        try {
            return c.a(iArr, i2, i3);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private void e(int i2) {
        if (i2 == 8) {
            synchronized (g.class) {
                if (f122j != null) {
                    Object[] objArr = f122j;
                    this.f125f = objArr;
                    f122j = (Object[]) objArr[0];
                    this.f124e = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f123k--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (g.class) {
                if (f120h != null) {
                    Object[] objArr2 = f120h;
                    this.f125f = objArr2;
                    f120h = (Object[]) objArr2[0];
                    this.f124e = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f121i--;
                    return;
                }
            }
        }
        this.f124e = new int[i2];
        this.f125f = new Object[i2 << 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(Object obj) {
        int i2 = this.f126g * 2;
        Object[] objArr = this.f125f;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public V c(int i2) {
        int i3;
        Object[] objArr = this.f125f;
        int i4 = i2 << 1;
        V v = (V) objArr[i4 + 1];
        int i5 = this.f126g;
        if (i5 <= 1) {
            a(this.f124e, objArr, i5);
            this.f124e = c.f89a;
            this.f125f = c.f91c;
            i3 = 0;
        } else {
            i3 = i5 - 1;
            int[] iArr = this.f124e;
            if (iArr.length > 8 && i5 < iArr.length / 3) {
                int i6 = i5 > 8 ? i5 + (i5 >> 1) : 8;
                int[] iArr2 = this.f124e;
                Object[] objArr2 = this.f125f;
                e(i6);
                if (i5 != this.f126g) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr2, 0, this.f124e, 0, i2);
                    System.arraycopy(objArr2, 0, this.f125f, 0, i4);
                }
                if (i2 < i3) {
                    int i7 = i2 + 1;
                    int i8 = i3 - i2;
                    System.arraycopy(iArr2, i7, this.f124e, i2, i8);
                    System.arraycopy(objArr2, i7 << 1, this.f125f, i4, i8 << 1);
                }
            } else {
                if (i2 < i3) {
                    int[] iArr3 = this.f124e;
                    int i9 = i2 + 1;
                    int i10 = i3 - i2;
                    System.arraycopy(iArr3, i9, iArr3, i2, i10);
                    Object[] objArr3 = this.f125f;
                    System.arraycopy(objArr3, i9 << 1, objArr3, i4, i10 << 1);
                }
                Object[] objArr4 = this.f125f;
                int i11 = i3 << 1;
                objArr4[i11] = null;
                objArr4[i11 + 1] = null;
            }
        }
        if (i5 == this.f126g) {
            this.f126g = i3;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public void clear() {
        int i2 = this.f126g;
        if (i2 > 0) {
            int[] iArr = this.f124e;
            Object[] objArr = this.f125f;
            this.f124e = c.f89a;
            this.f125f = c.f91c;
            this.f126g = 0;
            a(iArr, objArr, i2);
        }
        if (this.f126g > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        return a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public V d(int i2) {
        return (V) this.f125f[(i2 << 1) + 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f126g; i2++) {
                try {
                    K b2 = b(i2);
                    V d2 = d(i2);
                    Object obj2 = gVar.get(b2);
                    if (d2 == null) {
                        if (obj2 != null || !gVar.containsKey(b2)) {
                            return false;
                        }
                    } else if (!d2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.f126g; i3++) {
                try {
                    K b3 = b(i3);
                    V d3 = d(i3);
                    Object obj3 = map.get(b3);
                    if (d3 == null) {
                        if (obj3 != null || !map.containsKey(b3)) {
                            return false;
                        }
                    } else if (!d3.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int a2 = a(obj);
        return a2 >= 0 ? (V) this.f125f[(a2 << 1) + 1] : v;
    }

    public int hashCode() {
        int[] iArr = this.f124e;
        Object[] objArr = this.f125f;
        int i2 = this.f126g;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i3 < i2) {
            Object obj = objArr[i5];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i5 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.f126g <= 0;
    }

    @Nullable
    public V put(K k2, V v) {
        int i2;
        int a2;
        int i3 = this.f126g;
        if (k2 == null) {
            a2 = a();
            i2 = 0;
        } else {
            int hashCode = k2.hashCode();
            i2 = hashCode;
            a2 = a(k2, hashCode);
        }
        if (a2 >= 0) {
            int i4 = (a2 << 1) + 1;
            Object[] objArr = this.f125f;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = a2 ^ (-1);
        if (i3 >= this.f124e.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f124e;
            Object[] objArr2 = this.f125f;
            e(i6);
            if (i3 == this.f126g) {
                int[] iArr2 = this.f124e;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f125f, 0, objArr2.length);
                }
                a(iArr, objArr2, i3);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i5 < i3) {
            int[] iArr3 = this.f124e;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f125f;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f126g - i5) << 1);
        }
        int i8 = this.f126g;
        if (i3 == i8) {
            int[] iArr4 = this.f124e;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                Object[] objArr4 = this.f125f;
                int i9 = i5 << 1;
                objArr4[i9] = k2;
                objArr4[i9 + 1] = v;
                this.f126g = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Nullable
    public V putIfAbsent(K k2, V v) {
        V v2 = get(k2);
        return v2 == null ? put(k2, v) : v2;
    }

    @Nullable
    public V remove(Object obj) {
        int a2 = a(obj);
        if (a2 >= 0) {
            return c(a2);
        }
        return null;
    }

    @Nullable
    public V replace(K k2, V v) {
        int a2 = a(k2);
        if (a2 >= 0) {
            return a(a2, (int) v);
        }
        return null;
    }

    public int size() {
        return this.f126g;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f126g * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f126g; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K b2 = b(i2);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V d2 = d(i2);
            if (d2 != this) {
                sb.append(d2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    int a(Object obj, int i2) {
        int i3 = this.f126g;
        if (i3 == 0) {
            return -1;
        }
        int a2 = a(this.f124e, i3, i2);
        if (a2 < 0 || obj.equals(this.f125f[a2 << 1])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.f124e[i4] == i2) {
            if (obj.equals(this.f125f[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = a2 - 1; i5 >= 0 && this.f124e[i5] == i2; i5--) {
            if (obj.equals(this.f125f[i5 << 1])) {
                return i5;
            }
        }
        return i4 ^ (-1);
    }

    public boolean remove(Object obj, Object obj2) {
        int a2 = a(obj);
        if (a2 < 0) {
            return false;
        }
        V d2 = d(a2);
        if (obj2 != d2 && (obj2 == null || !obj2.equals(d2))) {
            return false;
        }
        c(a2);
        return true;
    }

    public boolean replace(K k2, V v, V v2) {
        int a2 = a(k2);
        if (a2 < 0) {
            return false;
        }
        V d2 = d(a2);
        if (d2 != v && (v == null || !v.equals(d2))) {
            return false;
        }
        a(a2, (int) v2);
        return true;
    }

    public g(int i2) {
        if (i2 == 0) {
            this.f124e = c.f89a;
            this.f125f = c.f91c;
        } else {
            e(i2);
        }
        this.f126g = 0;
    }

    public K b(int i2) {
        return (K) this.f125f[i2 << 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(g<K, V> gVar) {
        this();
        if (gVar != 0) {
            a((g) gVar);
        }
    }

    int a() {
        int i2 = this.f126g;
        if (i2 == 0) {
            return -1;
        }
        int a2 = a(this.f124e, i2, 0);
        if (a2 < 0 || this.f125f[a2 << 1] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.f124e[i3] == 0) {
            if (this.f125f[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = a2 - 1; i4 >= 0 && this.f124e[i4] == 0; i4--) {
            if (this.f125f[i4 << 1] == null) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (g.class) {
                if (f123k < 10) {
                    objArr[0] = f122j;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f122j = objArr;
                    f123k++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (g.class) {
                if (f121i < 10) {
                    objArr[0] = f120h;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f120h = objArr;
                    f121i++;
                }
            }
        }
    }

    public void a(int i2) {
        int i3 = this.f126g;
        int[] iArr = this.f124e;
        if (iArr.length < i2) {
            Object[] objArr = this.f125f;
            e(i2);
            if (this.f126g > 0) {
                System.arraycopy(iArr, 0, this.f124e, 0, i3);
                System.arraycopy(objArr, 0, this.f125f, 0, i3 << 1);
            }
            a(iArr, objArr, i3);
        }
        if (this.f126g != i3) {
            throw new ConcurrentModificationException();
        }
    }

    public int a(@Nullable Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public V a(int i2, V v) {
        int i3 = (i2 << 1) + 1;
        Object[] objArr = this.f125f;
        V v2 = (V) objArr[i3];
        objArr[i3] = v;
        return v2;
    }

    public void a(@NonNull g<? extends K, ? extends V> gVar) {
        int i2 = gVar.f126g;
        a(this.f126g + i2);
        if (this.f126g != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                put(gVar.b(i3), gVar.d(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(gVar.f124e, 0, this.f124e, 0, i2);
            System.arraycopy(gVar.f125f, 0, this.f125f, 0, i2 << 1);
            this.f126g = i2;
        }
    }
}
