package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public abstract class t71 implements Serializable, Iterable<Byte> {

    /* renamed from: e, reason: collision with root package name */
    private static final z71 f9530e;
    public static final t71 zzhfn = new e81(f91.f6597b);
    private int zzhev = 0;

    static {
        w71 w71Var = null;
        f9530e = q71.a() ? new h81(w71Var) : new x71(w71Var);
        new v71();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(byte b2) {
        return b2 & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b81 zzfp(int i2) {
        return new b81(i2, null);
    }

    public static t71 zzh(byte[] bArr, int i2, int i3) {
        zzh(i2, i2 + i3, bArr.length);
        return new e81(f9530e.a(bArr, i2, i3));
    }

    public static t71 zzhh(String str) {
        return new e81(str.getBytes(f91.f6596a));
    }

    public static t71 zzy(byte[] bArr) {
        return zzh(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t71 zzz(byte[] bArr) {
        return new e81(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzhev;
        if (i2 == 0) {
            int size = size();
            i2 = zzg(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzhev = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new w71(this);
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return f91.f6597b;
        }
        byte[] bArr = new byte[size];
        zza(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract String zza(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(u71 u71Var);

    protected abstract void zza(byte[] bArr, int i2, int i3, int i4);

    public final String zzaxi() {
        return size() == 0 ? "" : zza(f91.f6596a);
    }

    public abstract boolean zzaxj();

    public abstract g81 zzaxk();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzaxl() {
        return this.zzhev;
    }

    public abstract byte zzfn(int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzfo(int i2);

    protected abstract int zzg(int i2, int i3, int i4);

    public abstract t71 zzy(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i2);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i3 < i2) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(i3);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i3);
        sb3.append(" >= ");
        sb3.append(i4);
        throw new IndexOutOfBoundsException(sb3.toString());
    }
}
