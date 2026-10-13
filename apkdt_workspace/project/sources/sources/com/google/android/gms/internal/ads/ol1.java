package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes.dex */
public final class ol1 {

    /* renamed from: d, reason: collision with root package name */
    private static final SparseIntArray f8553d;

    /* renamed from: e, reason: collision with root package name */
    private static final SparseIntArray f8554e;

    /* renamed from: f, reason: collision with root package name */
    private static final Map<String, Integer> f8555f;

    /* renamed from: a, reason: collision with root package name */
    private static final hl1 f8550a = hl1.b("OMX.google.raw.decoder");

    /* renamed from: b, reason: collision with root package name */
    private static final Pattern f8551b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c, reason: collision with root package name */
    private static final HashMap<a, List<hl1>> f8552c = new HashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private static int f8556g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f8557a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f8558b;

        public a(String str, boolean z) {
            this.f8557a = str;
            this.f8558b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == a.class) {
                a aVar = (a) obj;
                if (TextUtils.equals(this.f8557a, aVar.f8557a) && this.f8558b == aVar.f8558b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.f8557a;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.f8558b ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f8553d = sparseIntArray;
        sparseIntArray.put(66, 1);
        f8553d.put(77, 2);
        f8553d.put(88, 4);
        f8553d.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f8554e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f8554e.put(11, 4);
        f8554e.put(12, 8);
        f8554e.put(13, 16);
        f8554e.put(20, 32);
        f8554e.put(21, 64);
        f8554e.put(22, 128);
        f8554e.put(30, 256);
        f8554e.put(31, 512);
        f8554e.put(32, 1024);
        f8554e.put(40, 2048);
        f8554e.put(41, 4096);
        f8554e.put(42, FileUtil.STREAM_BUFFER_SIZE);
        f8554e.put(50, 16384);
        f8554e.put(51, 32768);
        f8554e.put(52, AntDetector.ACTION_ID_SAMPLE);
        HashMap hashMap = new HashMap();
        f8555f = hashMap;
        hashMap.put("L30", 1);
        f8555f.put("L60", 4);
        f8555f.put("L63", 16);
        f8555f.put("L90", 64);
        f8555f.put("L93", 256);
        f8555f.put("L120", 1024);
        f8555f.put("L123", 4096);
        f8555f.put("L150", 16384);
        f8555f.put("L153", Integer.valueOf(AntDetector.ACTION_ID_SAMPLE));
        f8555f.put("L156", 262144);
        f8555f.put("L180", 1048576);
        f8555f.put("L183", 4194304);
        f8555f.put("L186", 16777216);
        f8555f.put("H30", 2);
        f8555f.put("H60", 8);
        f8555f.put("H63", 32);
        f8555f.put("H90", 128);
        f8555f.put("H93", 512);
        f8555f.put("H120", 2048);
        f8555f.put("H123", Integer.valueOf(FileUtil.STREAM_BUFFER_SIZE));
        f8555f.put("H150", 32768);
        f8555f.put("H153", Integer.valueOf(AntDetector.SCENE_ID_LOGIN_REGIST));
        f8555f.put("H156", 524288);
        f8555f.put("H180", 2097152);
        f8555f.put("H183", 8388608);
        f8555f.put("H186", 33554432);
    }

    public static hl1 a() {
        return f8550a;
    }

    private static synchronized List<hl1> b(String str, boolean z) {
        synchronized (ol1.class) {
            a aVar = new a(str, z);
            List<hl1> list = f8552c.get(aVar);
            if (list != null) {
                return list;
            }
            List<hl1> a2 = a(aVar, cp1.f6080a >= 21 ? new sl1(z) : new ql1());
            if (z && a2.isEmpty() && 21 <= cp1.f6080a && cp1.f6080a <= 23) {
                a2 = a(aVar, new ql1());
                if (!a2.isEmpty()) {
                    String str2 = a2.get(0).f7109a;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(str2);
                    sb.toString();
                }
            }
            List<hl1> unmodifiableList = Collections.unmodifiableList(a2);
            f8552c.put(aVar, unmodifiableList);
            return unmodifiableList;
        }
    }

    public static hl1 a(String str, boolean z) {
        List<hl1> b2 = b(str, z);
        if (b2.isEmpty()) {
            return null;
        }
        return b2.get(0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0029, code lost:
    
        if (r3.equals("hev1") != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> a(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ol1.a(java.lang.String):android.util.Pair");
    }

    public static int b() {
        int i2;
        if (f8556g == -1) {
            int i3 = 0;
            hl1 a2 = a("video/avc", false);
            if (a2 != null) {
                MediaCodecInfo.CodecProfileLevel[] a3 = a2.a();
                int length = a3.length;
                int i4 = 0;
                while (i3 < length) {
                    int i5 = a3[i3].level;
                    if (i5 != 1 && i5 != 2) {
                        switch (i5) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                break;
                            case 64:
                                i2 = 202752;
                                break;
                            case 128:
                            case 256:
                                i2 = 414720;
                                break;
                            case 512:
                                i2 = 921600;
                                break;
                            case 1024:
                                i2 = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i2 = 2097152;
                                break;
                            case FileUtil.STREAM_BUFFER_SIZE /* 8192 */:
                                i2 = 2228224;
                                break;
                            case 16384:
                                i2 = 5652480;
                                break;
                            case 32768:
                            case AntDetector.ACTION_ID_SAMPLE /* 65536 */:
                                i2 = 9437184;
                                break;
                            default:
                                i2 = -1;
                                break;
                        }
                    } else {
                        i2 = 25344;
                    }
                    i4 = Math.max(i2, i4);
                    i3++;
                }
                i3 = Math.max(i4, cp1.f6080a >= 21 ? 345600 : 172800);
            }
            f8556g = i3;
        }
        return f8556g;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.google.android.gms.internal.ads.pl1.<init>(java.lang.Throwable, com.google.android.gms.internal.ads.nl1):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:289)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:172)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:64)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b2 A[Catch: Exception -> 0x02a3, TryCatch #3 {Exception -> 0x02a3, blocks: (B:3:0x0004, B:5:0x0016, B:9:0x0028, B:12:0x0030, B:14:0x0036, B:16:0x003e, B:18:0x0046, B:20:0x004e, B:22:0x0056, B:24:0x005e, B:27:0x0068, B:29:0x006e, B:32:0x0078, B:34:0x007c, B:36:0x0084, B:39:0x0090, B:41:0x0096, B:43:0x009e, B:45:0x00a8, B:47:0x00b2, B:49:0x00bc, B:51:0x00c6, B:53:0x00d0, B:55:0x00da, B:57:0x00e4, B:59:0x00ee, B:61:0x00f8, B:63:0x0102, B:65:0x010c, B:68:0x0118, B:70:0x011c, B:72:0x0124, B:74:0x012e, B:76:0x0138, B:78:0x0142, B:81:0x014d, B:84:0x0155, B:86:0x015d, B:88:0x0167, B:90:0x0171, B:92:0x017b, B:94:0x0183, B:96:0x018d, B:99:0x0198, B:101:0x019c, B:103:0x01a4, B:108:0x01b2, B:110:0x01ba, B:143:0x0230, B:145:0x0236, B:147:0x023c, B:150:0x025c, B:151:0x028c), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01fd A[Catch: Exception -> 0x01f8, TryCatch #2 {Exception -> 0x01f8, blocks: (B:155:0x01d2, B:157:0x01dc, B:159:0x01e6, B:161:0x01ee, B:122:0x01fd, B:126:0x020b, B:128:0x0206, B:134:0x0219), top: B:154:0x01d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0298 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.hl1> a(com.google.android.gms.internal.ads.ol1.a r17, com.google.android.gms.internal.ads.rl1 r18) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ol1.a(com.google.android.gms.internal.ads.ol1$a, com.google.android.gms.internal.ads.rl1):java.util.List");
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        Integer valueOf;
        Integer valueOf2;
        if (strArr.length < 2) {
            String valueOf3 = String.valueOf(str);
            if (valueOf3.length() != 0) {
                "Ignoring malformed AVC codec string: ".concat(valueOf3);
            } else {
                new String("Ignoring malformed AVC codec string: ");
            }
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                Integer valueOf4 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                valueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                valueOf = valueOf4;
            } else if (strArr.length >= 3) {
                valueOf = Integer.valueOf(Integer.parseInt(strArr[1]));
                valueOf2 = Integer.valueOf(Integer.parseInt(strArr[2]));
            } else {
                String valueOf5 = String.valueOf(str);
                if (valueOf5.length() != 0) {
                    "Ignoring malformed AVC codec string: ".concat(valueOf5);
                } else {
                    new String("Ignoring malformed AVC codec string: ");
                }
                return null;
            }
            Integer valueOf6 = Integer.valueOf(f8553d.get(valueOf.intValue()));
            if (valueOf6 == null) {
                String valueOf7 = String.valueOf(valueOf);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf7).length() + 21);
                sb.append("Unknown AVC profile: ");
                sb.append(valueOf7);
                sb.toString();
                return null;
            }
            Integer valueOf8 = Integer.valueOf(f8554e.get(valueOf2.intValue()));
            if (valueOf8 == null) {
                String valueOf9 = String.valueOf(valueOf2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf9).length() + 19);
                sb2.append("Unknown AVC level: ");
                sb2.append(valueOf9);
                sb2.toString();
                return null;
            }
            return new Pair<>(valueOf6, valueOf8);
        } catch (NumberFormatException unused) {
            String valueOf10 = String.valueOf(str);
            if (valueOf10.length() != 0) {
                "Ignoring malformed AVC codec string: ".concat(valueOf10);
            } else {
                new String("Ignoring malformed AVC codec string: ");
            }
            return null;
        }
    }
}
