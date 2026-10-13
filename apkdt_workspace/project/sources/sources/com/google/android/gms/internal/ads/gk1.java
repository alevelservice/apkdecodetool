package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.google.android.gms.internal.ads.zzil;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gk1 implements pj1 {
    private static final byte[] Z;
    private static final byte[] a0;
    private static final UUID b0;
    private long A;
    private oo1 B;
    private oo1 C;
    private boolean D;
    private int E;
    private long F;
    private long G;
    private int H;
    private int I;
    private int[] J;
    private int K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private byte S;
    private int T;
    private int U;
    private int V;
    private boolean W;
    private boolean X;
    private rj1 Y;

    /* renamed from: a, reason: collision with root package name */
    private final ek1 f6890a;

    /* renamed from: b, reason: collision with root package name */
    private final nk1 f6891b;

    /* renamed from: c, reason: collision with root package name */
    private final SparseArray<lk1> f6892c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f6893d;

    /* renamed from: e, reason: collision with root package name */
    private final vo1 f6894e;

    /* renamed from: f, reason: collision with root package name */
    private final vo1 f6895f;

    /* renamed from: g, reason: collision with root package name */
    private final vo1 f6896g;

    /* renamed from: h, reason: collision with root package name */
    private final vo1 f6897h;

    /* renamed from: i, reason: collision with root package name */
    private final vo1 f6898i;

    /* renamed from: j, reason: collision with root package name */
    private final vo1 f6899j;

    /* renamed from: k, reason: collision with root package name */
    private final vo1 f6900k;

    /* renamed from: l, reason: collision with root package name */
    private final vo1 f6901l;
    private final vo1 m;
    private ByteBuffer n;
    private long o;
    private long p;
    private long q;
    private long r;
    private long s;
    private lk1 t;
    private boolean u;
    private int v;
    private long w;
    private boolean x;
    private long y;
    private long z;

    static {
        new jk1();
        Z = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        a0 = new byte[]{32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
        b0 = new UUID(72057594037932032L, -9223371306706625679L);
    }

    public gk1() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2) {
        switch (i2) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case BlobStatic.MONITOR_IMAGE_WIDTH /* 160 */:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    private final void b() {
        this.N = 0;
        this.V = 0;
        this.U = 0;
        this.O = false;
        this.P = false;
        this.R = false;
        this.T = 0;
        this.S = (byte) 0;
        this.Q = false;
        this.f6899j.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(int i2) {
        return i2 == 357149030 || i2 == 524531317 || i2 == 475249515 || i2 == 374648427;
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final boolean a(sj1 sj1Var) {
        return new kk1().a(sj1Var);
    }

    private gk1(int i2) {
        this(new dk1(), 0);
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final void a(rj1 rj1Var) {
        this.Y = rj1Var;
    }

    private gk1(ek1 ek1Var, int i2) {
        this.p = -1L;
        this.q = -9223372036854775807L;
        this.r = -9223372036854775807L;
        this.s = -9223372036854775807L;
        this.y = -1L;
        this.z = -1L;
        this.A = -9223372036854775807L;
        this.f6890a = ek1Var;
        this.f6890a.a(new ik1(this, null));
        this.f6893d = true;
        this.f6891b = new nk1();
        this.f6892c = new SparseArray<>();
        this.f6896g = new vo1(4);
        this.f6897h = new vo1(ByteBuffer.allocate(4).putInt(-1).array());
        this.f6898i = new vo1(4);
        this.f6894e = new vo1(to1.f9623a);
        this.f6895f = new vo1(4);
        this.f6899j = new vo1();
        this.f6900k = new vo1();
        this.f6901l = new vo1(8);
        this.m = new vo1();
    }

    @Override // com.google.android.gms.internal.ads.pj1
    public final void a(long j2, long j3) {
        this.A = -9223372036854775807L;
        this.E = 0;
        this.f6890a.a();
        this.f6891b.a();
        b();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0005 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.pj1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.gms.internal.ads.sj1 r9, com.google.android.gms.internal.ads.wj1 r10) {
        /*
            r8 = this;
            r0 = 0
            r8.W = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3a
            boolean r3 = r8.W
            if (r3 != 0) goto L3a
            com.google.android.gms.internal.ads.ek1 r2 = r8.f6890a
            boolean r2 = r2.a(r9)
            if (r2 == 0) goto L5
            long r3 = r9.c()
            boolean r5 = r8.x
            if (r5 == 0) goto L25
            r8.z = r3
            long r3 = r8.y
            r10.f10135a = r3
            r8.x = r0
        L23:
            r3 = 1
            goto L37
        L25:
            boolean r3 = r8.u
            if (r3 == 0) goto L36
            long r3 = r8.z
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L36
            r10.f10135a = r3
            r8.z = r5
            goto L23
        L36:
            r3 = 0
        L37:
            if (r3 == 0) goto L5
            return r1
        L3a:
            if (r2 == 0) goto L3d
            return r0
        L3d:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.gk1.a(com.google.android.gms.internal.ads.sj1, com.google.android.gms.internal.ads.wj1):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, long j2, long j3) {
        if (i2 == 160) {
            this.X = false;
            return;
        }
        if (i2 == 174) {
            this.t = new lk1(null);
            return;
        }
        if (i2 == 187) {
            this.D = false;
            return;
        }
        if (i2 == 19899) {
            this.v = -1;
            this.w = -1L;
            return;
        }
        if (i2 == 20533) {
            this.t.f7922e = true;
            return;
        }
        if (i2 == 21968) {
            this.t.q = true;
            return;
        }
        if (i2 != 25152) {
            if (i2 == 408125543) {
                long j4 = this.p;
                if (j4 != -1 && j4 != j2) {
                    throw new nh1("Multiple Segment elements not supported");
                }
                this.p = j2;
                this.o = j3;
                return;
            }
            if (i2 != 475249515) {
                if (i2 == 524531317 && !this.u) {
                    if (this.f6893d && this.y != -1) {
                        this.x = true;
                        return;
                    } else {
                        this.Y.a(new yj1(this.s));
                        this.u = true;
                        return;
                    }
                }
                return;
            }
            this.B = new oo1();
            this.C = new oo1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2) {
        zj1 yj1Var;
        oo1 oo1Var;
        oo1 oo1Var2;
        int i3;
        if (i2 == 160) {
            if (this.E != 2) {
                return;
            }
            if (!this.X) {
                this.M |= 1;
            }
            a(this.f6892c.get(this.K), this.F);
            this.E = 0;
            return;
        }
        if (i2 == 174) {
            String str = this.t.f7918a;
            if ((("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) ? 1 : 0) != 0) {
                lk1 lk1Var = this.t;
                lk1Var.a(this.Y, lk1Var.f7919b);
                SparseArray<lk1> sparseArray = this.f6892c;
                lk1 lk1Var2 = this.t;
                sparseArray.put(lk1Var2.f7919b, lk1Var2);
            }
            this.t = null;
            return;
        }
        if (i2 == 19899) {
            int i4 = this.v;
            if (i4 != -1) {
                long j2 = this.w;
                if (j2 != -1) {
                    if (i4 == 475249515) {
                        this.y = j2;
                        return;
                    }
                    return;
                }
            }
            throw new nh1("Mandatory element SeekID or SeekPosition not found");
        }
        if (i2 == 25152) {
            lk1 lk1Var3 = this.t;
            if (lk1Var3.f7922e) {
                ak1 ak1Var = lk1Var3.f7924g;
                if (ak1Var != null) {
                    lk1Var3.f7926i = new zzil(new zzil.zza(xg1.f10351b, "video/webm", ak1Var.f5591b));
                    return;
                }
                throw new nh1("Encrypted Track found but ContentEncKeyID was not found");
            }
            return;
        }
        if (i2 == 28032) {
            lk1 lk1Var4 = this.t;
            if (lk1Var4.f7922e && lk1Var4.f7923f != null) {
                throw new nh1("Combining encryption and compression is not supported");
            }
            return;
        }
        if (i2 == 357149030) {
            if (this.q == -9223372036854775807L) {
                this.q = 1000000L;
            }
            long j3 = this.r;
            if (j3 != -9223372036854775807L) {
                this.s = a(j3);
                return;
            }
            return;
        }
        if (i2 != 374648427) {
            if (i2 == 475249515 && !this.u) {
                rj1 rj1Var = this.Y;
                if (this.p != -1 && this.s != -9223372036854775807L && (oo1Var = this.B) != null && oo1Var.a() != 0 && (oo1Var2 = this.C) != null && oo1Var2.a() == this.B.a()) {
                    int a2 = this.B.a();
                    int[] iArr = new int[a2];
                    long[] jArr = new long[a2];
                    long[] jArr2 = new long[a2];
                    long[] jArr3 = new long[a2];
                    for (int i5 = 0; i5 < a2; i5++) {
                        jArr3[i5] = this.B.a(i5);
                        jArr[i5] = this.p + this.C.a(i5);
                    }
                    while (true) {
                        i3 = a2 - 1;
                        if (r1 >= i3) {
                            break;
                        }
                        int i6 = r1 + 1;
                        iArr[r1] = (int) (jArr[i6] - jArr[r1]);
                        jArr2[r1] = jArr3[i6] - jArr3[r1];
                        r1 = i6;
                    }
                    iArr[i3] = (int) ((this.p + this.o) - jArr[i3]);
                    jArr2[i3] = this.s - jArr3[i3];
                    this.B = null;
                    this.C = null;
                    yj1Var = new nj1(iArr, jArr, jArr2, jArr3);
                } else {
                    this.B = null;
                    this.C = null;
                    yj1Var = new yj1(this.s);
                }
                rj1Var.a(yj1Var);
                this.u = true;
                return;
            }
            return;
        }
        if (this.f6892c.size() != 0) {
            this.Y.a();
            return;
        }
        throw new nh1("No valid tracks were found");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, long j2) {
        if (i2 == 20529) {
            if (j2 == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j2);
            sb.append(" not supported");
            throw new nh1(sb.toString());
        }
        if (i2 == 20530) {
            if (j2 == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j2);
            sb2.append(" not supported");
            throw new nh1(sb2.toString());
        }
        switch (i2) {
            case 131:
                this.t.f7920c = (int) j2;
                return;
            case 136:
                this.t.L = j2 == 1;
                return;
            case 155:
                this.G = a(j2);
                return;
            case 159:
                this.t.G = (int) j2;
                return;
            case 176:
                this.t.f7927j = (int) j2;
                return;
            case 179:
                this.B.a(a(j2));
                return;
            case 186:
                this.t.f7928k = (int) j2;
                return;
            case 215:
                this.t.f7919b = (int) j2;
                return;
            case 231:
                this.A = a(j2);
                return;
            case 241:
                if (this.D) {
                    return;
                }
                this.C.a(j2);
                this.D = true;
                return;
            case 251:
                this.X = true;
                return;
            case 16980:
                if (j2 == 3) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(50);
                sb3.append("ContentCompAlgo ");
                sb3.append(j2);
                sb3.append(" not supported");
                throw new nh1(sb3.toString());
            case 17029:
                if (j2 < 1 || j2 > 2) {
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j2);
                    sb4.append(" not supported");
                    throw new nh1(sb4.toString());
                }
                return;
            case 17143:
                if (j2 == 1) {
                    return;
                }
                StringBuilder sb5 = new StringBuilder(50);
                sb5.append("EBMLReadVersion ");
                sb5.append(j2);
                sb5.append(" not supported");
                throw new nh1(sb5.toString());
            case 18401:
                if (j2 == 5) {
                    return;
                }
                StringBuilder sb6 = new StringBuilder(49);
                sb6.append("ContentEncAlgo ");
                sb6.append(j2);
                sb6.append(" not supported");
                throw new nh1(sb6.toString());
            case 18408:
                if (j2 == 1) {
                    return;
                }
                StringBuilder sb7 = new StringBuilder(56);
                sb7.append("AESSettingsCipherMode ");
                sb7.append(j2);
                sb7.append(" not supported");
                throw new nh1(sb7.toString());
            case 21420:
                this.w = j2 + this.p;
                return;
            case 21432:
                int i3 = (int) j2;
                if (i3 == 0) {
                    this.t.p = 0;
                    return;
                }
                if (i3 == 1) {
                    this.t.p = 2;
                    return;
                } else if (i3 == 3) {
                    this.t.p = 1;
                    return;
                } else {
                    if (i3 != 15) {
                        return;
                    }
                    this.t.p = 3;
                    return;
                }
            case 21680:
                this.t.f7929l = (int) j2;
                return;
            case 21682:
                this.t.n = (int) j2;
                return;
            case 21690:
                this.t.m = (int) j2;
                return;
            case 21930:
                this.t.M = j2 == 1;
                return;
            case 22186:
                this.t.J = j2;
                return;
            case 22203:
                this.t.K = j2;
                return;
            case 25188:
                this.t.H = (int) j2;
                return;
            case 2352003:
                this.t.f7921d = (int) j2;
                return;
            case 2807729:
                this.q = j2;
                return;
            default:
                switch (i2) {
                    case 21945:
                        int i4 = (int) j2;
                        if (i4 == 1) {
                            this.t.t = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.t.t = 1;
                            return;
                        }
                    case 21946:
                        int i5 = (int) j2;
                        if (i5 != 1) {
                            if (i5 == 16) {
                                this.t.s = 6;
                                return;
                            } else if (i5 == 18) {
                                this.t.s = 7;
                                return;
                            } else if (i5 != 6 && i5 != 7) {
                                return;
                            }
                        }
                        this.t.s = 3;
                        return;
                    case 21947:
                        lk1 lk1Var = this.t;
                        lk1Var.q = true;
                        int i6 = (int) j2;
                        if (i6 == 1) {
                            lk1Var.r = 1;
                            return;
                        }
                        if (i6 == 9) {
                            lk1Var.r = 6;
                            return;
                        } else {
                            if (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) {
                                this.t.r = 2;
                                return;
                            }
                            return;
                        }
                    case 21948:
                        this.t.u = (int) j2;
                        return;
                    case 21949:
                        this.t.v = (int) j2;
                        return;
                    default:
                        return;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, double d2) {
        if (i2 == 181) {
            this.t.I = (int) d2;
            return;
        }
        if (i2 != 17545) {
            switch (i2) {
                case 21969:
                    this.t.w = (float) d2;
                    return;
                case 21970:
                    this.t.x = (float) d2;
                    return;
                case 21971:
                    this.t.y = (float) d2;
                    return;
                case 21972:
                    this.t.z = (float) d2;
                    return;
                case 21973:
                    this.t.A = (float) d2;
                    return;
                case 21974:
                    this.t.B = (float) d2;
                    return;
                case 21975:
                    this.t.C = (float) d2;
                    return;
                case 21976:
                    this.t.D = (float) d2;
                    return;
                case 21977:
                    this.t.E = (float) d2;
                    return;
                case 21978:
                    this.t.F = (float) d2;
                    return;
                default:
                    return;
            }
        }
        this.r = (long) d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, String str) {
        if (i2 == 134) {
            this.t.f7918a = str;
            return;
        }
        if (i2 != 17026) {
            if (i2 != 2274716) {
                return;
            }
            lk1.a(this.t, str);
        } else {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new nh1(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fd, code lost:
    
        throw new com.google.android.gms.internal.ads.nh1("EBML lacing sample size out of range.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r20, int r21, com.google.android.gms.internal.ads.sj1 r22) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.gk1.a(int, int, com.google.android.gms.internal.ads.sj1):void");
    }

    private final void a(lk1 lk1Var, long j2) {
        byte[] c2;
        if ("S_TEXT/UTF8".equals(lk1Var.f7918a)) {
            byte[] bArr = this.f6900k.f9967a;
            long j3 = this.G;
            if (j3 == -9223372036854775807L) {
                c2 = a0;
            } else {
                int i2 = (int) (j3 / 3600000000L);
                long j4 = j3 - (i2 * 3600000000L);
                int i3 = (int) (j4 / 60000000);
                long j5 = j4 - (60000000 * i3);
                c2 = cp1.c(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j5 / 1000000)), Integer.valueOf((int) ((j5 - (1000000 * r4)) / 1000))));
            }
            System.arraycopy(c2, 0, bArr, 19, 12);
            bk1 bk1Var = lk1Var.O;
            vo1 vo1Var = this.f6900k;
            bk1Var.a(vo1Var, vo1Var.c());
            this.V += this.f6900k.c();
        }
        lk1Var.O.a(j2, this.M, this.V, 0, lk1Var.f7924g);
        this.W = true;
        b();
    }

    private final void a(sj1 sj1Var, int i2) {
        if (this.f6896g.c() >= i2) {
            return;
        }
        if (this.f6896g.a() < i2) {
            vo1 vo1Var = this.f6896g;
            byte[] bArr = vo1Var.f9967a;
            vo1Var.a(Arrays.copyOf(bArr, Math.max(bArr.length << 1, i2)), this.f6896g.c());
        }
        vo1 vo1Var2 = this.f6896g;
        sj1Var.readFully(vo1Var2.f9967a, vo1Var2.c(), i2 - this.f6896g.c());
        this.f6896g.b(i2);
    }

    private final void a(sj1 sj1Var, lk1 lk1Var, int i2) {
        int i3;
        if ("S_TEXT/UTF8".equals(lk1Var.f7918a)) {
            int length = Z.length + i2;
            if (this.f6900k.a() < length) {
                this.f6900k.f9967a = Arrays.copyOf(Z, length + i2);
            }
            sj1Var.readFully(this.f6900k.f9967a, Z.length, i2);
            this.f6900k.c(0);
            this.f6900k.b(length);
            return;
        }
        bk1 bk1Var = lk1Var.O;
        if (!this.O) {
            if (lk1Var.f7922e) {
                this.M &= -1073741825;
                if (!this.P) {
                    sj1Var.readFully(this.f6896g.f9967a, 0, 1);
                    this.N++;
                    byte[] bArr = this.f6896g.f9967a;
                    if ((bArr[0] & 128) != 128) {
                        this.S = bArr[0];
                        this.P = true;
                    } else {
                        throw new nh1("Extension bit is set in signal byte");
                    }
                }
                byte b2 = this.S;
                if ((b2 & 1) == 1) {
                    boolean z = (b2 & 2) == 2;
                    this.M |= 1073741824;
                    if (!this.Q) {
                        sj1Var.readFully(this.f6901l.f9967a, 0, 8);
                        this.N += 8;
                        this.Q = true;
                        this.f6896g.f9967a[0] = (byte) ((z ? 128 : 0) | 8);
                        this.f6896g.c(0);
                        bk1Var.a(this.f6896g, 1);
                        this.V++;
                        this.f6901l.c(0);
                        bk1Var.a(this.f6901l, 8);
                        this.V += 8;
                    }
                    if (z) {
                        if (!this.R) {
                            sj1Var.readFully(this.f6896g.f9967a, 0, 1);
                            this.N++;
                            this.f6896g.c(0);
                            this.T = this.f6896g.g();
                            this.R = true;
                        }
                        int i4 = this.T << 2;
                        this.f6896g.a(i4);
                        sj1Var.readFully(this.f6896g.f9967a, 0, i4);
                        this.N += i4;
                        short s = (short) ((this.T / 2) + 1);
                        int i5 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.n;
                        if (byteBuffer == null || byteBuffer.capacity() < i5) {
                            this.n = ByteBuffer.allocate(i5);
                        }
                        this.n.position(0);
                        this.n.putShort(s);
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            i3 = this.T;
                            if (i6 >= i3) {
                                break;
                            }
                            int o = this.f6896g.o();
                            if (i6 % 2 == 0) {
                                this.n.putShort((short) (o - i7));
                            } else {
                                this.n.putInt(o - i7);
                            }
                            i6++;
                            i7 = o;
                        }
                        int i8 = (i2 - this.N) - i7;
                        if (i3 % 2 == 1) {
                            this.n.putInt(i8);
                        } else {
                            this.n.putShort((short) i8);
                            this.n.putInt(0);
                        }
                        this.m.a(this.n.array(), i5);
                        bk1Var.a(this.m, i5);
                        this.V += i5;
                    }
                }
            } else {
                byte[] bArr2 = lk1Var.f7923f;
                if (bArr2 != null) {
                    this.f6899j.a(bArr2, bArr2.length);
                }
            }
            this.O = true;
        }
        int c2 = i2 + this.f6899j.c();
        if (!"V_MPEG4/ISO/AVC".equals(lk1Var.f7918a) && !"V_MPEGH/ISO/HEVC".equals(lk1Var.f7918a)) {
            while (true) {
                int i9 = this.N;
                if (i9 >= c2) {
                    break;
                } else {
                    a(sj1Var, bk1Var, c2 - i9);
                }
            }
        } else {
            byte[] bArr3 = this.f6895f.f9967a;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i10 = lk1Var.P;
            int i11 = 4 - i10;
            while (this.N < c2) {
                int i12 = this.U;
                if (i12 == 0) {
                    int min = Math.min(i10, this.f6899j.j());
                    sj1Var.readFully(bArr3, i11 + min, i10 - min);
                    if (min > 0) {
                        this.f6899j.a(bArr3, i11, min);
                    }
                    this.N += i10;
                    this.f6895f.c(0);
                    this.U = this.f6895f.o();
                    this.f6894e.c(0);
                    bk1Var.a(this.f6894e, 4);
                    this.V += 4;
                } else {
                    this.U = i12 - a(sj1Var, bk1Var, i12);
                }
            }
        }
        if ("A_VORBIS".equals(lk1Var.f7918a)) {
            this.f6897h.c(0);
            bk1Var.a(this.f6897h, 4);
            this.V += 4;
        }
    }

    private final int a(sj1 sj1Var, bk1 bk1Var, int i2) {
        int a2;
        int j2 = this.f6899j.j();
        if (j2 > 0) {
            a2 = Math.min(i2, j2);
            bk1Var.a(this.f6899j, a2);
        } else {
            a2 = bk1Var.a(sj1Var, i2, false);
        }
        this.N += a2;
        this.V += a2;
        return a2;
    }

    private final long a(long j2) {
        long j3 = this.q;
        if (j3 != -9223372036854775807L) {
            return cp1.a(j2, j3, 1000L);
        }
        throw new nh1("Can't scale timecode prior to timecodeScale being set.");
    }

    private static int[] a(int[] iArr, int i2) {
        if (iArr == null) {
            return new int[i2];
        }
        return iArr.length >= i2 ? iArr : new int[Math.max(iArr.length << 1, i2)];
    }
}
