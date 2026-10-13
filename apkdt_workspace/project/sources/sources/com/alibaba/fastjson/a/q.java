package com.alibaba.fastjson.a;

/* compiled from: ThrowableDeserializer.java */
/* loaded from: classes.dex */
public class q extends h {
    public q(n nVar, Class<?> cls) {
        super(nVar, cls, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r2) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cf, code lost:
    
        if (r7 != null) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d1, code lost:
    
        r3 = (T) new java.lang.Exception(r11, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0161, code lost:
    
        if (r12 == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0163, code lost:
    
        ((java.lang.Throwable) r3).setStackTrace(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0166, code lost:
    
        if (r2 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0168, code lost:
    
        if (r7 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x016c, code lost:
    
        if (r7 != r17.f3176d) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x016e, code lost:
    
        r0 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x017e, code lost:
    
        if (r0 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0180, code lost:
    
        r2 = r2.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x018c, code lost:
    
        if (r2.hasNext() == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x018e, code lost:
    
        r4 = (java.util.Map.Entry) r2.next();
        r5 = (java.lang.String) r4.getKey();
        r4 = r4.getValue();
        r5 = r0.a(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01a2, code lost:
    
        if (r5 == null) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a4, code lost:
    
        r5.a(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0170, code lost:
    
        r0 = r18.f3145f.a((java.lang.reflect.Type) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0178, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.a.h) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x017a, code lost:
    
        r0 = (com.alibaba.fastjson.a.h) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017d, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01a8, code lost:
    
        return (T) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d8, code lost:
    
        r3 = r7.getConstructors();
        r5 = r3.length;
        r9 = null;
        r10 = null;
        r13 = null;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e2, code lost:
    
        if (r8 >= r5) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e4, code lost:
    
        r15 = r3[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00eb, code lost:
    
        if (r15.getParameterTypes().length != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ed, code lost:
    
        r13 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0123, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f4, code lost:
    
        if (r15.getParameterTypes().length != 1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0100, code lost:
    
        if (r15.getParameterTypes()[0] != java.lang.String.class) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0102, code lost:
    
        r10 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010a, code lost:
    
        if (r15.getParameterTypes().length != 2) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0115, code lost:
    
        if (r15.getParameterTypes()[0] != java.lang.String.class) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0120, code lost:
    
        if (r15.getParameterTypes()[1] != java.lang.Throwable.class) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0122, code lost:
    
        r9 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0127, code lost:
    
        if (r9 == null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0129, code lost:
    
        r6 = (java.lang.Throwable) r9.newInstance(r11, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0158, code lost:
    
        if (r6 != null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x015a, code lost:
    
        r3 = (T) new java.lang.Exception(r11, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0160, code lost:
    
        r3 = (T) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x013a, code lost:
    
        if (r10 == null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x013c, code lost:
    
        r6 = (java.lang.Throwable) r10.newInstance(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x014a, code lost:
    
        if (r13 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x014c, code lost:
    
        r6 = (java.lang.Throwable) r13.newInstance(new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0157, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b1, code lost:
    
        throw new com.alibaba.fastjson.f("create instance error", r0);
     */
    @Override // com.alibaba.fastjson.a.h, com.alibaba.fastjson.a.a.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T a(com.alibaba.fastjson.a.c r18, java.lang.reflect.Type r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.q.a(com.alibaba.fastjson.a.c, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }
}
