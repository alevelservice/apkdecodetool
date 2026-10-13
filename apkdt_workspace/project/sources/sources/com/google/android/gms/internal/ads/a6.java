package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a6 extends k6 {

    /* renamed from: c, reason: collision with root package name */
    private String f5516c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f5517d;

    /* renamed from: e, reason: collision with root package name */
    private int f5518e;

    /* renamed from: f, reason: collision with root package name */
    private int f5519f;

    /* renamed from: g, reason: collision with root package name */
    private int f5520g;

    /* renamed from: h, reason: collision with root package name */
    private int f5521h;

    /* renamed from: i, reason: collision with root package name */
    private int f5522i;

    /* renamed from: j, reason: collision with root package name */
    private int f5523j;

    /* renamed from: k, reason: collision with root package name */
    private final Object f5524k;

    /* renamed from: l, reason: collision with root package name */
    private final fi f5525l;
    private final Activity m;
    private uj n;
    private ImageView o;
    private LinearLayout p;
    private n6 q;
    private PopupWindow r;
    private RelativeLayout s;
    private ViewGroup t;

    static {
        com.google.android.gms.common.util.f.b("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    }

    public a6(fi fiVar, n6 n6Var) {
        super(fiVar, "resize");
        this.f5516c = "top-right";
        this.f5517d = true;
        this.f5518e = 0;
        this.f5519f = 0;
        this.f5520g = -1;
        this.f5521h = 0;
        this.f5522i = 0;
        this.f5523j = -1;
        this.f5524k = new Object();
        this.f5525l = fiVar;
        this.m = fiVar.zzxl();
        this.q = n6Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x023d A[Catch: all -> 0x04c3, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:10:0x0012, B:12:0x001a, B:13:0x001f, B:15:0x0021, B:17:0x002d, B:18:0x0032, B:20:0x0034, B:22:0x003c, B:23:0x0041, B:25:0x0043, B:27:0x0051, B:28:0x0062, B:30:0x0070, B:31:0x0081, B:33:0x008f, B:34:0x00a0, B:36:0x00ae, B:37:0x00bf, B:39:0x00cd, B:40:0x00db, B:42:0x00e9, B:43:0x00eb, B:45:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:71:0x014c, B:76:0x029d, B:77:0x02a2, B:79:0x02a4, B:81:0x02c6, B:83:0x02ca, B:85:0x02da, B:86:0x030e, B:89:0x0344, B:90:0x0378, B:102:0x03ce, B:103:0x03fd, B:105:0x0415, B:106:0x0434, B:108:0x043c, B:109:0x0445, B:110:0x046b, B:114:0x046e, B:116:0x047e, B:117:0x0488, B:119:0x049a, B:120:0x04b3, B:122:0x0483, B:123:0x03d5, B:124:0x03dc, B:125:0x03e3, B:126:0x03ea, B:127:0x03f0, B:128:0x03f7, B:129:0x037c, B:132:0x0386, B:135:0x0390, B:138:0x039a, B:141:0x03a4, B:144:0x03ae, B:148:0x0309, B:149:0x04b5, B:150:0x04ba, B:152:0x023d, B:154:0x0241, B:155:0x0252, B:158:0x0280, B:160:0x0284, B:161:0x0294, B:162:0x0287, B:164:0x028e, B:165:0x0276, B:167:0x027b, B:169:0x0153, B:171:0x0157, B:172:0x015d, B:181:0x01aa, B:182:0x021b, B:184:0x021e, B:186:0x0221, B:188:0x0225, B:191:0x01b8, B:192:0x01e8, B:193:0x01c9, B:194:0x01dc, B:195:0x01eb, B:196:0x0202, B:197:0x0212, B:198:0x0161, B:201:0x016b, B:204:0x0175, B:207:0x017f, B:210:0x0189, B:213:0x0193, B:217:0x022d, B:218:0x0233, B:219:0x04bc, B:220:0x04c1), top: B:3:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x021e A[Catch: all -> 0x04c3, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:10:0x0012, B:12:0x001a, B:13:0x001f, B:15:0x0021, B:17:0x002d, B:18:0x0032, B:20:0x0034, B:22:0x003c, B:23:0x0041, B:25:0x0043, B:27:0x0051, B:28:0x0062, B:30:0x0070, B:31:0x0081, B:33:0x008f, B:34:0x00a0, B:36:0x00ae, B:37:0x00bf, B:39:0x00cd, B:40:0x00db, B:42:0x00e9, B:43:0x00eb, B:45:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:71:0x014c, B:76:0x029d, B:77:0x02a2, B:79:0x02a4, B:81:0x02c6, B:83:0x02ca, B:85:0x02da, B:86:0x030e, B:89:0x0344, B:90:0x0378, B:102:0x03ce, B:103:0x03fd, B:105:0x0415, B:106:0x0434, B:108:0x043c, B:109:0x0445, B:110:0x046b, B:114:0x046e, B:116:0x047e, B:117:0x0488, B:119:0x049a, B:120:0x04b3, B:122:0x0483, B:123:0x03d5, B:124:0x03dc, B:125:0x03e3, B:126:0x03ea, B:127:0x03f0, B:128:0x03f7, B:129:0x037c, B:132:0x0386, B:135:0x0390, B:138:0x039a, B:141:0x03a4, B:144:0x03ae, B:148:0x0309, B:149:0x04b5, B:150:0x04ba, B:152:0x023d, B:154:0x0241, B:155:0x0252, B:158:0x0280, B:160:0x0284, B:161:0x0294, B:162:0x0287, B:164:0x028e, B:165:0x0276, B:167:0x027b, B:169:0x0153, B:171:0x0157, B:172:0x015d, B:181:0x01aa, B:182:0x021b, B:184:0x021e, B:186:0x0221, B:188:0x0225, B:191:0x01b8, B:192:0x01e8, B:193:0x01c9, B:194:0x01dc, B:195:0x01eb, B:196:0x0202, B:197:0x0212, B:198:0x0161, B:201:0x016b, B:204:0x0175, B:207:0x017f, B:210:0x0189, B:213:0x0193, B:217:0x022d, B:218:0x0233, B:219:0x04bc, B:220:0x04c1), top: B:3:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x029d A[Catch: all -> 0x04c3, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:10:0x0012, B:12:0x001a, B:13:0x001f, B:15:0x0021, B:17:0x002d, B:18:0x0032, B:20:0x0034, B:22:0x003c, B:23:0x0041, B:25:0x0043, B:27:0x0051, B:28:0x0062, B:30:0x0070, B:31:0x0081, B:33:0x008f, B:34:0x00a0, B:36:0x00ae, B:37:0x00bf, B:39:0x00cd, B:40:0x00db, B:42:0x00e9, B:43:0x00eb, B:45:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:71:0x014c, B:76:0x029d, B:77:0x02a2, B:79:0x02a4, B:81:0x02c6, B:83:0x02ca, B:85:0x02da, B:86:0x030e, B:89:0x0344, B:90:0x0378, B:102:0x03ce, B:103:0x03fd, B:105:0x0415, B:106:0x0434, B:108:0x043c, B:109:0x0445, B:110:0x046b, B:114:0x046e, B:116:0x047e, B:117:0x0488, B:119:0x049a, B:120:0x04b3, B:122:0x0483, B:123:0x03d5, B:124:0x03dc, B:125:0x03e3, B:126:0x03ea, B:127:0x03f0, B:128:0x03f7, B:129:0x037c, B:132:0x0386, B:135:0x0390, B:138:0x039a, B:141:0x03a4, B:144:0x03ae, B:148:0x0309, B:149:0x04b5, B:150:0x04ba, B:152:0x023d, B:154:0x0241, B:155:0x0252, B:158:0x0280, B:160:0x0284, B:161:0x0294, B:162:0x0287, B:164:0x028e, B:165:0x0276, B:167:0x027b, B:169:0x0153, B:171:0x0157, B:172:0x015d, B:181:0x01aa, B:182:0x021b, B:184:0x021e, B:186:0x0221, B:188:0x0225, B:191:0x01b8, B:192:0x01e8, B:193:0x01c9, B:194:0x01dc, B:195:0x01eb, B:196:0x0202, B:197:0x0212, B:198:0x0161, B:201:0x016b, B:204:0x0175, B:207:0x017f, B:210:0x0189, B:213:0x0193, B:217:0x022d, B:218:0x0233, B:219:0x04bc, B:220:0x04c1), top: B:3:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02a4 A[Catch: all -> 0x04c3, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:10:0x0012, B:12:0x001a, B:13:0x001f, B:15:0x0021, B:17:0x002d, B:18:0x0032, B:20:0x0034, B:22:0x003c, B:23:0x0041, B:25:0x0043, B:27:0x0051, B:28:0x0062, B:30:0x0070, B:31:0x0081, B:33:0x008f, B:34:0x00a0, B:36:0x00ae, B:37:0x00bf, B:39:0x00cd, B:40:0x00db, B:42:0x00e9, B:43:0x00eb, B:45:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:71:0x014c, B:76:0x029d, B:77:0x02a2, B:79:0x02a4, B:81:0x02c6, B:83:0x02ca, B:85:0x02da, B:86:0x030e, B:89:0x0344, B:90:0x0378, B:102:0x03ce, B:103:0x03fd, B:105:0x0415, B:106:0x0434, B:108:0x043c, B:109:0x0445, B:110:0x046b, B:114:0x046e, B:116:0x047e, B:117:0x0488, B:119:0x049a, B:120:0x04b3, B:122:0x0483, B:123:0x03d5, B:124:0x03dc, B:125:0x03e3, B:126:0x03ea, B:127:0x03f0, B:128:0x03f7, B:129:0x037c, B:132:0x0386, B:135:0x0390, B:138:0x039a, B:141:0x03a4, B:144:0x03ae, B:148:0x0309, B:149:0x04b5, B:150:0x04ba, B:152:0x023d, B:154:0x0241, B:155:0x0252, B:158:0x0280, B:160:0x0284, B:161:0x0294, B:162:0x0287, B:164:0x028e, B:165:0x0276, B:167:0x027b, B:169:0x0153, B:171:0x0157, B:172:0x015d, B:181:0x01aa, B:182:0x021b, B:184:0x021e, B:186:0x0221, B:188:0x0225, B:191:0x01b8, B:192:0x01e8, B:193:0x01c9, B:194:0x01dc, B:195:0x01eb, B:196:0x0202, B:197:0x0212, B:198:0x0161, B:201:0x016b, B:204:0x0175, B:207:0x017f, B:210:0x0189, B:213:0x0193, B:217:0x022d, B:218:0x0233, B:219:0x04bc, B:220:0x04c1), top: B:3:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Map<java.lang.String, java.lang.String> r17) {
        /*
            Method dump skipped, instructions count: 1274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.a6.a(java.util.Map):void");
    }

    public final void a(boolean z) {
        synchronized (this.f5524k) {
            if (this.r != null) {
                this.r.dismiss();
                this.s.removeView(this.f5525l.getView());
                if (this.t != null) {
                    this.t.removeView(this.o);
                    this.t.addView(this.f5525l.getView());
                    this.f5525l.zza(this.n);
                }
                if (z) {
                    c("default");
                    if (this.q != null) {
                        this.q.f();
                    }
                }
                this.r = null;
                this.s = null;
                this.t = null;
                this.p = null;
            }
        }
    }

    public final void a(int i2, int i3, boolean z) {
        synchronized (this.f5524k) {
            this.f5518e = i2;
            this.f5519f = i3;
            PopupWindow popupWindow = this.r;
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.f5524k) {
            z = this.r != null;
        }
        return z;
    }

    public final void a(int i2, int i3) {
        this.f5518e = i2;
        this.f5519f = i3;
    }
}
