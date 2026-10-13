package com.alibaba.fastjson.a;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.io.Closeable;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* compiled from: DefaultJSONParser.java */
/* loaded from: classes.dex */
public class c implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    public final p f3144e;

    /* renamed from: f, reason: collision with root package name */
    public n f3145f;

    /* renamed from: g, reason: collision with root package name */
    private String f3146g;

    /* renamed from: h, reason: collision with root package name */
    private DateFormat f3147h;

    /* renamed from: i, reason: collision with root package name */
    public final f f3148i;

    /* renamed from: j, reason: collision with root package name */
    protected m f3149j;

    /* renamed from: k, reason: collision with root package name */
    private m[] f3150k;

    /* renamed from: l, reason: collision with root package name */
    private int f3151l;
    private List<a> m;
    public int n;
    protected List<com.alibaba.fastjson.a.a.c> o;
    protected List<com.alibaba.fastjson.a.a.b> p;
    public com.alibaba.fastjson.a.a.e q;

    /* compiled from: DefaultJSONParser.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final m f3152a;

        /* renamed from: b, reason: collision with root package name */
        private final String f3153b;

        /* renamed from: c, reason: collision with root package name */
        public com.alibaba.fastjson.a.a.d f3154c;

        /* renamed from: d, reason: collision with root package name */
        public m f3155d;

        public a(m mVar, String str) {
            this.f3152a = mVar;
            this.f3153b = str;
        }
    }

    public c(String str, n nVar) {
        this(new f(str, JSON.DEFAULT_PARSER_FEATURE), nVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0295, code lost:
    
        r3 = r6.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0299, code lost:
    
        if (r13 != false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x029b, code lost:
    
        r18.f3149j = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x029d, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x027b, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x029e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02a6, code lost:
    
        throw new com.alibaba.fastjson.f("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02a7, code lost:
    
        r18.n = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02ac, code lost:
    
        if (r18.f3149j == null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02b0, code lost:
    
        if ((r20 instanceof java.lang.Integer) != false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02b2, code lost:
    
        o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02b9, code lost:
    
        if (r19.size() <= 0) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02bb, code lost:
    
        r0 = com.alibaba.fastjson.e.d.a((java.lang.Object) r19, (java.lang.Class<java.lang.Object>) r6, r18.f3145f);
        a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02c4, code lost:
    
        if (r13 != false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02c6, code lost:
    
        r18.f3149j = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02c8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02c9, code lost:
    
        r0 = r18.f3145f.a((java.lang.reflect.Type) r6).a(r18, r6, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02d3, code lost:
    
        if (r13 != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02d5, code lost:
    
        r18.f3149j = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02d7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0233, code lost:
    
        r3.b(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x023a, code lost:
    
        if (r3.f3161a != 13) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x023c, code lost:
    
        r3.b(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x023f, code lost:
    
        r2 = r18.f3145f.a((java.lang.reflect.Type) r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0247, code lost:
    
        if ((r2 instanceof com.alibaba.fastjson.a.h) == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0249, code lost:
    
        r2 = (com.alibaba.fastjson.a.h) r2;
        r3 = r2.a((com.alibaba.fastjson.a.c) r18, r6);
        r0 = r19.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x025b, code lost:
    
        if (r0.hasNext() == false) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x025d, code lost:
    
        r4 = (java.util.Map.Entry) r0.next();
        r7 = r4.getKey();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0269, code lost:
    
        if ((r7 instanceof java.lang.String) == false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x026b, code lost:
    
        r7 = r2.a((java.lang.String) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0271, code lost:
    
        if (r7 == null) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0273, code lost:
    
        r7.a(r3, r4.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x027c, code lost:
    
        if (r3 != null) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0280, code lost:
    
        if (r6 != java.lang.Cloneable.class) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0282, code lost:
    
        r3 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x028e, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r5) == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0290, code lost:
    
        r3 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0362 A[Catch: all -> 0x06b2, TRY_LEAVE, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x036c A[Catch: all -> 0x06b2, TRY_ENTER, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03b7 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x057c A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0597 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04d4 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04e3 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x04ec A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04f5 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x04fe A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x04f0 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0200 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c5 A[Catch: all -> 0x06b2, TryCatch #1 {all -> 0x06b2, blocks: (B:19:0x0063, B:22:0x006d, B:26:0x0076, B:30:0x0089, B:32:0x0093, B:36:0x009b, B:37:0x00b9, B:41:0x01c5, B:44:0x01d8, B:60:0x01f7, B:62:0x0204, B:64:0x020b, B:66:0x0213, B:68:0x0226, B:72:0x0233, B:74:0x023c, B:76:0x023f, B:78:0x0249, B:79:0x0257, B:81:0x025d, B:84:0x026b, B:87:0x0273, B:96:0x0282, B:97:0x0288, B:99:0x0290, B:100:0x0295, B:106:0x029f, B:107:0x02a6, B:108:0x02a7, B:110:0x02ae, B:112:0x02b2, B:113:0x02b5, B:115:0x02bb, B:119:0x02c9, B:126:0x02df, B:129:0x02e7, B:131:0x02ee, B:133:0x02fd, B:135:0x0305, B:138:0x030a, B:140:0x030e, B:142:0x035e, B:144:0x0362, B:148:0x036c, B:149:0x0384, B:150:0x0313, B:152:0x031b, B:154:0x031f, B:155:0x0322, B:156:0x032e, B:159:0x0337, B:161:0x033b, B:163:0x033e, B:165:0x0342, B:166:0x0346, B:167:0x0352, B:168:0x0385, B:169:0x03a1, B:172:0x03a6, B:177:0x03b7, B:179:0x03bd, B:181:0x03c9, B:182:0x03cf, B:184:0x03d4, B:186:0x0569, B:190:0x0573, B:193:0x057c, B:196:0x058f, B:200:0x0589, B:204:0x059b, B:207:0x05ae, B:209:0x05b7, B:212:0x05ca, B:214:0x0612, B:218:0x05c4, B:221:0x05d5, B:224:0x05e8, B:225:0x05e2, B:228:0x05f3, B:231:0x0606, B:232:0x0600, B:233:0x060d, B:234:0x05a8, B:235:0x061c, B:236:0x0634, B:237:0x03d8, B:242:0x03e8, B:247:0x03f7, B:250:0x040e, B:252:0x0417, B:256:0x0424, B:257:0x0427, B:259:0x0431, B:260:0x0438, B:269:0x043c, B:266:0x044e, B:267:0x0466, B:273:0x0435, B:275:0x0408, B:278:0x046b, B:281:0x047e, B:283:0x048f, B:286:0x04a3, B:287:0x04a9, B:290:0x04af, B:291:0x04b9, B:293:0x04c1, B:295:0x04d4, B:298:0x04dc, B:299:0x04de, B:301:0x04e3, B:303:0x04ec, B:305:0x04f5, B:306:0x04f8, B:314:0x04fe, B:316:0x0505, B:311:0x0512, B:312:0x052a, B:320:0x04f0, B:325:0x049a, B:326:0x0478, B:329:0x0531, B:331:0x053d, B:334:0x0550, B:336:0x055c, B:337:0x0635, B:339:0x0646, B:340:0x064a, B:349:0x0653, B:343:0x065f, B:346:0x0667, B:347:0x067f, B:358:0x01d2, B:359:0x0200, B:419:0x00c2, B:422:0x00d3, B:426:0x00cd, B:364:0x00e6, B:366:0x00f2, B:367:0x00f5, B:371:0x00fa, B:372:0x0110, B:380:0x0123, B:382:0x0129, B:384:0x012e, B:386:0x013b, B:387:0x013f, B:391:0x0145, B:392:0x015f, B:393:0x0133, B:395:0x0160, B:396:0x017a, B:404:0x0184, B:407:0x0193, B:409:0x0199, B:410:0x01b7, B:411:0x01b8, B:413:0x0680, B:414:0x0698, B:416:0x0699, B:417:0x06b1), top: B:18:0x0063, inners: #0, #2 }] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.alibaba.fastjson.a.c] */
    /* JADX WARN: Type inference failed for: r5v89, types: [java.util.Date] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.lang.Number] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.Map r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 1722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.c.a(java.util.Map, java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Map map, Object obj) {
        o oVar = new o(map, obj);
        a k2 = k();
        k2.f3154c = oVar;
        k2.f3155d = this.f3149j;
        this.n = 0;
    }

    public final void c(int i2) {
        f fVar = this.f3148i;
        if (fVar.f3161a == i2) {
            fVar.e();
            return;
        }
        throw new com.alibaba.fastjson.f("syntax error, expect " + g.a(i2) + ", actual " + g.a(this.f3148i.f3161a));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            if (this.f3148i.f3161a == 20) {
                return;
            }
            throw new com.alibaba.fastjson.f("not close json text, token : " + g.a(this.f3148i.f3161a));
        } finally {
            this.f3148i.b();
        }
    }

    public DateFormat i() {
        if (this.f3147h == null) {
            this.f3147h = new SimpleDateFormat(this.f3146g, this.f3148i.n);
            this.f3147h.setTimeZone(this.f3148i.m);
        }
        return this.f3147h;
    }

    public JSONObject j() {
        return (JSONObject) a((this.f3148i.f3163c & e.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject(), (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a k() {
        return this.m.get(r0.size() - 1);
    }

    public List<com.alibaba.fastjson.a.a.b> l() {
        if (this.p == null) {
            this.p = new ArrayList(2);
        }
        return this.p;
    }

    public List<com.alibaba.fastjson.a.a.c> m() {
        if (this.o == null) {
            this.o = new ArrayList(2);
        }
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o() {
        this.f3149j = this.f3149j.f3199b;
        m[] mVarArr = this.f3150k;
        int i2 = this.f3151l;
        mVarArr[i2 - 1] = null;
        this.f3151l = i2 - 1;
    }

    public Object p() {
        return b((Object) null);
    }

    public String q() {
        f fVar = this.f3148i;
        int i2 = fVar.f3161a;
        if (i2 != 4) {
            if (i2 == 2) {
                String d2 = fVar.d();
                this.f3148i.b(16);
                return d2;
            }
            Object p = p();
            if (p == null) {
                return null;
            }
            return p.toString();
        }
        String m = fVar.m();
        f fVar2 = this.f3148i;
        char c2 = fVar2.f3164d;
        if (c2 == ',') {
            int i3 = fVar2.f3165e + 1;
            fVar2.f3165e = i3;
            fVar2.f3164d = i3 < fVar2.r ? fVar2.q.charAt(i3) : (char) 26;
            this.f3148i.f3161a = 16;
        } else if (c2 == ']') {
            int i4 = fVar2.f3165e + 1;
            fVar2.f3165e = i4;
            fVar2.f3164d = i4 < fVar2.r ? fVar2.q.charAt(i4) : (char) 26;
            this.f3148i.f3161a = 15;
        } else if (c2 == '}') {
            int i5 = fVar2.f3165e + 1;
            fVar2.f3165e = i5;
            fVar2.f3164d = i5 < fVar2.r ? fVar2.q.charAt(i5) : (char) 26;
            this.f3148i.f3161a = 13;
        } else {
            fVar2.e();
        }
        return m;
    }

    public c(String str, n nVar, int i2) {
        this(new f(str, i2), nVar);
    }

    public c(char[] cArr, int i2, n nVar, int i3) {
        this(new f(cArr, i2, i3), nVar);
    }

    public c(f fVar, n nVar) {
        this.f3146g = JSON.DEFFAULT_DATE_FORMAT;
        this.f3151l = 0;
        this.n = 0;
        this.o = null;
        this.p = null;
        this.q = null;
        this.f3148i = fVar;
        this.f3145f = nVar;
        this.f3144e = nVar.f3206b;
        char c2 = fVar.f3164d;
        if (c2 == '{') {
            int i2 = fVar.f3165e + 1;
            fVar.f3165e = i2;
            fVar.f3164d = i2 < fVar.r ? fVar.q.charAt(i2) : (char) 26;
            fVar.f3161a = 12;
            return;
        }
        if (c2 == '[') {
            int i3 = fVar.f3165e + 1;
            fVar.f3165e = i3;
            fVar.f3164d = i3 < fVar.r ? fVar.q.charAt(i3) : (char) 26;
            fVar.f3161a = 14;
            return;
        }
        fVar.e();
    }

    public void c(Object obj) {
        List<a> list = this.m;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = this.m.get(i2);
            com.alibaba.fastjson.a.a.d dVar = aVar.f3154c;
            if (dVar != null) {
                m mVar = aVar.f3155d;
                Object obj2 = null;
                Object obj3 = mVar != null ? mVar.f3198a : null;
                String str = aVar.f3153b;
                if (!str.startsWith("$")) {
                    obj2 = aVar.f3152a.f3198a;
                } else {
                    for (int i3 = 0; i3 < this.f3151l; i3++) {
                        if (str.equals(this.f3150k[i3].toString())) {
                            obj2 = this.f3150k[i3].f3198a;
                        }
                    }
                }
                dVar.a(obj3, obj2);
            }
        }
    }

    public final void b(Collection collection) {
        a(collection, (Object) null);
    }

    public Object b(Object obj) {
        f fVar = this.f3148i;
        int i2 = fVar.f3161a;
        if (i2 == 2) {
            Number g2 = fVar.g();
            this.f3148i.e();
            return g2;
        }
        if (i2 == 3) {
            Number a2 = this.f3148i.a((fVar.f3163c & e.UseBigDecimal.mask) != 0);
            this.f3148i.e();
            return a2;
        }
        if (i2 == 4) {
            String m = fVar.m();
            this.f3148i.b(16);
            if ((this.f3148i.f3163c & e.AllowISO8601DateFormat.mask) != 0) {
                f fVar2 = new f(m);
                try {
                    if (fVar2.b(true)) {
                        return fVar2.o.getTime();
                    }
                } finally {
                    fVar2.b();
                }
            }
            return m;
        }
        if (i2 == 12) {
            return a((fVar.f3163c & e.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject(), obj);
        }
        if (i2 != 14) {
            switch (i2) {
                case 6:
                    fVar.b(16);
                    return Boolean.TRUE;
                case 7:
                    fVar.b(16);
                    return Boolean.FALSE;
                case 8:
                    break;
                case 9:
                    fVar.b(18);
                    f fVar3 = this.f3148i;
                    if (fVar3.f3161a == 18) {
                        fVar3.b(10);
                        c(10);
                        long longValue = this.f3148i.g().longValue();
                        c(2);
                        c(11);
                        return new Date(longValue);
                    }
                    throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
                default:
                    switch (i2) {
                        case 20:
                            if (fVar.n()) {
                                return null;
                            }
                            throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
                        case 21:
                            fVar.e();
                            HashSet hashSet = new HashSet();
                            a(hashSet, obj);
                            return hashSet;
                        case 22:
                            fVar.e();
                            TreeSet treeSet = new TreeSet();
                            a(treeSet, obj);
                            return treeSet;
                        case 23:
                            break;
                        default:
                            throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
                    }
            }
            this.f3148i.e();
            return null;
        }
        com.alibaba.fastjson.b bVar = new com.alibaba.fastjson.b();
        a(bVar, obj);
        return bVar;
    }

    public <T> T a(Class<T> cls) {
        return (T) a(cls, (Object) null);
    }

    public <T> T a(Type type) {
        return (T) a(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T a(Type type, Object obj) {
        f fVar = this.f3148i;
        int i2 = fVar.f3161a;
        if (i2 == 8) {
            fVar.e();
            return null;
        }
        if (i2 == 4) {
            if (type == byte[].class) {
                T t = (T) fVar.l();
                this.f3148i.e();
                return t;
            }
            if (type == char[].class) {
                String m = fVar.m();
                this.f3148i.e();
                return (T) m.toCharArray();
            }
        }
        try {
            return (T) this.f3145f.a(type).a(this, type, obj);
        } catch (com.alibaba.fastjson.f e2) {
            throw e2;
        } catch (Exception e3) {
            throw new com.alibaba.fastjson.f(e3.getMessage(), e3);
        }
    }

    public void a(Class<?> cls, Collection collection) {
        a((Type) cls, collection);
    }

    public void a(Type type, Collection collection) {
        a(type, collection, (Object) null);
    }

    public void a(Type type, Collection collection, Object obj) {
        com.alibaba.fastjson.a.a.f a2;
        String str;
        int i2 = this.f3148i.f3161a;
        if (i2 == 21 || i2 == 22) {
            this.f3148i.e();
        }
        f fVar = this.f3148i;
        if (fVar.f3161a == 14) {
            if (Integer.TYPE == type) {
                a2 = com.alibaba.fastjson.c.n.f3253a;
                fVar.b(2);
            } else if (String.class == type) {
                a2 = com.alibaba.fastjson.c.c.f3227a;
                fVar.b(4);
            } else {
                a2 = this.f3145f.a(type);
                this.f3148i.b(12);
            }
            m mVar = this.f3149j;
            if (!this.f3148i.t) {
                a(mVar, collection, obj);
            }
            int i3 = 0;
            while (true) {
                try {
                    if (this.f3148i.f3161a == 16) {
                        this.f3148i.e();
                    } else {
                        if (this.f3148i.f3161a == 15) {
                            this.f3149j = mVar;
                            this.f3148i.b(16);
                            return;
                        }
                        Object obj2 = null;
                        String obj3 = null;
                        if (Integer.TYPE == type) {
                            collection.add(com.alibaba.fastjson.c.n.f3253a.a(this, null, null));
                        } else if (String.class == type) {
                            if (this.f3148i.f3161a == 4) {
                                str = this.f3148i.m();
                                this.f3148i.b(16);
                            } else {
                                Object p = p();
                                if (p != null) {
                                    obj3 = p.toString();
                                }
                                str = obj3;
                            }
                            collection.add(str);
                        } else {
                            if (this.f3148i.f3161a == 8) {
                                this.f3148i.e();
                            } else {
                                obj2 = a2.a(this, type, Integer.valueOf(i3));
                            }
                            collection.add(obj2);
                            if (this.n == 1) {
                                a(collection);
                            }
                        }
                        if (this.f3148i.f3161a == 16) {
                            this.f3148i.e();
                        }
                        i3++;
                    }
                } catch (Throwable th) {
                    this.f3149j = mVar;
                    throw th;
                }
            }
        } else {
            throw new com.alibaba.fastjson.f("exepct '[', but " + g.a(this.f3148i.f3161a) + ", " + this.f3148i.h());
        }
    }

    public Object[] a(Type[] typeArr) {
        Object a2;
        Class<?> cls;
        boolean z;
        int i2;
        Object a3;
        f fVar = this.f3148i;
        int i3 = fVar.f3161a;
        int i4 = 8;
        if (i3 == 8) {
            fVar.b(16);
            return null;
        }
        if (i3 == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                fVar.b(15);
                f fVar2 = this.f3148i;
                if (fVar2.f3161a == 15) {
                    fVar2.b(16);
                    return new Object[0];
                }
                throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
            }
            fVar.b(2);
            int i5 = 0;
            while (i5 < typeArr.length) {
                f fVar3 = this.f3148i;
                int i6 = fVar3.f3161a;
                if (i6 == i4) {
                    fVar3.b(16);
                    a2 = null;
                } else {
                    Type type = typeArr[i5];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (i6 == 4) {
                                a3 = fVar3.m();
                                this.f3148i.b(16);
                            } else {
                                a3 = com.alibaba.fastjson.e.d.a(p(), type, this.f3145f);
                            }
                            a2 = a3;
                        } else {
                            if (i5 == typeArr.length - 1 && (type instanceof Class)) {
                                Class cls2 = (Class) type;
                                z = cls2.isArray();
                                cls = cls2.getComponentType();
                            } else {
                                cls = null;
                                z = false;
                            }
                            if (z && this.f3148i.f3161a != 14) {
                                ArrayList arrayList = new ArrayList();
                                com.alibaba.fastjson.a.a.f a4 = this.f3145f.a((Type) cls);
                                if (this.f3148i.f3161a != 15) {
                                    while (true) {
                                        arrayList.add(a4.a(this, type, null));
                                        f fVar4 = this.f3148i;
                                        i2 = fVar4.f3161a;
                                        if (i2 != 16) {
                                            break;
                                        }
                                        fVar4.b(12);
                                    }
                                    if (i2 != 15) {
                                        throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
                                    }
                                }
                                a2 = com.alibaba.fastjson.e.d.a(arrayList, type, this.f3145f);
                            } else {
                                a2 = this.f3145f.a(type).a(this, type, null);
                            }
                        }
                    } else {
                        f fVar5 = this.f3148i;
                        if (fVar5.f3161a == 2) {
                            a2 = Integer.valueOf(fVar5.k());
                            this.f3148i.b(16);
                        } else {
                            a2 = com.alibaba.fastjson.e.d.a(p(), type, this.f3145f);
                        }
                    }
                }
                objArr[i5] = a2;
                f fVar6 = this.f3148i;
                int i7 = fVar6.f3161a;
                if (i7 == 15) {
                    break;
                }
                if (i7 == 16) {
                    if (i5 == typeArr.length - 1) {
                        fVar6.b(15);
                    } else {
                        fVar6.b(2);
                    }
                    i5++;
                    i4 = 8;
                } else {
                    throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
                }
            }
            f fVar7 = this.f3148i;
            if (fVar7.f3161a == 15) {
                fVar7.b(16);
                return objArr;
            }
            throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
        }
        throw new com.alibaba.fastjson.f("syntax error, " + this.f3148i.h());
    }

    public void a(Object obj) {
        Object a2;
        Class<?> cls = obj.getClass();
        com.alibaba.fastjson.a.a.f a3 = this.f3145f.a((Type) cls);
        h hVar = a3 instanceof h ? (h) a3 : null;
        int i2 = this.f3148i.f3161a;
        if (i2 != 12 && i2 != 16) {
            throw new com.alibaba.fastjson.f("syntax error, expect {, actual " + g.a(i2));
        }
        while (true) {
            String a4 = this.f3148i.a(this.f3144e);
            if (a4 == null) {
                f fVar = this.f3148i;
                int i3 = fVar.f3161a;
                if (i3 == 13) {
                    fVar.b(16);
                    return;
                } else if (i3 == 16) {
                    continue;
                }
            }
            com.alibaba.fastjson.a.a.d a5 = hVar != null ? hVar.a(a4) : null;
            if (a5 == null) {
                f fVar2 = this.f3148i;
                if ((fVar2.f3163c & e.IgnoreNotMatch.mask) != 0) {
                    fVar2.a(':');
                    p();
                    f fVar3 = this.f3148i;
                    if (fVar3.f3161a == 13) {
                        fVar3.e();
                        return;
                    }
                } else {
                    throw new com.alibaba.fastjson.f("setter not found, class " + cls.getName() + ", property " + a4);
                }
            } else {
                com.alibaba.fastjson.e.a aVar = a5.f3139a;
                Class<?> cls2 = aVar.f3286k;
                Type type = aVar.f3287l;
                if (cls2 == Integer.TYPE) {
                    this.f3148i.a(':');
                    a2 = com.alibaba.fastjson.c.n.f3253a.a(this, type, null);
                } else if (cls2 == String.class) {
                    this.f3148i.a(':');
                    a2 = q();
                } else if (cls2 == Long.TYPE) {
                    this.f3148i.a(':');
                    a2 = com.alibaba.fastjson.c.n.f3253a.a(this, type, null);
                } else {
                    com.alibaba.fastjson.a.a.f a6 = this.f3145f.a(cls2, type);
                    this.f3148i.a(':');
                    a2 = a6.a(this, type, null);
                }
                a5.a(obj, a2);
                f fVar4 = this.f3148i;
                int i4 = fVar4.f3161a;
                if (i4 != 16 && i4 == 13) {
                    fVar4.b(16);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Collection collection) {
        if (collection instanceof List) {
            a k2 = k();
            k2.f3154c = new o(this, (List) collection, collection.size() - 1);
            k2.f3155d = this.f3149j;
            this.n = 0;
            return;
        }
        a k3 = k();
        k3.f3154c = new o(collection);
        k3.f3155d = this.f3149j;
        this.n = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x0202 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0069, B:28:0x008d, B:30:0x0093, B:32:0x00a1, B:35:0x00bb, B:37:0x00c4, B:43:0x00ce, B:44:0x00b3, B:48:0x00d7, B:51:0x00f1, B:53:0x00fa, B:54:0x00fd, B:59:0x00e9, B:46:0x0107, B:60:0x010c, B:62:0x0112, B:84:0x0141, B:86:0x0210, B:88:0x0217, B:89:0x021a, B:91:0x0220, B:93:0x0226, B:98:0x023d, B:101:0x0250, B:104:0x026e, B:106:0x0266, B:107:0x0271, B:110:0x0149, B:115:0x0153, B:116:0x0160, B:118:0x0168, B:119:0x016f, B:120:0x0170, B:122:0x017d, B:123:0x018d, B:124:0x0188, B:125:0x0196, B:126:0x019e, B:127:0x01a8, B:128:0x01b2, B:130:0x01ca, B:132:0x01d5, B:133:0x01db, B:134:0x01e0, B:136:0x01ed, B:137:0x01fc, B:138:0x01f5, B:139:0x0202, B:140:0x0061, B:141:0x0070, B:142:0x0077, B:145:0x0084), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0069, B:28:0x008d, B:30:0x0093, B:32:0x00a1, B:35:0x00bb, B:37:0x00c4, B:43:0x00ce, B:44:0x00b3, B:48:0x00d7, B:51:0x00f1, B:53:0x00fa, B:54:0x00fd, B:59:0x00e9, B:46:0x0107, B:60:0x010c, B:62:0x0112, B:84:0x0141, B:86:0x0210, B:88:0x0217, B:89:0x021a, B:91:0x0220, B:93:0x0226, B:98:0x023d, B:101:0x0250, B:104:0x026e, B:106:0x0266, B:107:0x0271, B:110:0x0149, B:115:0x0153, B:116:0x0160, B:118:0x0168, B:119:0x016f, B:120:0x0170, B:122:0x017d, B:123:0x018d, B:124:0x0188, B:125:0x0196, B:126:0x019e, B:127:0x01a8, B:128:0x01b2, B:130:0x01ca, B:132:0x01d5, B:133:0x01db, B:134:0x01e0, B:136:0x01ed, B:137:0x01fc, B:138:0x01f5, B:139:0x0202, B:140:0x0061, B:141:0x0070, B:142:0x0077, B:145:0x0084), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0112 A[Catch: all -> 0x0280, LOOP:1: B:61:0x0110->B:62:0x0112, LOOP_END, TryCatch #0 {all -> 0x0280, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0069, B:28:0x008d, B:30:0x0093, B:32:0x00a1, B:35:0x00bb, B:37:0x00c4, B:43:0x00ce, B:44:0x00b3, B:48:0x00d7, B:51:0x00f1, B:53:0x00fa, B:54:0x00fd, B:59:0x00e9, B:46:0x0107, B:60:0x010c, B:62:0x0112, B:84:0x0141, B:86:0x0210, B:88:0x0217, B:89:0x021a, B:91:0x0220, B:93:0x0226, B:98:0x023d, B:101:0x0250, B:104:0x026e, B:106:0x0266, B:107:0x0271, B:110:0x0149, B:115:0x0153, B:116:0x0160, B:118:0x0168, B:119:0x016f, B:120:0x0170, B:122:0x017d, B:123:0x018d, B:124:0x0188, B:125:0x0196, B:126:0x019e, B:127:0x01a8, B:128:0x01b2, B:130:0x01ca, B:132:0x01d5, B:133:0x01db, B:134:0x01e0, B:136:0x01ed, B:137:0x01fc, B:138:0x01f5, B:139:0x0202, B:140:0x0061, B:141:0x0070, B:142:0x0077, B:145:0x0084), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0217 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0069, B:28:0x008d, B:30:0x0093, B:32:0x00a1, B:35:0x00bb, B:37:0x00c4, B:43:0x00ce, B:44:0x00b3, B:48:0x00d7, B:51:0x00f1, B:53:0x00fa, B:54:0x00fd, B:59:0x00e9, B:46:0x0107, B:60:0x010c, B:62:0x0112, B:84:0x0141, B:86:0x0210, B:88:0x0217, B:89:0x021a, B:91:0x0220, B:93:0x0226, B:98:0x023d, B:101:0x0250, B:104:0x026e, B:106:0x0266, B:107:0x0271, B:110:0x0149, B:115:0x0153, B:116:0x0160, B:118:0x0168, B:119:0x016f, B:120:0x0170, B:122:0x017d, B:123:0x018d, B:124:0x0188, B:125:0x0196, B:126:0x019e, B:127:0x01a8, B:128:0x01b2, B:130:0x01ca, B:132:0x01d5, B:133:0x01db, B:134:0x01e0, B:136:0x01ed, B:137:0x01fc, B:138:0x01f5, B:139:0x0202, B:140:0x0061, B:141:0x0070, B:142:0x0077, B:145:0x0084), top: B:10:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0220 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:11:0x002a, B:14:0x003e, B:21:0x004f, B:24:0x0069, B:28:0x008d, B:30:0x0093, B:32:0x00a1, B:35:0x00bb, B:37:0x00c4, B:43:0x00ce, B:44:0x00b3, B:48:0x00d7, B:51:0x00f1, B:53:0x00fa, B:54:0x00fd, B:59:0x00e9, B:46:0x0107, B:60:0x010c, B:62:0x0112, B:84:0x0141, B:86:0x0210, B:88:0x0217, B:89:0x021a, B:91:0x0220, B:93:0x0226, B:98:0x023d, B:101:0x0250, B:104:0x026e, B:106:0x0266, B:107:0x0271, B:110:0x0149, B:115:0x0153, B:116:0x0160, B:118:0x0168, B:119:0x016f, B:120:0x0170, B:122:0x017d, B:123:0x018d, B:124:0x0188, B:125:0x0196, B:126:0x019e, B:127:0x01a8, B:128:0x01b2, B:130:0x01ca, B:132:0x01d5, B:133:0x01db, B:134:0x01e0, B:136:0x01ed, B:137:0x01fc, B:138:0x01f5, B:139:0x0202, B:140:0x0061, B:141:0x0070, B:142:0x0077, B:145:0x0084), top: B:10:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Collection r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.c.a(java.util.Collection, java.lang.Object):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(a aVar) {
        if (this.m == null) {
            this.m = new ArrayList(2);
        }
        this.m.add(aVar);
    }

    public void a(m mVar) {
        if (this.f3148i.t) {
            return;
        }
        this.f3149j = mVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m a(m mVar, Object obj, Object obj2) {
        if (this.f3148i.t) {
            return null;
        }
        this.f3149j = new m(mVar, obj, obj2);
        int i2 = this.f3151l;
        this.f3151l = i2 + 1;
        m[] mVarArr = this.f3150k;
        if (mVarArr == null) {
            this.f3150k = new m[8];
        } else if (i2 >= mVarArr.length) {
            m[] mVarArr2 = new m[(mVarArr.length * 3) / 2];
            System.arraycopy(mVarArr, 0, mVarArr2, 0, mVarArr.length);
            this.f3150k = mVarArr2;
        }
        m[] mVarArr3 = this.f3150k;
        m mVar2 = this.f3149j;
        mVarArr3[i2] = mVar2;
        return mVar2;
    }
}
