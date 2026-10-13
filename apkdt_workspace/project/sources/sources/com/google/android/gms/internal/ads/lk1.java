package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lk1 {
    public float A;
    public float B;
    public float C;
    public float D;
    public float E;
    public float F;
    public int G;
    public int H;
    public int I;
    public long J;
    public long K;
    public boolean L;
    public boolean M;
    private String N;
    public bk1 O;
    public int P;

    /* renamed from: a */
    public String f7918a;

    /* renamed from: b */
    public int f7919b;

    /* renamed from: c */
    public int f7920c;

    /* renamed from: d */
    public int f7921d;

    /* renamed from: e */
    public boolean f7922e;

    /* renamed from: f */
    public byte[] f7923f;

    /* renamed from: g */
    public ak1 f7924g;

    /* renamed from: h */
    public byte[] f7925h;

    /* renamed from: i */
    public zzil f7926i;

    /* renamed from: j */
    public int f7927j;

    /* renamed from: k */
    public int f7928k;

    /* renamed from: l */
    public int f7929l;
    public int m;
    public int n;
    public byte[] o;
    public int p;
    public boolean q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public float w;
    public float x;
    public float y;
    public float z;

    private lk1() {
        this.f7927j = -1;
        this.f7928k = -1;
        this.f7929l = -1;
        this.m = -1;
        this.n = 0;
        this.o = null;
        this.p = -1;
        this.q = false;
        this.r = -1;
        this.s = -1;
        this.t = -1;
        this.u = 1000;
        this.v = 200;
        this.w = -1.0f;
        this.x = -1.0f;
        this.y = -1.0f;
        this.z = -1.0f;
        this.A = -1.0f;
        this.B = -1.0f;
        this.C = -1.0f;
        this.D = -1.0f;
        this.E = -1.0f;
        this.F = -1.0f;
        this.G = 1;
        this.H = -1;
        this.I = 8000;
        this.J = 0L;
        this.K = 0L;
        this.M = true;
        this.N = "eng";
    }

    private static boolean b(vo1 vo1Var) {
        UUID uuid;
        UUID uuid2;
        try {
            int k2 = vo1Var.k();
            if (k2 == 1) {
                return true;
            }
            if (k2 == 65534) {
                vo1Var.c(24);
                long e2 = vo1Var.e();
                uuid = gk1.b0;
                if (e2 == uuid.getMostSignificantBits()) {
                    long e3 = vo1Var.e();
                    uuid2 = gk1.b0;
                    if (e3 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new nh1("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x015f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.gms.internal.ads.rj1 r30, int r31) {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lk1.a(com.google.android.gms.internal.ads.rj1, int):void");
    }

    public /* synthetic */ lk1(jk1 jk1Var) {
        this();
    }

    private static List<byte[]> a(vo1 vo1Var) {
        try {
            vo1Var.d(16);
            if (vo1Var.m() != 826496599) {
                return null;
            }
            byte[] bArr = vo1Var.f9967a;
            for (int b2 = vo1Var.b() + 20; b2 < bArr.length - 4; b2++) {
                if (bArr[b2] == 0 && bArr[b2 + 1] == 0 && bArr[b2 + 2] == 1 && bArr[b2 + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, b2, bArr.length));
                }
            }
            throw new nh1("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new nh1("Error parsing FourCC VC1 codec private");
        }
    }

    private static List<byte[]> a(byte[] bArr) {
        try {
            if (bArr[0] == 2) {
                int i2 = 1;
                int i3 = 0;
                while (bArr[i2] == -1) {
                    i3 += 255;
                    i2++;
                }
                int i4 = i2 + 1;
                int i5 = i3 + bArr[i2];
                int i6 = 0;
                while (bArr[i4] == -1) {
                    i6 += 255;
                    i4++;
                }
                int i7 = i4 + 1;
                int i8 = i6 + bArr[i4];
                if (bArr[i7] == 1) {
                    byte[] bArr2 = new byte[i5];
                    System.arraycopy(bArr, i7, bArr2, 0, i5);
                    int i9 = i7 + i5;
                    if (bArr[i9] == 3) {
                        int i10 = i9 + i8;
                        if (bArr[i10] == 5) {
                            byte[] bArr3 = new byte[bArr.length - i10];
                            System.arraycopy(bArr, i10, bArr3, 0, bArr.length - i10);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw new nh1("Error parsing vorbis codec private");
                    }
                    throw new nh1("Error parsing vorbis codec private");
                }
                throw new nh1("Error parsing vorbis codec private");
            }
            throw new nh1("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new nh1("Error parsing vorbis codec private");
        }
    }

    public static /* synthetic */ String a(lk1 lk1Var, String str) {
        lk1Var.N = str;
        return str;
    }
}
