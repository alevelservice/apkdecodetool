package com.alibaba.fastjson.c;

import com.alibaba.fastjson.annotation.JSONType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: JavaBeanSerializer.java */
/* loaded from: classes.dex */
public class q implements w {

    /* renamed from: f, reason: collision with root package name */
    private static final char[] f3266f = {'t', 'r', 'u', 'e'};

    /* renamed from: g, reason: collision with root package name */
    private static final char[] f3267g = {'f', 'a', 'l', 's', 'e'};

    /* renamed from: a, reason: collision with root package name */
    private final m[] f3268a;

    /* renamed from: b, reason: collision with root package name */
    private final m[] f3269b;

    /* renamed from: c, reason: collision with root package name */
    protected int f3270c;

    /* renamed from: d, reason: collision with root package name */
    protected final String f3271d;

    /* renamed from: e, reason: collision with root package name */
    protected final String f3272e;

    public q(Class<?> cls, com.alibaba.fastjson.h hVar) {
        this(cls, cls.getModifiers(), null, false, true, true, true, hVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x024d A[Catch: all -> 0x05c9, Exception -> 0x05cf, TryCatch #9 {Exception -> 0x05cf, all -> 0x05c9, blocks: (B:92:0x0176, B:94:0x0191, B:96:0x0195, B:103:0x019a, B:105:0x019e, B:109:0x01a9, B:110:0x01ad, B:112:0x01b3, B:117:0x01ce, B:119:0x01d5, B:121:0x01d9, B:126:0x021e, B:128:0x0224, B:130:0x0243, B:131:0x0247, B:133:0x024d, B:143:0x027c, B:145:0x0280, B:147:0x029b, B:148:0x02a2, B:150:0x02a8, B:156:0x02c5, B:158:0x02c9, B:160:0x02d0, B:162:0x02d4, B:163:0x02d9, B:165:0x02dd, B:166:0x02e2, B:167:0x02e8, B:169:0x02ee, B:177:0x030e, B:179:0x031a, B:181:0x0327, B:183:0x032b, B:186:0x0336, B:188:0x0339, B:194:0x03e5, B:196:0x03e9, B:198:0x03ed, B:200:0x03f1, B:202:0x03f5, B:204:0x03f9, B:206:0x040b, B:208:0x040f, B:210:0x0413, B:212:0x03fd, B:214:0x0401, B:218:0x0423, B:220:0x042c, B:222:0x0430, B:223:0x0434, B:224:0x0438, B:226:0x044b, B:229:0x0455, B:230:0x0459, B:236:0x0463, B:237:0x0466, B:240:0x046e, B:242:0x0479, B:244:0x047d, B:246:0x0483, B:250:0x04a4, B:253:0x04ae, B:256:0x04b5, B:260:0x04bd, B:264:0x04c9, B:268:0x04cf, B:270:0x04d3, B:271:0x04d5, B:273:0x04dd, B:275:0x04e1, B:276:0x04e5, B:278:0x04f5, B:266:0x04ff, B:281:0x0502, B:283:0x0506, B:284:0x050f, B:287:0x0515, B:288:0x0522, B:292:0x0535, B:294:0x053c, B:296:0x0545, B:299:0x054d, B:300:0x0552, B:301:0x0559, B:303:0x055d, B:304:0x0562, B:305:0x0569, B:308:0x0571, B:310:0x057a, B:314:0x058e, B:315:0x0593, B:317:0x0598, B:318:0x05a3, B:319:0x05a8, B:320:0x05ad, B:322:0x033e, B:326:0x034d, B:328:0x0358, B:330:0x035c, B:333:0x0363, B:335:0x0366, B:338:0x036f, B:340:0x0377, B:342:0x0382, B:344:0x0386, B:347:0x038d, B:349:0x0390, B:351:0x0395, B:352:0x039b, B:354:0x03a3, B:356:0x03ae, B:358:0x03b2, B:361:0x03b9, B:363:0x03bc, B:365:0x03c1, B:367:0x03ca, B:369:0x03ce, B:374:0x0287, B:376:0x028b, B:377:0x0290, B:379:0x0294, B:385:0x022d, B:387:0x0231, B:388:0x0236, B:390:0x023a, B:394:0x01e7, B:396:0x01eb, B:397:0x01f6, B:399:0x01fa, B:400:0x0207, B:402:0x020e, B:427:0x05e3, B:428:0x05eb, B:430:0x05f1, B:435:0x0603, B:437:0x060c, B:440:0x061c, B:442:0x0620, B:443:0x0624), top: B:91:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02a8 A[Catch: all -> 0x05c9, Exception -> 0x05cf, LOOP:4: B:148:0x02a2->B:150:0x02a8, LOOP_END, TryCatch #9 {Exception -> 0x05cf, all -> 0x05c9, blocks: (B:92:0x0176, B:94:0x0191, B:96:0x0195, B:103:0x019a, B:105:0x019e, B:109:0x01a9, B:110:0x01ad, B:112:0x01b3, B:117:0x01ce, B:119:0x01d5, B:121:0x01d9, B:126:0x021e, B:128:0x0224, B:130:0x0243, B:131:0x0247, B:133:0x024d, B:143:0x027c, B:145:0x0280, B:147:0x029b, B:148:0x02a2, B:150:0x02a8, B:156:0x02c5, B:158:0x02c9, B:160:0x02d0, B:162:0x02d4, B:163:0x02d9, B:165:0x02dd, B:166:0x02e2, B:167:0x02e8, B:169:0x02ee, B:177:0x030e, B:179:0x031a, B:181:0x0327, B:183:0x032b, B:186:0x0336, B:188:0x0339, B:194:0x03e5, B:196:0x03e9, B:198:0x03ed, B:200:0x03f1, B:202:0x03f5, B:204:0x03f9, B:206:0x040b, B:208:0x040f, B:210:0x0413, B:212:0x03fd, B:214:0x0401, B:218:0x0423, B:220:0x042c, B:222:0x0430, B:223:0x0434, B:224:0x0438, B:226:0x044b, B:229:0x0455, B:230:0x0459, B:236:0x0463, B:237:0x0466, B:240:0x046e, B:242:0x0479, B:244:0x047d, B:246:0x0483, B:250:0x04a4, B:253:0x04ae, B:256:0x04b5, B:260:0x04bd, B:264:0x04c9, B:268:0x04cf, B:270:0x04d3, B:271:0x04d5, B:273:0x04dd, B:275:0x04e1, B:276:0x04e5, B:278:0x04f5, B:266:0x04ff, B:281:0x0502, B:283:0x0506, B:284:0x050f, B:287:0x0515, B:288:0x0522, B:292:0x0535, B:294:0x053c, B:296:0x0545, B:299:0x054d, B:300:0x0552, B:301:0x0559, B:303:0x055d, B:304:0x0562, B:305:0x0569, B:308:0x0571, B:310:0x057a, B:314:0x058e, B:315:0x0593, B:317:0x0598, B:318:0x05a3, B:319:0x05a8, B:320:0x05ad, B:322:0x033e, B:326:0x034d, B:328:0x0358, B:330:0x035c, B:333:0x0363, B:335:0x0366, B:338:0x036f, B:340:0x0377, B:342:0x0382, B:344:0x0386, B:347:0x038d, B:349:0x0390, B:351:0x0395, B:352:0x039b, B:354:0x03a3, B:356:0x03ae, B:358:0x03b2, B:361:0x03b9, B:363:0x03bc, B:365:0x03c1, B:367:0x03ca, B:369:0x03ce, B:374:0x0287, B:376:0x028b, B:377:0x0290, B:379:0x0294, B:385:0x022d, B:387:0x0231, B:388:0x0236, B:390:0x023a, B:394:0x01e7, B:396:0x01eb, B:397:0x01f6, B:399:0x01fa, B:400:0x0207, B:402:0x020e, B:427:0x05e3, B:428:0x05eb, B:430:0x05f1, B:435:0x0603, B:437:0x060c, B:440:0x061c, B:442:0x0620, B:443:0x0624), top: B:91:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x04f5 A[Catch: all -> 0x05c9, Exception -> 0x05cf, TryCatch #9 {Exception -> 0x05cf, all -> 0x05c9, blocks: (B:92:0x0176, B:94:0x0191, B:96:0x0195, B:103:0x019a, B:105:0x019e, B:109:0x01a9, B:110:0x01ad, B:112:0x01b3, B:117:0x01ce, B:119:0x01d5, B:121:0x01d9, B:126:0x021e, B:128:0x0224, B:130:0x0243, B:131:0x0247, B:133:0x024d, B:143:0x027c, B:145:0x0280, B:147:0x029b, B:148:0x02a2, B:150:0x02a8, B:156:0x02c5, B:158:0x02c9, B:160:0x02d0, B:162:0x02d4, B:163:0x02d9, B:165:0x02dd, B:166:0x02e2, B:167:0x02e8, B:169:0x02ee, B:177:0x030e, B:179:0x031a, B:181:0x0327, B:183:0x032b, B:186:0x0336, B:188:0x0339, B:194:0x03e5, B:196:0x03e9, B:198:0x03ed, B:200:0x03f1, B:202:0x03f5, B:204:0x03f9, B:206:0x040b, B:208:0x040f, B:210:0x0413, B:212:0x03fd, B:214:0x0401, B:218:0x0423, B:220:0x042c, B:222:0x0430, B:223:0x0434, B:224:0x0438, B:226:0x044b, B:229:0x0455, B:230:0x0459, B:236:0x0463, B:237:0x0466, B:240:0x046e, B:242:0x0479, B:244:0x047d, B:246:0x0483, B:250:0x04a4, B:253:0x04ae, B:256:0x04b5, B:260:0x04bd, B:264:0x04c9, B:268:0x04cf, B:270:0x04d3, B:271:0x04d5, B:273:0x04dd, B:275:0x04e1, B:276:0x04e5, B:278:0x04f5, B:266:0x04ff, B:281:0x0502, B:283:0x0506, B:284:0x050f, B:287:0x0515, B:288:0x0522, B:292:0x0535, B:294:0x053c, B:296:0x0545, B:299:0x054d, B:300:0x0552, B:301:0x0559, B:303:0x055d, B:304:0x0562, B:305:0x0569, B:308:0x0571, B:310:0x057a, B:314:0x058e, B:315:0x0593, B:317:0x0598, B:318:0x05a3, B:319:0x05a8, B:320:0x05ad, B:322:0x033e, B:326:0x034d, B:328:0x0358, B:330:0x035c, B:333:0x0363, B:335:0x0366, B:338:0x036f, B:340:0x0377, B:342:0x0382, B:344:0x0386, B:347:0x038d, B:349:0x0390, B:351:0x0395, B:352:0x039b, B:354:0x03a3, B:356:0x03ae, B:358:0x03b2, B:361:0x03b9, B:363:0x03bc, B:365:0x03c1, B:367:0x03ca, B:369:0x03ce, B:374:0x0287, B:376:0x028b, B:377:0x0290, B:379:0x0294, B:385:0x022d, B:387:0x0231, B:388:0x0236, B:390:0x023a, B:394:0x01e7, B:396:0x01eb, B:397:0x01f6, B:399:0x01fa, B:400:0x0207, B:402:0x020e, B:427:0x05e3, B:428:0x05eb, B:430:0x05f1, B:435:0x0603, B:437:0x060c, B:440:0x061c, B:442:0x0620, B:443:0x0624), top: B:91:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x064a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0603 A[Catch: all -> 0x05c9, Exception -> 0x05cf, TRY_ENTER, TryCatch #9 {Exception -> 0x05cf, all -> 0x05c9, blocks: (B:92:0x0176, B:94:0x0191, B:96:0x0195, B:103:0x019a, B:105:0x019e, B:109:0x01a9, B:110:0x01ad, B:112:0x01b3, B:117:0x01ce, B:119:0x01d5, B:121:0x01d9, B:126:0x021e, B:128:0x0224, B:130:0x0243, B:131:0x0247, B:133:0x024d, B:143:0x027c, B:145:0x0280, B:147:0x029b, B:148:0x02a2, B:150:0x02a8, B:156:0x02c5, B:158:0x02c9, B:160:0x02d0, B:162:0x02d4, B:163:0x02d9, B:165:0x02dd, B:166:0x02e2, B:167:0x02e8, B:169:0x02ee, B:177:0x030e, B:179:0x031a, B:181:0x0327, B:183:0x032b, B:186:0x0336, B:188:0x0339, B:194:0x03e5, B:196:0x03e9, B:198:0x03ed, B:200:0x03f1, B:202:0x03f5, B:204:0x03f9, B:206:0x040b, B:208:0x040f, B:210:0x0413, B:212:0x03fd, B:214:0x0401, B:218:0x0423, B:220:0x042c, B:222:0x0430, B:223:0x0434, B:224:0x0438, B:226:0x044b, B:229:0x0455, B:230:0x0459, B:236:0x0463, B:237:0x0466, B:240:0x046e, B:242:0x0479, B:244:0x047d, B:246:0x0483, B:250:0x04a4, B:253:0x04ae, B:256:0x04b5, B:260:0x04bd, B:264:0x04c9, B:268:0x04cf, B:270:0x04d3, B:271:0x04d5, B:273:0x04dd, B:275:0x04e1, B:276:0x04e5, B:278:0x04f5, B:266:0x04ff, B:281:0x0502, B:283:0x0506, B:284:0x050f, B:287:0x0515, B:288:0x0522, B:292:0x0535, B:294:0x053c, B:296:0x0545, B:299:0x054d, B:300:0x0552, B:301:0x0559, B:303:0x055d, B:304:0x0562, B:305:0x0569, B:308:0x0571, B:310:0x057a, B:314:0x058e, B:315:0x0593, B:317:0x0598, B:318:0x05a3, B:319:0x05a8, B:320:0x05ad, B:322:0x033e, B:326:0x034d, B:328:0x0358, B:330:0x035c, B:333:0x0363, B:335:0x0366, B:338:0x036f, B:340:0x0377, B:342:0x0382, B:344:0x0386, B:347:0x038d, B:349:0x0390, B:351:0x0395, B:352:0x039b, B:354:0x03a3, B:356:0x03ae, B:358:0x03b2, B:361:0x03b9, B:363:0x03bc, B:365:0x03c1, B:367:0x03ca, B:369:0x03ce, B:374:0x0287, B:376:0x028b, B:377:0x0290, B:379:0x0294, B:385:0x022d, B:387:0x0231, B:388:0x0236, B:390:0x023a, B:394:0x01e7, B:396:0x01eb, B:397:0x01f6, B:399:0x01fa, B:400:0x0207, B:402:0x020e, B:427:0x05e3, B:428:0x05eb, B:430:0x05f1, B:435:0x0603, B:437:0x060c, B:440:0x061c, B:442:0x0620, B:443:0x0624), top: B:91:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x061c A[Catch: all -> 0x05c9, Exception -> 0x05cf, TRY_ENTER, TryCatch #9 {Exception -> 0x05cf, all -> 0x05c9, blocks: (B:92:0x0176, B:94:0x0191, B:96:0x0195, B:103:0x019a, B:105:0x019e, B:109:0x01a9, B:110:0x01ad, B:112:0x01b3, B:117:0x01ce, B:119:0x01d5, B:121:0x01d9, B:126:0x021e, B:128:0x0224, B:130:0x0243, B:131:0x0247, B:133:0x024d, B:143:0x027c, B:145:0x0280, B:147:0x029b, B:148:0x02a2, B:150:0x02a8, B:156:0x02c5, B:158:0x02c9, B:160:0x02d0, B:162:0x02d4, B:163:0x02d9, B:165:0x02dd, B:166:0x02e2, B:167:0x02e8, B:169:0x02ee, B:177:0x030e, B:179:0x031a, B:181:0x0327, B:183:0x032b, B:186:0x0336, B:188:0x0339, B:194:0x03e5, B:196:0x03e9, B:198:0x03ed, B:200:0x03f1, B:202:0x03f5, B:204:0x03f9, B:206:0x040b, B:208:0x040f, B:210:0x0413, B:212:0x03fd, B:214:0x0401, B:218:0x0423, B:220:0x042c, B:222:0x0430, B:223:0x0434, B:224:0x0438, B:226:0x044b, B:229:0x0455, B:230:0x0459, B:236:0x0463, B:237:0x0466, B:240:0x046e, B:242:0x0479, B:244:0x047d, B:246:0x0483, B:250:0x04a4, B:253:0x04ae, B:256:0x04b5, B:260:0x04bd, B:264:0x04c9, B:268:0x04cf, B:270:0x04d3, B:271:0x04d5, B:273:0x04dd, B:275:0x04e1, B:276:0x04e5, B:278:0x04f5, B:266:0x04ff, B:281:0x0502, B:283:0x0506, B:284:0x050f, B:287:0x0515, B:288:0x0522, B:292:0x0535, B:294:0x053c, B:296:0x0545, B:299:0x054d, B:300:0x0552, B:301:0x0559, B:303:0x055d, B:304:0x0562, B:305:0x0569, B:308:0x0571, B:310:0x057a, B:314:0x058e, B:315:0x0593, B:317:0x0598, B:318:0x05a3, B:319:0x05a8, B:320:0x05ad, B:322:0x033e, B:326:0x034d, B:328:0x0358, B:330:0x035c, B:333:0x0363, B:335:0x0366, B:338:0x036f, B:340:0x0377, B:342:0x0382, B:344:0x0386, B:347:0x038d, B:349:0x0390, B:351:0x0395, B:352:0x039b, B:354:0x03a3, B:356:0x03ae, B:358:0x03b2, B:361:0x03b9, B:363:0x03bc, B:365:0x03c1, B:367:0x03ca, B:369:0x03ce, B:374:0x0287, B:376:0x028b, B:377:0x0290, B:379:0x0294, B:385:0x022d, B:387:0x0231, B:388:0x0236, B:390:0x023a, B:394:0x01e7, B:396:0x01eb, B:397:0x01f6, B:399:0x01fa, B:400:0x0207, B:402:0x020e, B:427:0x05e3, B:428:0x05eb, B:430:0x05f1, B:435:0x0603, B:437:0x060c, B:440:0x061c, B:442:0x0620, B:443:0x0624), top: B:91:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011b A[Catch: all -> 0x0098, Exception -> 0x009d, TRY_ENTER, TryCatch #8 {Exception -> 0x009d, all -> 0x0098, blocks: (B:469:0x008b, B:471:0x008f, B:472:0x0093, B:33:0x00ad, B:35:0x00b6, B:39:0x00c5, B:42:0x00d0, B:44:0x00d9, B:46:0x00dd, B:51:0x00e9, B:53:0x00ef, B:55:0x00f3, B:56:0x00fa, B:58:0x0101, B:59:0x0109, B:66:0x011b, B:67:0x0121, B:69:0x0127, B:76:0x0140, B:465:0x00f6), top: B:468:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0140 A[Catch: all -> 0x0098, Exception -> 0x009d, TRY_ENTER, TRY_LEAVE, TryCatch #8 {Exception -> 0x009d, all -> 0x0098, blocks: (B:469:0x008b, B:471:0x008f, B:472:0x0093, B:33:0x00ad, B:35:0x00b6, B:39:0x00c5, B:42:0x00d0, B:44:0x00d9, B:46:0x00dd, B:51:0x00e9, B:53:0x00ef, B:55:0x00f3, B:56:0x00fa, B:58:0x0101, B:59:0x0109, B:66:0x011b, B:67:0x0121, B:69:0x0127, B:76:0x0140, B:465:0x00f6), top: B:468:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0176 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.alibaba.fastjson.c.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.alibaba.fastjson.c.p r36, java.lang.Object r37, java.lang.Object r38, java.lang.reflect.Type r39) {
        /*
            Method dump skipped, instructions count: 1643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.c.q.a(com.alibaba.fastjson.c.p, java.lang.Object, java.lang.Object, java.lang.reflect.Type):void");
    }

    public q(Class<?> cls, int i2, Map<String, String> map, boolean z, boolean z2, boolean z3, boolean z4, com.alibaba.fastjson.h hVar) {
        com.alibaba.fastjson.h hVar2;
        String str;
        String str2;
        com.alibaba.fastjson.h naming;
        this.f3270c = 0;
        JSONType jSONType = z2 ? (JSONType) cls.getAnnotation(JSONType.class) : null;
        if (jSONType != null) {
            this.f3270c = b.of(jSONType.serialzeFeatures());
            str = jSONType.typeName();
            if (str.length() == 0) {
                str = null;
                str2 = null;
            } else {
                String str3 = null;
                for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
                    JSONType jSONType2 = (JSONType) superclass.getAnnotation(JSONType.class);
                    if (jSONType2 == null) {
                        break;
                    }
                    str3 = jSONType2.typeKey();
                    if (str3.length() != 0) {
                        break;
                    }
                }
                str2 = str3;
                for (Class<?> cls2 : cls.getInterfaces()) {
                    JSONType jSONType3 = (JSONType) cls2.getAnnotation(JSONType.class);
                    if (jSONType3 != null) {
                        str2 = jSONType3.typeKey();
                        if (str2.length() != 0) {
                            break;
                        }
                    }
                }
                if (str2 != null && str2.length() == 0) {
                    str2 = null;
                }
            }
            hVar2 = (hVar != null || (naming = jSONType.naming()) == com.alibaba.fastjson.h.CamelCase) ? hVar : naming;
        } else {
            hVar2 = hVar;
            str = null;
            str2 = null;
        }
        this.f3271d = str;
        this.f3272e = str2;
        List<com.alibaba.fastjson.e.a> a2 = com.alibaba.fastjson.e.d.a(cls, i2, z, jSONType, map, false, z3, z4, hVar2);
        ArrayList arrayList = new ArrayList();
        Iterator<com.alibaba.fastjson.e.a> it = a2.iterator();
        while (it.hasNext()) {
            arrayList.add(new m(it.next()));
        }
        this.f3268a = (m[]) arrayList.toArray(new m[arrayList.size()]);
        String[] orders = jSONType != null ? jSONType.orders() : null;
        if (orders != null && orders.length != 0) {
            List<com.alibaba.fastjson.e.a> a3 = com.alibaba.fastjson.e.d.a(cls, i2, z, jSONType, map, true, z3, z4, hVar2);
            ArrayList arrayList2 = new ArrayList();
            Iterator<com.alibaba.fastjson.e.a> it2 = a3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new m(it2.next()));
            }
            this.f3269b = (m[]) arrayList2.toArray(new m[arrayList2.size()]);
            return;
        }
        m[] mVarArr = this.f3268a;
        m[] mVarArr2 = new m[mVarArr.length];
        System.arraycopy(mVarArr, 0, mVarArr2, 0, mVarArr.length);
        Arrays.sort(mVarArr2);
        if (Arrays.equals(mVarArr2, this.f3268a)) {
            this.f3269b = this.f3268a;
        } else {
            this.f3269b = mVarArr2;
        }
    }

    public Map<String, Object> a(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.f3269b.length);
        for (m mVar : this.f3269b) {
            linkedHashMap.put(mVar.f3245e.f3280e, mVar.a(obj));
        }
        return linkedHashMap;
    }
}
