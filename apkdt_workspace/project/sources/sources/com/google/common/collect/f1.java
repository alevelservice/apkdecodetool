package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import java.util.AbstractMap;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableMap.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public final class f1<K, V> extends z<K, V> {
    static final z<Object, Object> EMPTY = new f1(null, new Object[0], 0);
    private static final long serialVersionUID = 0;

    @VisibleForTesting
    final transient Object[] alternatingKeysAndValues;

    /* renamed from: i, reason: collision with root package name */
    private final transient Object f14084i;

    /* renamed from: j, reason: collision with root package name */
    private final transient int f14085j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegularImmutableMap.java */
    /* loaded from: classes.dex */
    public static class a<K, V> extends g0<Map.Entry<K, V>> {

        /* renamed from: g, reason: collision with root package name */
        private final transient z<K, V> f14086g;

        /* renamed from: h, reason: collision with root package name */
        private final transient Object[] f14087h;

        /* renamed from: i, reason: collision with root package name */
        private final transient int f14088i;

        /* renamed from: j, reason: collision with root package name */
        private final transient int f14089j;

        /* compiled from: RegularImmutableMap.java */
        /* renamed from: com.google.common.collect.f1$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0106a extends x<Map.Entry<K, V>> {
            C0106a() {
            }

            @Override // com.google.common.collect.v
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.f14089j;
            }

            @Override // java.util.List
            public Map.Entry<K, V> get(int i2) {
                e.i.c.a.j.a(i2, a.this.f14089j);
                int i3 = i2 * 2;
                return new AbstractMap.SimpleImmutableEntry(a.this.f14087h[a.this.f14088i + i3], a.this.f14087h[i3 + (a.this.f14088i ^ 1)]);
            }
        }

        a(z<K, V> zVar, Object[] objArr, int i2, int i3) {
            this.f14086g = zVar;
            this.f14087h = objArr;
            this.f14088i = i2;
            this.f14089j = i3;
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f14086g.get(key));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public int copyIntoArray(Object[] objArr, int i2) {
            return asList().copyIntoArray(objArr, i2);
        }

        @Override // com.google.common.collect.g0
        x<Map.Entry<K, V>> createAsList() {
            return new C0106a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14089j;
        }

        @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public t1<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    /* compiled from: RegularImmutableMap.java */
    /* loaded from: classes.dex */
    static final class b<K> extends g0<K> {

        /* renamed from: g, reason: collision with root package name */
        private final transient z<K, ?> f14090g;

        /* renamed from: h, reason: collision with root package name */
        private final transient x<K> f14091h;

        b(z<K, ?> zVar, x<K> xVar) {
            this.f14090g = zVar;
            this.f14091h = xVar;
        }

        @Override // com.google.common.collect.g0, com.google.common.collect.v
        public x<K> asList() {
            return this.f14091h;
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return this.f14090g.get(obj) != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public int copyIntoArray(Object[] objArr, int i2) {
            return asList().copyIntoArray(objArr, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14090g.size();
        }

        @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public t1<K> iterator() {
            return asList().iterator();
        }
    }

    /* compiled from: RegularImmutableMap.java */
    /* loaded from: classes.dex */
    static final class c extends x<Object> {

        /* renamed from: g, reason: collision with root package name */
        private final transient Object[] f14092g;

        /* renamed from: h, reason: collision with root package name */
        private final transient int f14093h;

        /* renamed from: i, reason: collision with root package name */
        private final transient int f14094i;

        c(Object[] objArr, int i2, int i3) {
            this.f14092g = objArr;
            this.f14093h = i2;
            this.f14094i = i3;
        }

        @Override // java.util.List
        public Object get(int i2) {
            e.i.c.a.j.a(i2, this.f14094i);
            return this.f14092g[(i2 * 2) + this.f14093h];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14094i;
        }
    }

    private f1(Object obj, Object[] objArr, int i2) {
        this.f14084i = obj;
        this.alternatingKeysAndValues = objArr;
        this.f14085j = i2;
    }

    private static IllegalArgumentException a(Object obj, Object obj2, Object[] objArr, int i2) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i2] + "=" + objArr[i2 ^ 1]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> f1<K, V> create(int i2, Object[] objArr) {
        if (i2 == 0) {
            return (f1) EMPTY;
        }
        if (i2 == 1) {
            i.a(objArr[0], objArr[1]);
            return new f1<>(null, objArr, 1);
        }
        e.i.c.a.j.b(i2, objArr.length >> 1);
        return new f1<>(createHashTable(objArr, i2, g0.chooseTableSize(i2), 0), objArr, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        r11[r5] = (byte) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0079, code lost:
    
        r11[r5] = (short) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b0, code lost:
    
        r11[r6] = r1;
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.Object createHashTable(java.lang.Object[] r9, int r10, int r11, int r12) {
        /*
            r0 = 1
            if (r10 != r0) goto Le
            r10 = r9[r12]
            r11 = r12 ^ 1
            r9 = r9[r11]
            com.google.common.collect.i.a(r10, r9)
            r9 = 0
            return r9
        Le:
            int r0 = r11 + (-1)
            r1 = 128(0x80, float:1.8E-43)
            r2 = 0
            r3 = -1
            if (r11 > r1) goto L50
            byte[] r11 = new byte[r11]
            java.util.Arrays.fill(r11, r3)
        L1b:
            if (r2 >= r10) goto L4f
            int r1 = r2 * 2
            int r1 = r1 + r12
            r3 = r9[r1]
            r4 = r1 ^ 1
            r4 = r9[r4]
            com.google.common.collect.i.a(r3, r4)
            int r5 = r3.hashCode()
            int r5 = com.google.common.collect.u.a(r5)
        L31:
            r5 = r5 & r0
            r6 = r11[r5]
            r7 = 255(0xff, float:3.57E-43)
            r6 = r6 & r7
            if (r6 != r7) goto L3f
            byte r1 = (byte) r1
            r11[r5] = r1
            int r2 = r2 + 1
            goto L1b
        L3f:
            r7 = r9[r6]
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto L4a
            int r5 = r5 + 1
            goto L31
        L4a:
            java.lang.IllegalArgumentException r9 = a(r3, r4, r9, r6)
            throw r9
        L4f:
            return r11
        L50:
            r1 = 32768(0x8000, float:4.5918E-41)
            if (r11 > r1) goto L90
            short[] r11 = new short[r11]
            java.util.Arrays.fill(r11, r3)
        L5a:
            if (r2 >= r10) goto L8f
            int r1 = r2 * 2
            int r1 = r1 + r12
            r3 = r9[r1]
            r4 = r1 ^ 1
            r4 = r9[r4]
            com.google.common.collect.i.a(r3, r4)
            int r5 = r3.hashCode()
            int r5 = com.google.common.collect.u.a(r5)
        L70:
            r5 = r5 & r0
            short r6 = r11[r5]
            r7 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r7
            if (r6 != r7) goto L7f
            short r1 = (short) r1
            r11[r5] = r1
            int r2 = r2 + 1
            goto L5a
        L7f:
            r7 = r9[r6]
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto L8a
            int r5 = r5 + 1
            goto L70
        L8a:
            java.lang.IllegalArgumentException r9 = a(r3, r4, r9, r6)
            throw r9
        L8f:
            return r11
        L90:
            int[] r11 = new int[r11]
            java.util.Arrays.fill(r11, r3)
        L95:
            if (r2 >= r10) goto Lc5
            int r1 = r2 * 2
            int r1 = r1 + r12
            r4 = r9[r1]
            r5 = r1 ^ 1
            r5 = r9[r5]
            com.google.common.collect.i.a(r4, r5)
            int r6 = r4.hashCode()
            int r6 = com.google.common.collect.u.a(r6)
        Lab:
            r6 = r6 & r0
            r7 = r11[r6]
            if (r7 != r3) goto Lb5
            r11[r6] = r1
            int r2 = r2 + 1
            goto L95
        Lb5:
            r8 = r9[r7]
            boolean r8 = r8.equals(r4)
            if (r8 != 0) goto Lc0
            int r6 = r6 + 1
            goto Lab
        Lc0:
            java.lang.IllegalArgumentException r9 = a(r4, r5, r9, r7)
            throw r9
        Lc5:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.f1.createHashTable(java.lang.Object[], int, int, int):java.lang.Object");
    }

    @Override // com.google.common.collect.z
    g0<Map.Entry<K, V>> createEntrySet() {
        return new a(this, this.alternatingKeysAndValues, 0, this.f14085j);
    }

    @Override // com.google.common.collect.z
    g0<K> createKeySet() {
        return new b(this, new c(this.alternatingKeysAndValues, 0, this.f14085j));
    }

    @Override // com.google.common.collect.z
    v<V> createValues() {
        return new c(this.alternatingKeysAndValues, 1, this.f14085j);
    }

    @Override // com.google.common.collect.z, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        return (V) get(this.f14084i, this.alternatingKeysAndValues, this.f14085j, 0, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.z
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f14085j;
    }

    static Object get(@NullableDecl Object obj, @NullableDecl Object[] objArr, int i2, int i3, @NullableDecl Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i2 == 1) {
            if (objArr[i3].equals(obj2)) {
                return objArr[i3 ^ 1];
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int a2 = u.a(obj2.hashCode());
            while (true) {
                int i4 = a2 & length;
                int i5 = bArr[i4] & 255;
                if (i5 == 255) {
                    return null;
                }
                if (objArr[i5].equals(obj2)) {
                    return objArr[i5 ^ 1];
                }
                a2 = i4 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int a3 = u.a(obj2.hashCode());
            while (true) {
                int i6 = a3 & length2;
                int i7 = sArr[i6] & 65535;
                if (i7 == 65535) {
                    return null;
                }
                if (objArr[i7].equals(obj2)) {
                    return objArr[i7 ^ 1];
                }
                a3 = i6 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int a4 = u.a(obj2.hashCode());
            while (true) {
                int i8 = a4 & length3;
                int i9 = iArr[i8];
                if (i9 == -1) {
                    return null;
                }
                if (objArr[i9].equals(obj2)) {
                    return objArr[i9 ^ 1];
                }
                a4 = i8 + 1;
            }
        }
    }
}
