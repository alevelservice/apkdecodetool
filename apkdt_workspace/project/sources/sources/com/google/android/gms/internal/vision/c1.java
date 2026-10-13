package com.google.android.gms.internal.vision;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class c1<K, V> extends x0<K, V> {

    /* renamed from: h, reason: collision with root package name */
    private final transient Object f12312h;

    /* renamed from: i, reason: collision with root package name */
    private final transient Object[] f12313i;

    /* renamed from: j, reason: collision with root package name */
    private final transient int f12314j;

    static {
        new c1(null, new Object[0], 0);
    }

    private c1(Object obj, Object[] objArr, int i2) {
        this.f12312h = obj;
        this.f12313i = objArr;
        this.f12314j = i2;
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
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        r0[r6] = (byte) r2;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a0, code lost:
    
        r0[r6] = (short) r2;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d5, code lost:
    
        r0[r7] = r2;
        r3 = r3 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> com.google.android.gms.internal.vision.c1<K, V> zza(int r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.c1.zza(int, java.lang.Object[]):com.google.android.gms.internal.vision.c1");
    }

    @Override // com.google.android.gms.internal.vision.x0, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.f12312h;
        Object[] objArr = this.f12313i;
        int i2 = this.f12314j;
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
            int a2 = u0.a(obj.hashCode());
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
            int a3 = u0.a(obj.hashCode());
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
            int a4 = u0.a(obj.hashCode());
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
        return this.f12314j;
    }

    @Override // com.google.android.gms.internal.vision.x0
    final a1<Map.Entry<K, V>> zzce() {
        return new b1(this, this.f12313i, 0, this.f12314j);
    }

    @Override // com.google.android.gms.internal.vision.x0
    final a1<K> zzcf() {
        return new d1(this, new g1(this.f12313i, 0, this.f12314j));
    }

    @Override // com.google.android.gms.internal.vision.x0
    final t0<V> zzcg() {
        return new g1(this.f12313i, 1, this.f12314j);
    }
}
