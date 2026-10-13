package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.ParserConfig;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public class ThrowableDeserializer extends JavaBeanDeserializer {
    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public ThrowableDeserializer(ParserConfig parserConfig, Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r14) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ec, code lost:
    
        if (r14 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ee, code lost:
    
        r15 = (T) new java.lang.Exception(r5, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0107, code lost:
    
        if (r6 == null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0109, code lost:
    
        ((java.lang.Throwable) r15).setStackTrace(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010c, code lost:
    
        if (r0 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010e, code lost:
    
        if (r14 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0112, code lost:
    
        if (r14 != r12.clazz) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0114, code lost:
    
        r1 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0116, code lost:
    
        r14 = r13.getConfig().getDeserializer(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0120, code lost:
    
        if ((r14 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0122, code lost:
    
        r1 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0125, code lost:
    
        if (r1 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0127, code lost:
    
        r14 = r0.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0133, code lost:
    
        if (r14.hasNext() == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0135, code lost:
    
        r0 = (java.util.Map.Entry) r14.next();
        r2 = (java.lang.String) r0.getKey();
        r0 = r0.getValue();
        r2 = r1.getFieldDeserializer(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0149, code lost:
    
        if (r2 == null) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014b, code lost:
    
        r3 = r2.fieldInfo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0153, code lost:
    
        if (r3.fieldClass.isInstance(r0) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0155, code lost:
    
        r0 = com.alibaba.fastjson.util.TypeUtils.cast(r0, r3.fieldType, r13.getConfig());
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015f, code lost:
    
        r2.setValue(r15, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0163, code lost:
    
        return (T) r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00fa, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r14) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0184, code lost:
    
        throw new com.alibaba.fastjson.JSONException("type not match, not Throwable. " + r14.getName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00fc, code lost:
    
        r15 = (T) createException(r5, r3, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0100, code lost:
    
        if (r15 != null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0102, code lost:
    
        r15 = (T) new java.lang.Exception(r5, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0164, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x016c, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r13);
     */
    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r13, java.lang.reflect.Type r14, java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    private Throwable createException(String str, Throwable th, Class<?> cls) throws Exception {
        Constructor<?> constructor = null;
        Constructor<?> constructor2 = null;
        Constructor<?> constructor3 = null;
        for (Constructor<?> constructor4 : cls.getConstructors()) {
            Class<?>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (Throwable) constructor.newInstance(str, th);
        }
        if (constructor2 != null) {
            return (Throwable) constructor2.newInstance(str);
        }
        if (constructor3 != null) {
            return (Throwable) constructor3.newInstance(new Object[0]);
        }
        return null;
    }
}
