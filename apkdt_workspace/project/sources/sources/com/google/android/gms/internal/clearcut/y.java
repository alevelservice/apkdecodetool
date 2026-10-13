package com.google.android.gms.internal.clearcut;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class y implements Serializable, Iterable<Byte> {

    /* renamed from: e, reason: collision with root package name */
    private static final c0 f11613e;
    public static final y zzfi = new f0(f1.f11420b);
    private int zzfk = 0;

    static {
        z zVar = null;
        f11613e = t.a() ? new g0(zVar) : new a0(zVar);
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

    public static y zzb(byte[] bArr, int i2, int i3) {
        return new f0(f11613e.a(bArr, i2, i3));
    }

    public static y zzf(String str) {
        return new f0(str.getBytes(f1.f11419a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d0 zzk(int i2) {
        return new d0(i2, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzfk;
        if (i2 == 0) {
            int size = size();
            i2 = zza(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzfk = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new z(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract int zza(int i2, int i3, int i4);

    public abstract y zza(int i2, int i3);

    protected abstract String zza(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(x xVar);

    public abstract boolean zzaa();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzab() {
        return this.zzfk;
    }

    public abstract byte zzj(int i2);

    public final String zzz() {
        return size() == 0 ? "" : zza(f1.f11419a);
    }
}
