package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    protected final SerializeBeanInfo beanInfo;
    protected final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    protected final FieldSerializer[] sortedGetters;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    static Map<String, String> createAliasMap(String... strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            hashMap.put(str, str);
        }
        return hashMap;
    }

    public JSONType getJSONType() {
        return this.beanInfo.jsonType;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        boolean z;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        while (true) {
            FieldSerializer[] fieldSerializerArr = this.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i]);
            i++;
        }
        if (serializeBeanInfo.fields == serializeBeanInfo.sortedFields) {
            this.getters = this.sortedGetters;
        } else {
            this.getters = new FieldSerializer[serializeBeanInfo.fields.length];
            int i2 = 0;
            while (true) {
                if (i2 >= this.getters.length) {
                    z = false;
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i2].name);
                if (fieldSerializer == null) {
                    z = true;
                    break;
                } else {
                    this.getters[i2] = fieldSerializer;
                    i2++;
                }
            }
            if (z) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
            }
        }
        if (serializeBeanInfo.jsonType != null) {
            for (Class<? extends SerializeFilter> cls : serializeBeanInfo.jsonType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                }
            }
        }
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0494, code lost:
    
        if (r5 == false) goto L339;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0107, code lost:
    
        if (r13.fieldTransient != false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0467 A[Catch: Exception -> 0x049f, all -> 0x04fe, TryCatch #7 {Exception -> 0x049f, blocks: (B:126:0x01a0, B:129:0x01a8, B:131:0x01b4, B:133:0x01c3, B:135:0x01cd, B:138:0x01d7, B:140:0x01e2, B:142:0x01e6, B:146:0x01ed, B:148:0x01f1, B:149:0x01f7, B:151:0x01fc, B:153:0x0203, B:156:0x020d, B:158:0x0218, B:160:0x021c, B:163:0x0223, B:166:0x022a, B:168:0x022f, B:171:0x0237, B:173:0x023f, B:175:0x024a, B:177:0x024e, B:180:0x0255, B:182:0x0259, B:183:0x025e, B:185:0x0263, B:187:0x026a, B:188:0x026f, B:190:0x0277, B:192:0x0282, B:194:0x0286, B:197:0x028d, B:199:0x0291, B:200:0x0296, B:202:0x029b, B:204:0x02a2, B:206:0x02a9, B:208:0x02ad, B:210:0x02b7, B:214:0x02c2, B:216:0x02c6, B:218:0x02cf, B:220:0x02da, B:222:0x02e0, B:224:0x02e4, B:227:0x02ef, B:229:0x02f3, B:231:0x02f7, B:234:0x0302, B:236:0x0306, B:238:0x030a, B:241:0x0315, B:243:0x0319, B:245:0x031d, B:248:0x032b, B:250:0x032f, B:252:0x0333, B:255:0x0340, B:257:0x0344, B:259:0x0348, B:262:0x0356, B:264:0x035a, B:266:0x035e, B:270:0x036a, B:272:0x036e, B:274:0x0372, B:276:0x037f, B:278:0x038a, B:282:0x0393, B:283:0x0399, B:285:0x0463, B:287:0x0467, B:289:0x046b, B:295:0x0475, B:297:0x047d, B:298:0x0485, B:300:0x048b, B:313:0x03a6, B:314:0x03a9, B:316:0x03af, B:318:0x03bb, B:322:0x03d0, B:327:0x03da, B:329:0x03ec, B:332:0x03f6, B:335:0x0400, B:337:0x0408, B:338:0x0415, B:340:0x041e, B:342:0x0425, B:343:0x0429, B:345:0x0430, B:346:0x0434, B:347:0x0438, B:349:0x043d, B:350:0x0441, B:351:0x0445, B:353:0x0449, B:355:0x044d, B:359:0x045c, B:360:0x0460, B:361:0x03e4), top: B:125:0x01a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0475 A[Catch: Exception -> 0x049f, all -> 0x04fe, TryCatch #7 {Exception -> 0x049f, blocks: (B:126:0x01a0, B:129:0x01a8, B:131:0x01b4, B:133:0x01c3, B:135:0x01cd, B:138:0x01d7, B:140:0x01e2, B:142:0x01e6, B:146:0x01ed, B:148:0x01f1, B:149:0x01f7, B:151:0x01fc, B:153:0x0203, B:156:0x020d, B:158:0x0218, B:160:0x021c, B:163:0x0223, B:166:0x022a, B:168:0x022f, B:171:0x0237, B:173:0x023f, B:175:0x024a, B:177:0x024e, B:180:0x0255, B:182:0x0259, B:183:0x025e, B:185:0x0263, B:187:0x026a, B:188:0x026f, B:190:0x0277, B:192:0x0282, B:194:0x0286, B:197:0x028d, B:199:0x0291, B:200:0x0296, B:202:0x029b, B:204:0x02a2, B:206:0x02a9, B:208:0x02ad, B:210:0x02b7, B:214:0x02c2, B:216:0x02c6, B:218:0x02cf, B:220:0x02da, B:222:0x02e0, B:224:0x02e4, B:227:0x02ef, B:229:0x02f3, B:231:0x02f7, B:234:0x0302, B:236:0x0306, B:238:0x030a, B:241:0x0315, B:243:0x0319, B:245:0x031d, B:248:0x032b, B:250:0x032f, B:252:0x0333, B:255:0x0340, B:257:0x0344, B:259:0x0348, B:262:0x0356, B:264:0x035a, B:266:0x035e, B:270:0x036a, B:272:0x036e, B:274:0x0372, B:276:0x037f, B:278:0x038a, B:282:0x0393, B:283:0x0399, B:285:0x0463, B:287:0x0467, B:289:0x046b, B:295:0x0475, B:297:0x047d, B:298:0x0485, B:300:0x048b, B:313:0x03a6, B:314:0x03a9, B:316:0x03af, B:318:0x03bb, B:322:0x03d0, B:327:0x03da, B:329:0x03ec, B:332:0x03f6, B:335:0x0400, B:337:0x0408, B:338:0x0415, B:340:0x041e, B:342:0x0425, B:343:0x0429, B:345:0x0430, B:346:0x0434, B:347:0x0438, B:349:0x043d, B:350:0x0441, B:351:0x0445, B:353:0x0449, B:355:0x044d, B:359:0x045c, B:360:0x0460, B:361:0x03e4), top: B:125:0x01a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x03ec A[Catch: Exception -> 0x049f, all -> 0x04fe, TryCatch #7 {Exception -> 0x049f, blocks: (B:126:0x01a0, B:129:0x01a8, B:131:0x01b4, B:133:0x01c3, B:135:0x01cd, B:138:0x01d7, B:140:0x01e2, B:142:0x01e6, B:146:0x01ed, B:148:0x01f1, B:149:0x01f7, B:151:0x01fc, B:153:0x0203, B:156:0x020d, B:158:0x0218, B:160:0x021c, B:163:0x0223, B:166:0x022a, B:168:0x022f, B:171:0x0237, B:173:0x023f, B:175:0x024a, B:177:0x024e, B:180:0x0255, B:182:0x0259, B:183:0x025e, B:185:0x0263, B:187:0x026a, B:188:0x026f, B:190:0x0277, B:192:0x0282, B:194:0x0286, B:197:0x028d, B:199:0x0291, B:200:0x0296, B:202:0x029b, B:204:0x02a2, B:206:0x02a9, B:208:0x02ad, B:210:0x02b7, B:214:0x02c2, B:216:0x02c6, B:218:0x02cf, B:220:0x02da, B:222:0x02e0, B:224:0x02e4, B:227:0x02ef, B:229:0x02f3, B:231:0x02f7, B:234:0x0302, B:236:0x0306, B:238:0x030a, B:241:0x0315, B:243:0x0319, B:245:0x031d, B:248:0x032b, B:250:0x032f, B:252:0x0333, B:255:0x0340, B:257:0x0344, B:259:0x0348, B:262:0x0356, B:264:0x035a, B:266:0x035e, B:270:0x036a, B:272:0x036e, B:274:0x0372, B:276:0x037f, B:278:0x038a, B:282:0x0393, B:283:0x0399, B:285:0x0463, B:287:0x0467, B:289:0x046b, B:295:0x0475, B:297:0x047d, B:298:0x0485, B:300:0x048b, B:313:0x03a6, B:314:0x03a9, B:316:0x03af, B:318:0x03bb, B:322:0x03d0, B:327:0x03da, B:329:0x03ec, B:332:0x03f6, B:335:0x0400, B:337:0x0408, B:338:0x0415, B:340:0x041e, B:342:0x0425, B:343:0x0429, B:345:0x0430, B:346:0x0434, B:347:0x0438, B:349:0x043d, B:350:0x0441, B:351:0x0445, B:353:0x0449, B:355:0x044d, B:359:0x045c, B:360:0x0460, B:361:0x03e4), top: B:125:0x01a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0460 A[Catch: Exception -> 0x049f, all -> 0x04fe, TryCatch #7 {Exception -> 0x049f, blocks: (B:126:0x01a0, B:129:0x01a8, B:131:0x01b4, B:133:0x01c3, B:135:0x01cd, B:138:0x01d7, B:140:0x01e2, B:142:0x01e6, B:146:0x01ed, B:148:0x01f1, B:149:0x01f7, B:151:0x01fc, B:153:0x0203, B:156:0x020d, B:158:0x0218, B:160:0x021c, B:163:0x0223, B:166:0x022a, B:168:0x022f, B:171:0x0237, B:173:0x023f, B:175:0x024a, B:177:0x024e, B:180:0x0255, B:182:0x0259, B:183:0x025e, B:185:0x0263, B:187:0x026a, B:188:0x026f, B:190:0x0277, B:192:0x0282, B:194:0x0286, B:197:0x028d, B:199:0x0291, B:200:0x0296, B:202:0x029b, B:204:0x02a2, B:206:0x02a9, B:208:0x02ad, B:210:0x02b7, B:214:0x02c2, B:216:0x02c6, B:218:0x02cf, B:220:0x02da, B:222:0x02e0, B:224:0x02e4, B:227:0x02ef, B:229:0x02f3, B:231:0x02f7, B:234:0x0302, B:236:0x0306, B:238:0x030a, B:241:0x0315, B:243:0x0319, B:245:0x031d, B:248:0x032b, B:250:0x032f, B:252:0x0333, B:255:0x0340, B:257:0x0344, B:259:0x0348, B:262:0x0356, B:264:0x035a, B:266:0x035e, B:270:0x036a, B:272:0x036e, B:274:0x0372, B:276:0x037f, B:278:0x038a, B:282:0x0393, B:283:0x0399, B:285:0x0463, B:287:0x0467, B:289:0x046b, B:295:0x0475, B:297:0x047d, B:298:0x0485, B:300:0x048b, B:313:0x03a6, B:314:0x03a9, B:316:0x03af, B:318:0x03bb, B:322:0x03d0, B:327:0x03da, B:329:0x03ec, B:332:0x03f6, B:335:0x0400, B:337:0x0408, B:338:0x0415, B:340:0x041e, B:342:0x0425, B:343:0x0429, B:345:0x0430, B:346:0x0434, B:347:0x0438, B:349:0x043d, B:350:0x0441, B:351:0x0445, B:353:0x0449, B:355:0x044d, B:359:0x045c, B:360:0x0460, B:361:0x03e4), top: B:125:0x01a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x050d A[Catch: all -> 0x04fe, Exception -> 0x0504, TRY_LEAVE, TryCatch #13 {Exception -> 0x0504, blocks: (B:417:0x04ef, B:419:0x04f7, B:411:0x050d), top: B:416:0x04ef }] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x04ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0559 A[Catch: all -> 0x05da, TRY_ENTER, TryCatch #12 {all -> 0x05da, blocks: (B:97:0x0537, B:72:0x0559, B:73:0x05a9, B:75:0x05af, B:76:0x05c7, B:78:0x05cb, B:81:0x05d4, B:82:0x05d9, B:90:0x056e, B:92:0x0572, B:94:0x0578, B:95:0x0593), top: B:96:0x0537 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x05af A[Catch: all -> 0x05da, TryCatch #12 {all -> 0x05da, blocks: (B:97:0x0537, B:72:0x0559, B:73:0x05a9, B:75:0x05af, B:76:0x05c7, B:78:0x05cb, B:81:0x05d4, B:82:0x05d9, B:90:0x056e, B:92:0x0572, B:94:0x0578, B:95:0x0593), top: B:96:0x0537 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x05cb A[Catch: all -> 0x05da, TryCatch #12 {all -> 0x05da, blocks: (B:97:0x0537, B:72:0x0559, B:73:0x05a9, B:75:0x05af, B:76:0x05c7, B:78:0x05cb, B:81:0x05d4, B:82:0x05d9, B:90:0x056e, B:92:0x0572, B:94:0x0578, B:95:0x0593), top: B:96:0x0537 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x05d2  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0537 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r35, java.lang.Object r36, java.lang.Object r37, java.lang.reflect.Type r38, int r39, boolean r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    protected void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String str2 = this.beanInfo.typeName;
        if (str2 == null) {
            Class<?> cls = obj.getClass();
            if (TypeUtils.isProxy(cls)) {
                cls = cls.getSuperclass();
            }
            str2 = cls.getName();
        }
        jSONSerializer.write(str2);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i) {
        SerialContext serialContext = jSONSerializer.context;
        int i2 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i2) != 0 || (i & i2) != 0 || jSONSerializer.references == null || !jSONSerializer.references.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    protected boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    protected boolean isWriteAsArray(JSONSerializer jSONSerializer, int i) {
        int i2 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (!z) {
                return null;
            }
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int length = this.sortedGetters.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else {
                if (compareTo <= 0) {
                    return this.sortedGetters[i2];
                }
                length = i2 - 1;
            }
        }
        return null;
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArr;
        int binarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArr = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArr.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i].fieldInfo.name;
                jArr[i2] = TypeUtils.fnv1a_64(str);
                i2++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArr) {
                    String translate = propertyNamingStrategy.translate(str);
                    if (!str.equals(translate)) {
                        jArr[i2] = TypeUtils.fnv1a_64(translate);
                        i2++;
                    }
                }
                i++;
            }
            Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArr = null;
        }
        int binarySearch2 = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArr == null) {
                propertyNamingStrategyArr = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int i3 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i3 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i3].fieldInfo.name;
                int binarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (binarySearch3 >= 0) {
                    sArr[binarySearch3] = (short) i3;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArr) {
                    String translate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(translate2) && (binarySearch = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(translate2))) >= 0) {
                        sArr[binarySearch] = (short) i3;
                    }
                }
                i3++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch2];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int i = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public Set<String> getFieldNames(Object obj) throws Exception {
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean isEnabled = SerializerFeature.isEnabled(fieldSerializer.features, SerializerFeature.SkipTransientField);
            FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!isEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                if (fieldSerializer.fieldInfo.unwrapped) {
                    Object json = JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof Map) {
                        linkedHashMap.putAll((Map) json);
                    } else {
                        linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    protected BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    protected Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    protected char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        if (jSONSerializer.beforeFilters != null) {
            Iterator<BeforeFilter> it = jSONSerializer.beforeFilters.iterator();
            while (it.hasNext()) {
                c = it.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        if (this.beforeFilters != null) {
            Iterator<BeforeFilter> it2 = this.beforeFilters.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    protected char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        if (jSONSerializer.afterFilters != null) {
            Iterator<AfterFilter> it = jSONSerializer.afterFilters.iterator();
            while (it.hasNext()) {
                c = it.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        if (this.afterFilters != null) {
            Iterator<AfterFilter> it2 = this.afterFilters.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    protected boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        if (jSONSerializer.labelFilters != null) {
            Iterator<LabelFilter> it = jSONSerializer.labelFilters.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(str)) {
                    return false;
                }
            }
        }
        if (this.labelFilters == null) {
            return true;
        }
        Iterator<LabelFilter> it2 = this.labelFilters.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(str)) {
                return false;
            }
        }
        return true;
    }
}
