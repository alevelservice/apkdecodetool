package com.google.android.gms.internal.vision;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class j3 implements Serializable, Iterable<Byte> {

    /* renamed from: e, reason: collision with root package name */
    private static final p3 f12408e;
    public static final j3 zzrx = new t3(t4.f12541b);
    private int zzmi = 0;

    static {
        m3 m3Var = null;
        f12408e = f3.a() ? new w3(m3Var) : new n3(m3Var);
        new l3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(byte b2) {
        return b2 & 255;
    }

    public static j3 zza(byte[] bArr, int i2, int i3) {
        zzc(i2, i2 + i3, bArr.length);
        return new t3(f12408e.a(bArr, i2, i3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r3 zzap(int i2) {
        return new r3(i2, null);
    }

    static j3 zzb(byte[] bArr, int i2, int i3) {
        return new q3(bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i2, int i3, int i4) {
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

    static j3 zzd(byte[] bArr) {
        return new t3(bArr);
    }

    public static j3 zzw(String str) {
        return new t3(str.getBytes(t4.f12540a));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzmi;
        if (i2 == 0) {
            int size = size();
            i2 = zzb(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzmi = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new m3(this);
    }

    public abstract int size();

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        objArr[2] = size() <= 50 ? e7.a(this) : String.valueOf(e7.a(zzf(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    protected abstract String zza(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(k3 k3Var);

    protected abstract void zza(byte[] bArr, int i2, int i3, int i4);

    public abstract byte zzan(int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzao(int i2);

    protected abstract int zzb(int i2, int i3, int i4);

    public final String zzer() {
        return size() == 0 ? "" : zza(t4.f12540a);
    }

    public abstract boolean zzes();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzet() {
        return this.zzmi;
    }

    public abstract j3 zzf(int i2, int i3);
}
