package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.google.android.gms.internal.ads.zzkv;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class rk1 {

    /* renamed from: a, reason: collision with root package name */
    private static final int f9144a = cp1.d("vide");

    /* renamed from: b, reason: collision with root package name */
    private static final int f9145b = cp1.d("soun");

    /* renamed from: c, reason: collision with root package name */
    private static final int f9146c = cp1.d("text");

    /* renamed from: d, reason: collision with root package name */
    private static final int f9147d = cp1.d("sbtl");

    /* renamed from: e, reason: collision with root package name */
    private static final int f9148e = cp1.d("subt");

    /* renamed from: f, reason: collision with root package name */
    private static final int f9149f = cp1.d("clcp");

    /* renamed from: g, reason: collision with root package name */
    private static final int f9150g = cp1.d("cenc");

    /* renamed from: h, reason: collision with root package name */
    private static final int f9151h = cp1.d("meta");

    /* JADX WARN: Code restructure failed: missing block: B:398:0x00a3, code lost:
    
        if (r14 == 0) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0477 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.gl1 a(com.google.android.gms.internal.ads.pk1 r43, com.google.android.gms.internal.ads.ok1 r44, long r45, com.google.android.gms.internal.ads.zzil r47, boolean r48) {
        /*
            Method dump skipped, instructions count: 1826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.rk1.a(com.google.android.gms.internal.ads.pk1, com.google.android.gms.internal.ads.ok1, long, com.google.android.gms.internal.ads.zzil, boolean):com.google.android.gms.internal.ads.gl1");
    }

    public static il1 a(gl1 gl1Var, pk1 pk1Var, tj1 tj1Var) {
        tk1 uk1Var;
        boolean z;
        int i2;
        int i3;
        int i4;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int i5;
        long j2;
        long j3;
        int[] iArr3;
        int[] iArr4;
        int i6;
        long[] jArr3;
        boolean z2;
        int[] iArr5;
        long[] jArr4;
        int i7;
        int i8;
        gl1 gl1Var2 = gl1Var;
        ok1 d2 = pk1Var.d(mk1.b0);
        if (d2 != null) {
            uk1Var = new vk1(d2);
        } else {
            ok1 d3 = pk1Var.d(mk1.c0);
            if (d3 != null) {
                uk1Var = new uk1(d3);
            } else {
                throw new nh1("Track has no sample table size information");
            }
        }
        int c2 = uk1Var.c();
        if (c2 == 0) {
            return new il1(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        ok1 d4 = pk1Var.d(mk1.d0);
        if (d4 == null) {
            d4 = pk1Var.d(mk1.e0);
            z = true;
        } else {
            z = false;
        }
        vo1 vo1Var = d4.z0;
        vo1 vo1Var2 = pk1Var.d(mk1.a0).z0;
        vo1 vo1Var3 = pk1Var.d(mk1.X).z0;
        ok1 d5 = pk1Var.d(mk1.Y);
        vo1 vo1Var4 = d5 != null ? d5.z0 : null;
        ok1 d6 = pk1Var.d(mk1.Z);
        vo1 vo1Var5 = d6 != null ? d6.z0 : null;
        qk1 qk1Var = new qk1(vo1Var2, vo1Var, z);
        vo1Var3.c(12);
        int o = vo1Var3.o() - 1;
        int o2 = vo1Var3.o();
        int o3 = vo1Var3.o();
        if (vo1Var5 != null) {
            vo1Var5.c(12);
            i2 = vo1Var5.o();
        } else {
            i2 = 0;
        }
        int i9 = -1;
        if (vo1Var4 != null) {
            vo1Var4.c(12);
            i3 = vo1Var4.o();
            if (i3 > 0) {
                i9 = vo1Var4.o() - 1;
            } else {
                vo1Var4 = null;
            }
        } else {
            i3 = 0;
        }
        long j4 = 0;
        if (!(uk1Var.b() && "audio/raw".equals(gl1Var2.f6920f.f11193j) && o == 0 && i2 == 0 && i3 == 0)) {
            jArr = new long[c2];
            iArr = new int[c2];
            jArr2 = new long[c2];
            int i10 = i3;
            iArr2 = new int[c2];
            int i11 = i10;
            int i12 = o3;
            int i13 = i2;
            int i14 = i9;
            long j5 = 0;
            long j6 = 0;
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = o2;
            int i20 = o;
            int i21 = 0;
            while (i21 < c2) {
                long j7 = j5;
                int i22 = i15;
                while (i22 == 0) {
                    no1.b(qk1Var.a());
                    j7 = qk1Var.f8940d;
                    i22 = qk1Var.f8939c;
                    i20 = i20;
                    i12 = i12;
                }
                int i23 = i20;
                int i24 = i12;
                if (vo1Var5 != null) {
                    while (i18 == 0 && i13 > 0) {
                        i18 = vo1Var5.o();
                        i17 = vo1Var5.d();
                        i13--;
                    }
                    i18--;
                }
                int i25 = i17;
                jArr[i21] = j7;
                iArr[i21] = uk1Var.a();
                if (iArr[i21] > i16) {
                    i7 = c2;
                    i16 = iArr[i21];
                } else {
                    i7 = c2;
                }
                tk1 tk1Var = uk1Var;
                jArr2[i21] = j6 + i25;
                iArr2[i21] = vo1Var4 == null ? 1 : 0;
                if (i21 == i14) {
                    iArr2[i21] = 1;
                    i11--;
                    if (i11 > 0) {
                        i14 = vo1Var4.o() - 1;
                    }
                }
                int i26 = i11;
                int i27 = i14;
                int i28 = i24;
                j6 += i28;
                i19--;
                if (i19 != 0 || i23 <= 0) {
                    i8 = i23;
                } else {
                    i8 = i23 - 1;
                    i19 = vo1Var3.o();
                    i28 = vo1Var3.o();
                }
                int i29 = i8;
                long j8 = j7 + iArr[i21];
                i21++;
                i14 = i27;
                c2 = i7;
                i15 = i22 - 1;
                i17 = i25;
                i20 = i29;
                j5 = j8;
                i12 = i28;
                i11 = i26;
                uk1Var = tk1Var;
            }
            i4 = c2;
            int i30 = i20;
            no1.a(i18 == 0);
            while (i13 > 0) {
                no1.a(vo1Var5.o() == 0);
                vo1Var5.d();
                i13--;
            }
            if (i11 == 0 && i19 == 0 && i15 == 0 && i30 == 0) {
                gl1Var2 = gl1Var;
            } else {
                int i31 = i11;
                gl1Var2 = gl1Var;
                int i32 = gl1Var2.f6915a;
                StringBuilder sb = new StringBuilder(215);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i32);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i31);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i19);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i15);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i30);
                sb.toString();
            }
            j2 = j6;
            i5 = i16;
        } else {
            i4 = c2;
            tk1 tk1Var2 = uk1Var;
            int i33 = qk1Var.f8937a;
            long[] jArr5 = new long[i33];
            int[] iArr6 = new int[i33];
            while (qk1Var.a()) {
                int i34 = qk1Var.f8938b;
                jArr5[i34] = qk1Var.f8940d;
                iArr6[i34] = qk1Var.f8939c;
            }
            int a2 = tk1Var2.a();
            long j9 = o3;
            int i35 = FileUtil.STREAM_BUFFER_SIZE / a2;
            int i36 = 0;
            for (int i37 : iArr6) {
                i36 += cp1.a(i37, i35);
            }
            long[] jArr6 = new long[i36];
            int[] iArr7 = new int[i36];
            long[] jArr7 = new long[i36];
            int[] iArr8 = new int[i36];
            int i38 = 0;
            int i39 = 0;
            int i40 = 0;
            int i41 = 0;
            while (i38 < iArr6.length) {
                int i42 = iArr6[i38];
                long j10 = jArr5[i38];
                int i43 = i39;
                int i44 = i41;
                while (i42 > 0) {
                    int min = Math.min(i35, i42);
                    jArr6[i40] = j10;
                    iArr7[i40] = a2 * min;
                    i44 = Math.max(i44, iArr7[i40]);
                    jArr7[i40] = i43 * j9;
                    iArr8[i40] = 1;
                    j10 += iArr7[i40];
                    i43 += min;
                    i42 -= min;
                    i40++;
                    iArr6 = iArr6;
                    jArr5 = jArr5;
                }
                i38++;
                i41 = i44;
                i39 = i43;
            }
            al1 al1Var = new al1(jArr6, iArr7, i41, jArr7, iArr8);
            jArr = al1Var.f5599a;
            iArr = al1Var.f5600b;
            int i45 = al1Var.f5601c;
            jArr2 = al1Var.f5602d;
            iArr2 = al1Var.f5603e;
            i5 = i45;
            j2 = 0;
        }
        if (gl1Var2.f6922h != null && !tj1Var.a()) {
            long[] jArr8 = gl1Var2.f6922h;
            if (jArr8.length == 1 && gl1Var2.f6916b == 1 && jArr2.length >= 2) {
                long j11 = gl1Var2.f6923i[0];
                long a3 = cp1.a(jArr8[0], gl1Var2.f6917c, gl1Var2.f6918d) + j11;
                if (jArr2[0] <= j11 && j11 < jArr2[1] && jArr2[jArr2.length - 1] < a3 && a3 <= j2) {
                    long j12 = j2 - a3;
                    long a4 = cp1.a(j11 - jArr2[0], gl1Var2.f6920f.w, gl1Var2.f6917c);
                    long a5 = cp1.a(j12, gl1Var2.f6920f.w, gl1Var2.f6917c);
                    if ((a4 != 0 || a5 != 0) && a4 <= 2147483647L && a5 <= 2147483647L) {
                        tj1Var.f9594a = (int) a4;
                        tj1Var.f9595b = (int) a5;
                        cp1.a(jArr2, 1000000L, gl1Var2.f6917c);
                        return new il1(jArr, iArr, i5, jArr2, iArr2);
                    }
                }
            }
            long[] jArr9 = gl1Var2.f6922h;
            if (jArr9.length == 1) {
                char c3 = 0;
                if (jArr9[0] == 0) {
                    int i46 = 0;
                    while (i46 < jArr2.length) {
                        jArr2[i46] = cp1.a(jArr2[i46] - gl1Var2.f6923i[c3], 1000000L, gl1Var2.f6917c);
                        i46++;
                        c3 = 0;
                    }
                    return new il1(jArr, iArr, i5, jArr2, iArr2);
                }
            }
            boolean z3 = gl1Var2.f6916b == 1;
            int i47 = 0;
            boolean z4 = false;
            int i48 = 0;
            int i49 = 0;
            while (true) {
                long[] jArr10 = gl1Var2.f6922h;
                j3 = -1;
                if (i47 >= jArr10.length) {
                    break;
                }
                int[] iArr9 = iArr;
                long j13 = gl1Var2.f6923i[i47];
                if (j13 != -1) {
                    long a6 = cp1.a(jArr10[i47], gl1Var2.f6917c, gl1Var2.f6918d);
                    int b2 = cp1.b(jArr2, j13, true, true);
                    int b3 = cp1.b(jArr2, j13 + a6, z3, false);
                    i48 += b3 - b2;
                    z4 |= i49 != b2;
                    i49 = b3;
                }
                i47++;
                iArr = iArr9;
            }
            int[] iArr10 = iArr;
            boolean z5 = (i48 != i4) | z4;
            long[] jArr11 = z5 ? new long[i48] : jArr;
            int[] iArr11 = z5 ? new int[i48] : iArr10;
            if (z5) {
                i5 = 0;
            }
            int[] iArr12 = z5 ? new int[i48] : iArr2;
            long[] jArr12 = new long[i48];
            int i50 = i5;
            int i51 = 0;
            int i52 = 0;
            while (true) {
                long[] jArr13 = gl1Var2.f6922h;
                if (i51 >= jArr13.length) {
                    break;
                }
                long[] jArr14 = jArr11;
                long[] jArr15 = jArr12;
                long j14 = gl1Var2.f6923i[i51];
                long j15 = jArr13[i51];
                if (j14 != j3) {
                    iArr4 = iArr12;
                    i6 = i51;
                    long a7 = cp1.a(j15, gl1Var2.f6917c, gl1Var2.f6918d) + j14;
                    int b4 = cp1.b(jArr2, j14, true, true);
                    int b5 = cp1.b(jArr2, a7, z3, false);
                    if (z5) {
                        int i53 = b5 - b4;
                        jArr3 = jArr14;
                        System.arraycopy(jArr, b4, jArr3, i52, i53);
                        z2 = z3;
                        iArr5 = iArr10;
                        System.arraycopy(iArr5, b4, iArr11, i52, i53);
                        System.arraycopy(iArr2, b4, iArr4, i52, i53);
                    } else {
                        jArr3 = jArr14;
                        z2 = z3;
                        iArr5 = iArr10;
                    }
                    int i54 = i50;
                    while (b4 < b5) {
                        long[] jArr16 = jArr;
                        int[] iArr13 = iArr2;
                        long j16 = j14;
                        jArr15[i52] = cp1.a(j4, 1000000L, gl1Var2.f6918d) + cp1.a(jArr2[b4] - j14, 1000000L, gl1Var2.f6917c);
                        if (z5 && iArr11[i52] > i54) {
                            i54 = iArr5[b4];
                        }
                        i52++;
                        b4++;
                        jArr = jArr16;
                        j14 = j16;
                        iArr2 = iArr13;
                    }
                    jArr4 = jArr;
                    iArr3 = iArr2;
                    i50 = i54;
                } else {
                    iArr3 = iArr2;
                    iArr4 = iArr12;
                    i6 = i51;
                    jArr3 = jArr14;
                    z2 = z3;
                    iArr5 = iArr10;
                    jArr4 = jArr;
                }
                j4 += j15;
                i51 = i6 + 1;
                jArr = jArr4;
                iArr10 = iArr5;
                iArr12 = iArr4;
                jArr11 = jArr3;
                z3 = z2;
                iArr2 = iArr3;
                jArr12 = jArr15;
                j3 = -1;
            }
            long[] jArr17 = jArr11;
            long[] jArr18 = jArr12;
            int[] iArr14 = iArr12;
            boolean z6 = false;
            for (int i55 = 0; i55 < iArr14.length && !z6; i55++) {
                z6 |= (iArr14[i55] & 1) != 0;
            }
            if (z6) {
                return new il1(jArr17, iArr11, i50, jArr18, iArr14);
            }
            throw new nh1("The edited sample sequence does not contain a sync sample.");
        }
        int[] iArr15 = iArr;
        cp1.a(jArr2, 1000000L, gl1Var2.f6917c);
        return new il1(jArr, iArr15, i5, jArr2, iArr2);
    }

    public static zzkv a(ok1 ok1Var, boolean z) {
        if (z) {
            return null;
        }
        vo1 vo1Var = ok1Var.z0;
        vo1Var.c(8);
        while (vo1Var.j() >= 8) {
            int b2 = vo1Var.b();
            int d2 = vo1Var.d();
            if (vo1Var.d() == mk1.m0) {
                vo1Var.c(b2);
                int i2 = b2 + d2;
                vo1Var.d(12);
                while (true) {
                    if (vo1Var.b() >= i2) {
                        break;
                    }
                    int b3 = vo1Var.b();
                    int d3 = vo1Var.d();
                    if (vo1Var.d() == mk1.n0) {
                        vo1Var.c(b3);
                        int i3 = b3 + d3;
                        vo1Var.d(8);
                        ArrayList arrayList = new ArrayList();
                        while (vo1Var.b() < i3) {
                            zzkv.zza a2 = zk1.a(vo1Var);
                            if (a2 != null) {
                                arrayList.add(a2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzkv(arrayList);
                        }
                    } else {
                        vo1Var.d(d3 - 8);
                    }
                }
                return null;
            }
            vo1Var.d(d2 - 8);
        }
        return null;
    }

    private static Pair<String, byte[]> a(vo1 vo1Var, int i2) {
        vo1Var.c(i2 + 8 + 4);
        vo1Var.d(1);
        a(vo1Var);
        vo1Var.d(2);
        int g2 = vo1Var.g();
        if ((g2 & 128) != 0) {
            vo1Var.d(2);
        }
        if ((g2 & 64) != 0) {
            vo1Var.d(vo1Var.h());
        }
        if ((g2 & 32) != 0) {
            vo1Var.d(2);
        }
        vo1Var.d(1);
        a(vo1Var);
        int g3 = vo1Var.g();
        String str = null;
        if (g3 == 32) {
            str = "video/mp4v-es";
        } else if (g3 == 33) {
            str = "video/avc";
        } else if (g3 != 35) {
            if (g3 != 64) {
                if (g3 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (g3 == 165) {
                    str = "audio/ac3";
                } else if (g3 != 166) {
                    switch (g3) {
                        case 102:
                        case 103:
                        case 104:
                            break;
                        default:
                            switch (g3) {
                                case 169:
                                case 172:
                                    return Pair.create("audio/vnd.dts", null);
                                case 170:
                                case 171:
                                    return Pair.create("audio/vnd.dts.hd", null);
                            }
                    }
                } else {
                    str = "audio/eac3";
                }
            }
            str = "audio/mp4a-latm";
        } else {
            str = "video/hevc";
        }
        vo1Var.d(12);
        vo1Var.d(1);
        int a2 = a(vo1Var);
        byte[] bArr = new byte[a2];
        vo1Var.a(bArr, 0, a2);
        return Pair.create(str, bArr);
    }

    private static int a(vo1 vo1Var, int i2, int i3, sk1 sk1Var, int i4) {
        fl1 fl1Var;
        int b2 = vo1Var.b();
        while (true) {
            if (b2 - i2 >= i3) {
                return 0;
            }
            vo1Var.c(b2);
            int d2 = vo1Var.d();
            no1.a(d2 > 0, "childAtomSize should be positive");
            if (vo1Var.d() == mk1.N) {
                int i5 = b2 + 8;
                Pair pair = null;
                Integer num = null;
                fl1 fl1Var2 = null;
                boolean z = false;
                while (i5 - b2 < d2) {
                    vo1Var.c(i5);
                    int d3 = vo1Var.d();
                    int d4 = vo1Var.d();
                    if (d4 == mk1.T) {
                        num = Integer.valueOf(vo1Var.d());
                    } else if (d4 == mk1.O) {
                        vo1Var.d(4);
                        z = vo1Var.d() == f9150g;
                    } else if (d4 == mk1.P) {
                        int i6 = i5 + 8;
                        while (true) {
                            if (i6 - i5 >= d3) {
                                fl1Var = null;
                                break;
                            }
                            vo1Var.c(i6);
                            int d5 = vo1Var.d();
                            if (vo1Var.d() == mk1.Q) {
                                vo1Var.d(6);
                                boolean z2 = vo1Var.g() == 1;
                                int g2 = vo1Var.g();
                                byte[] bArr = new byte[16];
                                vo1Var.a(bArr, 0, 16);
                                fl1Var = new fl1(z2, g2, bArr);
                            } else {
                                i6 += d5;
                            }
                        }
                        fl1Var2 = fl1Var;
                    }
                    i5 += d3;
                }
                if (z) {
                    no1.a(num != null, "frma atom is mandatory");
                    no1.a(fl1Var2 != null, "schi->tenc atom is mandatory");
                    pair = Pair.create(num, fl1Var2);
                }
                if (pair != null) {
                    sk1Var.f9383a[i4] = (fl1) pair.second;
                    return ((Integer) pair.first).intValue();
                }
            }
            b2 += d2;
        }
    }

    private static int a(vo1 vo1Var) {
        int g2 = vo1Var.g();
        int i2 = g2 & 127;
        while ((g2 & 128) == 128) {
            g2 = vo1Var.g();
            i2 = (i2 << 7) | (g2 & 127);
        }
        return i2;
    }
}
