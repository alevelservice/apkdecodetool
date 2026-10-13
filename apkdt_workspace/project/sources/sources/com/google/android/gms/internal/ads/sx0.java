package com.google.android.gms.internal.ads;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sx0<K, V> extends nx0<K, V> {

    /* renamed from: h, reason: collision with root package name */
    private final transient Object f9466h;

    /* renamed from: i, reason: collision with root package name */
    private final transient Object[] f9467i;

    /* renamed from: j, reason: collision with root package name */
    private final transient int f9468j;

    static {
        new sx0(null, new Object[0], 0);
    }

    private sx0(Object obj, Object[] objArr, int i2) {
        this.f9466h = obj;
        this.f9467i = objArr;
        this.f9468j = i2;
    }

    private static IllegalArgumentException a(Object obj, Object obj2, Object[] objArr, int i2) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i2]);
        String valueOf4 = String.valueOf(objArr[i2 ^ 1]);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("Multiple entries with same key: ");
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        sb.append(" and ");
        sb.append(valueOf3);
        sb.append("=");
        sb.append(valueOf4);
        return new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        r10[r6] = (byte) r3;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0073, code lost:
    
        r10[r6] = (short) r3;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a8, code lost:
    
        r10[r7] = r4;
        r2 = r2 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [int[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> com.google.android.gms.internal.ads.sx0<K, V> zzc(int r10, java.lang.Object[] r11) {
        /*
            int r10 = r11.length
            int r10 = r10 >> 1
            r0 = 5
            com.google.android.gms.internal.ads.uw0.b(r0, r10)
            int r10 = com.google.android.gms.internal.ads.mx0.zzds(r0)
            int r1 = r10 + (-1)
            r2 = 0
            r3 = -1
            r4 = 128(0x80, float:1.8E-43)
            if (r10 > r4) goto L4b
            byte[] r10 = new byte[r10]
            java.util.Arrays.fill(r10, r3)
        L18:
            if (r2 >= r0) goto Lbd
            int r3 = r2 * 2
            r4 = r11[r3]
            r5 = r3 ^ 1
            r5 = r11[r5]
            com.google.android.gms.internal.ads.dx0.a(r4, r5)
            int r6 = r4.hashCode()
            int r6 = com.google.android.gms.internal.ads.fx0.a(r6)
        L2d:
            r6 = r6 & r1
            r7 = r10[r6]
            r8 = 255(0xff, float:3.57E-43)
            r7 = r7 & r8
            if (r7 != r8) goto L3b
            byte r3 = (byte) r3
            r10[r6] = r3
            int r2 = r2 + 1
            goto L18
        L3b:
            r8 = r11[r7]
            boolean r8 = r8.equals(r4)
            if (r8 != 0) goto L46
            int r6 = r6 + 1
            goto L2d
        L46:
            java.lang.IllegalArgumentException r10 = a(r4, r5, r11, r7)
            throw r10
        L4b:
            r4 = 32768(0x8000, float:4.5918E-41)
            if (r10 > r4) goto L89
            short[] r10 = new short[r10]
            java.util.Arrays.fill(r10, r3)
        L55:
            if (r2 >= r0) goto Lbd
            int r3 = r2 * 2
            r4 = r11[r3]
            r5 = r3 ^ 1
            r5 = r11[r5]
            com.google.android.gms.internal.ads.dx0.a(r4, r5)
            int r6 = r4.hashCode()
            int r6 = com.google.android.gms.internal.ads.fx0.a(r6)
        L6a:
            r6 = r6 & r1
            short r7 = r10[r6]
            r8 = 65535(0xffff, float:9.1834E-41)
            r7 = r7 & r8
            if (r7 != r8) goto L79
            short r3 = (short) r3
            r10[r6] = r3
            int r2 = r2 + 1
            goto L55
        L79:
            r8 = r11[r7]
            boolean r8 = r8.equals(r4)
            if (r8 != 0) goto L84
            int r6 = r6 + 1
            goto L6a
        L84:
            java.lang.IllegalArgumentException r10 = a(r4, r5, r11, r7)
            throw r10
        L89:
            int[] r10 = new int[r10]
            java.util.Arrays.fill(r10, r3)
        L8e:
            if (r2 >= r0) goto Lbd
            int r4 = r2 * 2
            r5 = r11[r4]
            r6 = r4 ^ 1
            r6 = r11[r6]
            com.google.android.gms.internal.ads.dx0.a(r5, r6)
            int r7 = r5.hashCode()
            int r7 = com.google.android.gms.internal.ads.fx0.a(r7)
        La3:
            r7 = r7 & r1
            r8 = r10[r7]
            if (r8 != r3) goto Lad
            r10[r7] = r4
            int r2 = r2 + 1
            goto L8e
        Lad:
            r9 = r11[r8]
            boolean r9 = r9.equals(r5)
            if (r9 != 0) goto Lb8
            int r7 = r7 + 1
            goto La3
        Lb8:
            java.lang.IllegalArgumentException r10 = a(r5, r6, r11, r8)
            throw r10
        Lbd:
            com.google.android.gms.internal.ads.sx0 r1 = new com.google.android.gms.internal.ads.sx0
            r1.<init>(r10, r11, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sx0.zzc(int, java.lang.Object[]):com.google.android.gms.internal.ads.sx0");
    }

    @Override // com.google.android.gms.internal.ads.nx0, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.f9466h;
        Object[] objArr = this.f9467i;
        int i2 = this.f9468j;
        if (obj == null) {
            return null;
        }
        if (i2 == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        }
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length - 1;
            int a2 = fx0.a(obj.hashCode());
            while (true) {
                int i3 = a2 & length;
                int i4 = bArr[i3] & 255;
                if (i4 == 255) {
                    return null;
                }
                if (objArr[i4].equals(obj)) {
                    return (V) objArr[i4 ^ 1];
                }
                a2 = i3 + 1;
            }
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length - 1;
            int a3 = fx0.a(obj.hashCode());
            while (true) {
                int i5 = a3 & length2;
                int i6 = sArr[i5] & 65535;
                if (i6 == 65535) {
                    return null;
                }
                if (objArr[i6].equals(obj)) {
                    return (V) objArr[i6 ^ 1];
                }
                a3 = i5 + 1;
            }
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length - 1;
            int a4 = fx0.a(obj.hashCode());
            while (true) {
                int i7 = a4 & length3;
                int i8 = iArr[i7];
                if (i8 == -1) {
                    return null;
                }
                if (objArr[i8].equals(obj)) {
                    return (V) objArr[i8 ^ 1];
                }
                a4 = i7 + 1;
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f9468j;
    }

    @Override // com.google.android.gms.internal.ads.nx0
    final mx0<Map.Entry<K, V>> zzaon() {
        return new vx0(this, this.f9467i, 0, this.f9468j);
    }

    @Override // com.google.android.gms.internal.ads.nx0
    final mx0<K> zzaoo() {
        return new xx0(this, new wx0(this.f9467i, 0, this.f9468j));
    }

    @Override // com.google.android.gms.internal.ads.nx0
    final ex0<V> zzaop() {
        return new wx0(this.f9467i, 1, this.f9468j);
    }
}
