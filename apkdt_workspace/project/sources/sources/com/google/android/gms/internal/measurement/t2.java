package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class t2 implements Serializable, Iterable<Byte> {

    /* renamed from: e, reason: collision with root package name */
    private static final z2 f12110e;
    public static final t2 zzadh = new d3(c4.f11800b);
    private int zzadj = 0;

    static {
        s2 s2Var = null;
        f12110e = m2.a() ? new c3(s2Var) : new x2(s2Var);
        new v2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(byte b2) {
        return b2 & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b3 zzas(int i2) {
        return new b3(i2, null);
    }

    public static t2 zzb(byte[] bArr, int i2, int i3) {
        zzb(i2, i2 + i3, bArr.length);
        return new d3(f12110e.a(bArr, i2, i3));
    }

    public static t2 zzdq(String str) {
        return new d3(str.getBytes(c4.f11799a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t2 zze(byte[] bArr) {
        return new d3(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzadj;
        if (i2 == 0) {
            int size = size();
            i2 = zza(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzadj = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new s2(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract int zza(int i2, int i3, int i4);

    public abstract t2 zza(int i2, int i3);

    protected abstract String zza(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(q2 q2Var);

    public abstract byte zzaq(int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzar(int i2);

    public final String zzsa() {
        return size() == 0 ? "" : zza(c4.f11799a);
    }

    public abstract boolean zzsb();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzsc() {
        return this.zzadj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i2, int i3, int i4) {
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
