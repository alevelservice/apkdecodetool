package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzkv;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zk1 {

    /* renamed from: a, reason: collision with root package name */
    private static final int f10776a = cp1.d("nam");

    /* renamed from: b, reason: collision with root package name */
    private static final int f10777b = cp1.d("trk");

    /* renamed from: c, reason: collision with root package name */
    private static final int f10778c = cp1.d("cmt");

    /* renamed from: d, reason: collision with root package name */
    private static final int f10779d = cp1.d("day");

    /* renamed from: e, reason: collision with root package name */
    private static final int f10780e = cp1.d("ART");

    /* renamed from: f, reason: collision with root package name */
    private static final int f10781f = cp1.d("too");

    /* renamed from: g, reason: collision with root package name */
    private static final int f10782g = cp1.d("alb");

    /* renamed from: h, reason: collision with root package name */
    private static final int f10783h = cp1.d("com");

    /* renamed from: i, reason: collision with root package name */
    private static final int f10784i = cp1.d("wrt");

    /* renamed from: j, reason: collision with root package name */
    private static final int f10785j = cp1.d("lyr");

    /* renamed from: k, reason: collision with root package name */
    private static final int f10786k = cp1.d("gen");

    /* renamed from: l, reason: collision with root package name */
    private static final int f10787l = cp1.d("covr");
    private static final int m = cp1.d("gnre");
    private static final int n = cp1.d("grp");
    private static final int o = cp1.d("disk");
    private static final int p = cp1.d("trkn");
    private static final int q = cp1.d("tmpo");
    private static final int r = cp1.d("cpil");
    private static final int s = cp1.d("aART");
    private static final int t = cp1.d("sonm");
    private static final int u = cp1.d("soal");
    private static final int v = cp1.d("soar");
    private static final int w = cp1.d("soaa");
    private static final int x = cp1.d("soco");
    private static final int y = cp1.d("rtng");
    private static final int z = cp1.d("pgap");
    private static final int A = cp1.d("sosn");
    private static final int B = cp1.d("tvsh");
    private static final int C = cp1.d("----");
    private static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static zzkv.zza a(vo1 vo1Var) {
        int b2 = vo1Var.b() + vo1Var.d();
        int d2 = vo1Var.d();
        int i2 = d2 >>> 24;
        zzlc zzlcVar = null;
        try {
            if (i2 != 169 && i2 != 65533) {
                if (d2 == m) {
                    int b3 = b(vo1Var);
                    String str = (b3 <= 0 || b3 > D.length) ? null : D[b3 - 1];
                    return str != null ? new zzlf("TCON", null, str) : null;
                }
                if (d2 == o) {
                    return b(d2, "TPOS", vo1Var);
                }
                if (d2 == p) {
                    return b(d2, "TRCK", vo1Var);
                }
                if (d2 == q) {
                    return a(d2, "TBPM", vo1Var, true, false);
                }
                if (d2 == r) {
                    return a(d2, "TCMP", vo1Var, true, true);
                }
                if (d2 == f10787l) {
                    int d3 = vo1Var.d();
                    if (vo1Var.d() == mk1.q0) {
                        int b4 = mk1.b(vo1Var.d());
                        String str2 = b4 == 13 ? "image/jpeg" : b4 == 14 ? "image/png" : null;
                        if (str2 == null) {
                            StringBuilder sb = new StringBuilder(41);
                            sb.append("Unrecognized cover art flags: ");
                            sb.append(b4);
                            sb.toString();
                        } else {
                            vo1Var.d(4);
                            byte[] bArr = new byte[d3 - 16];
                            vo1Var.a(bArr, 0, bArr.length);
                            zzlcVar = new zzkz(str2, null, 3, bArr);
                        }
                    }
                    return zzlcVar;
                }
                if (d2 == s) {
                    return a(d2, "TPE2", vo1Var);
                }
                if (d2 == t) {
                    return a(d2, "TSOT", vo1Var);
                }
                if (d2 == u) {
                    return a(d2, "TSO2", vo1Var);
                }
                if (d2 == v) {
                    return a(d2, "TSOA", vo1Var);
                }
                if (d2 == w) {
                    return a(d2, "TSOP", vo1Var);
                }
                if (d2 == x) {
                    return a(d2, "TSOC", vo1Var);
                }
                if (d2 == y) {
                    return a(d2, "ITUNESADVISORY", vo1Var, false, false);
                }
                if (d2 == z) {
                    return a(d2, "ITUNESGAPLESS", vo1Var, false, true);
                }
                if (d2 == A) {
                    return a(d2, "TVSHOWSORT", vo1Var);
                }
                if (d2 == B) {
                    return a(d2, "TVSHOW", vo1Var);
                }
                if (d2 == C) {
                    String str3 = null;
                    String str4 = null;
                    int i3 = -1;
                    int i4 = -1;
                    while (vo1Var.b() < b2) {
                        int b5 = vo1Var.b();
                        int d4 = vo1Var.d();
                        int d5 = vo1Var.d();
                        vo1Var.d(4);
                        if (d5 == mk1.o0) {
                            str3 = vo1Var.e(d4 - 12);
                        } else if (d5 == mk1.p0) {
                            str4 = vo1Var.e(d4 - 12);
                        } else {
                            if (d5 == mk1.q0) {
                                i3 = b5;
                                i4 = d4;
                            }
                            vo1Var.d(d4 - 12);
                        }
                    }
                    if ("com.apple.iTunes".equals(str3) && "iTunSMPB".equals(str4) && i3 != -1) {
                        vo1Var.c(i3);
                        vo1Var.d(16);
                        zzlcVar = new zzlb("und", str4, vo1Var.e(i4 - 16));
                    }
                    return zzlcVar;
                }
            } else {
                int i5 = 16777215 & d2;
                if (i5 == f10778c) {
                    int d6 = vo1Var.d();
                    if (vo1Var.d() == mk1.q0) {
                        vo1Var.d(8);
                        String e2 = vo1Var.e(d6 - 16);
                        zzlcVar = new zzlb("und", e2, e2);
                    } else {
                        String valueOf = String.valueOf(mk1.c(d2));
                        if (valueOf.length() != 0) {
                            "Failed to parse comment attribute: ".concat(valueOf);
                        } else {
                            new String("Failed to parse comment attribute: ");
                        }
                    }
                    return zzlcVar;
                }
                if (i5 != f10776a && i5 != f10777b) {
                    if (i5 != f10783h && i5 != f10784i) {
                        if (i5 == f10779d) {
                            return a(d2, "TDRC", vo1Var);
                        }
                        if (i5 == f10780e) {
                            return a(d2, "TPE1", vo1Var);
                        }
                        if (i5 == f10781f) {
                            return a(d2, "TSSE", vo1Var);
                        }
                        if (i5 == f10782g) {
                            return a(d2, "TALB", vo1Var);
                        }
                        if (i5 == f10785j) {
                            return a(d2, "USLT", vo1Var);
                        }
                        if (i5 == f10786k) {
                            return a(d2, "TCON", vo1Var);
                        }
                        if (i5 == n) {
                            return a(d2, "TIT1", vo1Var);
                        }
                    }
                    return a(d2, "TCOM", vo1Var);
                }
                return a(d2, "TIT2", vo1Var);
            }
            String valueOf2 = String.valueOf(mk1.c(d2));
            if (valueOf2.length() != 0) {
                "Skipped unknown metadata entry: ".concat(valueOf2);
            } else {
                new String("Skipped unknown metadata entry: ");
            }
            return null;
        } finally {
            vo1Var.c(b2);
        }
    }

    private static zzlf b(int i2, String str, vo1 vo1Var) {
        int d2 = vo1Var.d();
        if (vo1Var.d() == mk1.q0 && d2 >= 22) {
            vo1Var.d(10);
            int h2 = vo1Var.h();
            if (h2 > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(h2);
                String sb2 = sb.toString();
                int h3 = vo1Var.h();
                if (h3 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(h3);
                    sb2 = sb3.toString();
                }
                return new zzlf(str, null, sb2);
            }
        }
        String valueOf2 = String.valueOf(mk1.c(i2));
        if (valueOf2.length() != 0) {
            "Failed to parse index/count attribute: ".concat(valueOf2);
        } else {
            new String("Failed to parse index/count attribute: ");
        }
        return null;
    }

    private static int b(vo1 vo1Var) {
        vo1Var.d(4);
        if (vo1Var.d() != mk1.q0) {
            return -1;
        }
        vo1Var.d(8);
        return vo1Var.g();
    }

    private static zzlf a(int i2, String str, vo1 vo1Var) {
        int d2 = vo1Var.d();
        if (vo1Var.d() == mk1.q0) {
            vo1Var.d(8);
            return new zzlf(str, null, vo1Var.e(d2 - 16));
        }
        String valueOf = String.valueOf(mk1.c(i2));
        if (valueOf.length() != 0) {
            "Failed to parse text attribute: ".concat(valueOf);
        } else {
            new String("Failed to parse text attribute: ");
        }
        return null;
    }

    private static zzlc a(int i2, String str, vo1 vo1Var, boolean z2, boolean z3) {
        int b2 = b(vo1Var);
        if (z3) {
            b2 = Math.min(1, b2);
        }
        if (b2 >= 0) {
            if (z2) {
                return new zzlf(str, null, Integer.toString(b2));
            }
            return new zzlb("und", str, Integer.toString(b2));
        }
        String valueOf = String.valueOf(mk1.c(i2));
        if (valueOf.length() != 0) {
            "Failed to parse uint8 attribute: ".concat(valueOf);
        } else {
            new String("Failed to parse uint8 attribute: ");
        }
        return null;
    }
}
