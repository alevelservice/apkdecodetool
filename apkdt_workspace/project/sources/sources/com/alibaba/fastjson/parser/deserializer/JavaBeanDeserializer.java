package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.paho.android.service.MqttServiceConstants;

/* loaded from: classes.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    private final ParserConfig.AutoTypeCheckHandler autoTypeCheckHandler;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private Map<String, FieldDeserializer> fieldDeserializerMap;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    protected final FieldDeserializer[] sortedFieldDeserializers;

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean, parserConfig.isJacksonCompatible()));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[LOOP:2: B:27:0x007c->B:28:0x007e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig r10, com.alibaba.fastjson.util.JavaBeanInfo r11) {
        /*
            r9 = this;
            r9.<init>()
            java.lang.Class<?> r0 = r11.clazz
            r9.clazz = r0
            r9.beanInfo = r11
            com.alibaba.fastjson.annotation.JSONType r0 = r11.jsonType
            r1 = 0
            if (r0 == 0) goto L25
            com.alibaba.fastjson.annotation.JSONType r0 = r11.jsonType
            java.lang.Class r0 = r0.autoTypeCheckHandler()
            java.lang.Class<com.alibaba.fastjson.parser.ParserConfig$AutoTypeCheckHandler> r2 = com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler.class
            if (r0 == r2) goto L25
            com.alibaba.fastjson.annotation.JSONType r0 = r11.jsonType     // Catch: java.lang.Exception -> L25
            java.lang.Class r0 = r0.autoTypeCheckHandler()     // Catch: java.lang.Exception -> L25
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Exception -> L25
            com.alibaba.fastjson.parser.ParserConfig$AutoTypeCheckHandler r0 = (com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler) r0     // Catch: java.lang.Exception -> L25
            goto L26
        L25:
            r0 = r1
        L26:
            r9.autoTypeCheckHandler = r0
            com.alibaba.fastjson.util.FieldInfo[] r0 = r11.sortedFields
            int r0 = r0.length
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r0 = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[r0]
            r9.sortedFieldDeserializers = r0
            com.alibaba.fastjson.util.FieldInfo[] r0 = r11.sortedFields
            int r0 = r0.length
            r2 = 0
            r3 = 0
        L34:
            if (r3 >= r0) goto L70
            com.alibaba.fastjson.util.FieldInfo[] r4 = r11.sortedFields
            r4 = r4[r3]
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r5 = r10.createFieldDeserializer(r10, r11, r4)
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r6 = r9.sortedFieldDeserializers
            r6[r3] = r5
            r6 = 128(0x80, float:1.8E-43)
            if (r0 <= r6) goto L58
            java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> r6 = r9.fieldDeserializerMap
            if (r6 != 0) goto L51
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r9.fieldDeserializerMap = r6
        L51:
            java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> r6 = r9.fieldDeserializerMap
            java.lang.String r7 = r4.name
            r6.put(r7, r5)
        L58:
            java.lang.String[] r4 = r4.alternateNames
            int r6 = r4.length
            r7 = 0
        L5c:
            if (r7 >= r6) goto L6d
            r8 = r4[r7]
            if (r1 != 0) goto L67
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
        L67:
            r1.put(r8, r5)
            int r7 = r7 + 1
            goto L5c
        L6d:
            int r3 = r3 + 1
            goto L34
        L70:
            r9.alterNameFieldDeserializers = r1
            com.alibaba.fastjson.util.FieldInfo[] r10 = r11.fields
            int r10 = r10.length
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r10 = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[r10]
            r9.fieldDeserializers = r10
            com.alibaba.fastjson.util.FieldInfo[] r10 = r11.fields
            int r10 = r10.length
        L7c:
            if (r2 >= r10) goto L8f
            com.alibaba.fastjson.util.FieldInfo[] r0 = r11.fields
            r0 = r0[r2]
            java.lang.String r0 = r0.name
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r0 = r9.getFieldDeserializer(r0)
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r1 = r9.fieldDeserializers
            r1[r2] = r0
            int r2 = r2 + 1
            goto L7c
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.<init>(com.alibaba.fastjson.parser.ParserConfig, com.alibaba.fastjson.util.JavaBeanInfo):void");
    }

    public FieldDeserializer getFieldDeserializer(String str) {
        return getFieldDeserializer(str, null);
    }

    public FieldDeserializer getFieldDeserializer(String str, int[] iArr) {
        FieldDeserializer fieldDeserializer;
        if (str == null) {
            return null;
        }
        Map<String, FieldDeserializer> map = this.fieldDeserializerMap;
        if (map != null && (fieldDeserializer = map.get(str)) != null) {
            return fieldDeserializer;
        }
        int length = this.sortedFieldDeserializers.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else {
                if (compareTo <= 0) {
                    if (isSetFlag(i2, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i2];
                }
                length = i2 - 1;
            }
        }
        Map<String, FieldDeserializer> map2 = this.alterNameFieldDeserializers;
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }

    public FieldDeserializer getFieldDeserializer(long j) {
        int i = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i2 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i2 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i2] = TypeUtils.fnv1a_64(fieldDeserializerArr[i2].fieldInfo.name);
                i2++;
            }
            Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int binarySearch = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            while (true) {
                FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i >= fieldDeserializerArr2.length) {
                    break;
                }
                int binarySearch2 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(fieldDeserializerArr2[i].fieldInfo.name));
                if (binarySearch2 >= 0) {
                    sArr[binarySearch2] = (short) i;
                }
                i++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch];
        if (s != -1) {
            return this.sortedFieldDeserializers[s];
        }
        return null;
    }

    static boolean isSetFlag(int i, int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int i2 = i / 32;
        int i3 = i % 32;
        if (i2 < iArr.length) {
            if (((1 << i3) & iArr[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object newInstance;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
        Object obj = null;
        if (this.beanInfo.defaultConstructor == null && this.beanInfo.factoryMethod == null) {
            return null;
        }
        if (this.beanInfo.factoryMethod != null && this.beanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            Constructor<?> constructor = this.beanInfo.defaultConstructor;
            if (this.beanInfo.defaultConstructorParameterSize != 0) {
                ParseContext context = defaultJSONParser.getContext();
                if (context == null || context.object == null) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                if (type instanceof Class) {
                    String name = ((Class) type).getName();
                    String substring = name.substring(0, name.lastIndexOf(36));
                    Object obj2 = context.object;
                    String name2 = obj2.getClass().getName();
                    if (!name2.equals(substring)) {
                        ParseContext parseContext = context.parent;
                        if (parseContext == null || parseContext.object == null || !("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2))) {
                            obj = obj2;
                        } else if (parseContext.object.getClass().getName().equals(substring)) {
                            obj = parseContext.object;
                        }
                        obj2 = obj;
                    }
                    if (obj2 == null || ((obj2 instanceof Collection) && ((Collection) obj2).isEmpty())) {
                        throw new JSONException("can't create non-static inner class instance.");
                    }
                    newInstance = constructor.newInstance(obj2);
                } else {
                    throw new JSONException("can't create non-static inner class instance.");
                }
            } else if (constructor != null) {
                newInstance = constructor.newInstance(new Object[0]);
            } else {
                newInstance = this.beanInfo.factoryMethod.invoke(null, new Object[0]);
            }
            if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                for (FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == String.class) {
                        try {
                            fieldInfo.set(newInstance, "");
                        } catch (Exception e) {
                            throw new JSONException("create instance error, class " + this.clazz.getName(), e);
                        }
                    }
                }
            }
            return newInstance;
        } catch (JSONException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new JSONException("create instance error, class " + this.clazz.getName(), e3);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, int i) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        Enum<?> scanEnum;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new JSONException(MqttServiceConstants.TRACE_ERROR);
        }
        String scanTypeName = jSONLexer.scanTypeName(defaultJSONParser.symbolTable);
        if (scanTypeName != null) {
            ObjectDeserializer seeAlso = getSeeAlso(defaultJSONParser.getConfig(), this.beanInfo, scanTypeName);
            if (seeAlso == null) {
                seeAlso = defaultJSONParser.getConfig().getDeserializer(defaultJSONParser.getConfig().checkAutoType(scanTypeName, TypeUtils.getClass(type), jSONLexer.getFeatures()));
            }
            if (seeAlso instanceof JavaBeanDeserializer) {
                return (T) ((JavaBeanDeserializer) seeAlso).deserialzeArrayMapping(defaultJSONParser, type, obj, obj2);
            }
        }
        T t = (T) createInstance(defaultJSONParser, type);
        int length = this.sortedFieldDeserializers.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char c = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == Integer.TYPE) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanInt(c));
            } else if (cls == String.class) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanString(c));
            } else if (cls == Long.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanLong(c));
            } else if (cls.isEnum()) {
                char current = jSONLexer.getCurrent();
                if (current == '\"' || current == 'n') {
                    scanEnum = jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c);
                } else if (current >= '0' && current <= '9') {
                    scanEnum = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c));
                } else {
                    scanEnum = scanEnum(jSONLexer, c);
                }
                fieldDeserializer.setValue(t, scanEnum);
            } else if (cls == Boolean.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanBoolean(c));
            } else if (cls == Float.TYPE) {
                fieldDeserializer.setValue(t, Float.valueOf(jSONLexer.scanFloat(c)));
            } else if (cls == Double.TYPE) {
                fieldDeserializer.setValue(t, Double.valueOf(jSONLexer.scanDouble(c)));
            } else if (cls == Date.class && jSONLexer.getCurrent() == '1') {
                fieldDeserializer.setValue(t, new Date(jSONLexer.scanLong(c)));
            } else if (cls == BigDecimal.class) {
                fieldDeserializer.setValue(t, jSONLexer.scanDecimal(c));
            } else {
                jSONLexer.nextToken(14);
                fieldDeserializer.setValue(t, defaultJSONParser.parseObject(fieldDeserializer.fieldInfo.fieldType, fieldDeserializer.fieldInfo.name));
                if (jSONLexer.token() == 15) {
                    break;
                }
                check(jSONLexer, c == ']' ? 15 : 16);
            }
            i++;
        }
        jSONLexer.nextToken(16);
        return t;
    }

    protected void check(JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new JSONException("syntax error");
        }
    }

    protected Enum<?> scanEnum(JSONLexer jSONLexer, char c) {
        throw new JSONException("illegal enum. " + jSONLexer.info());
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    protected <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r32, java.lang.reflect.Type r33, java.lang.Object r34, java.lang.Object r35, int r36, int[] r37) {
        /*
            Method dump skipped, instructions count: 2544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    protected Enum scanEnum(JSONLexerBase jSONLexerBase, char[] cArr, ObjectDeserializer objectDeserializer) {
        EnumDeserializer enumDeserializer = objectDeserializer instanceof EnumDeserializer ? (EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long scanEnumSymbol = jSONLexerBase.scanEnumSymbol(cArr);
        if (jSONLexerBase.matchStat <= 0) {
            return null;
        }
        Enum enumByHashCode = enumDeserializer.getEnumByHashCode(scanEnumSymbol);
        if (enumByHashCode == null) {
            if (scanEnumSymbol == -3750763034362895579L) {
                return null;
            }
            if (jSONLexerBase.isEnabled(Feature.ErrorOnEnumNotMatch)) {
                throw new JSONException("not match enum value, " + enumDeserializer.enumClass);
            }
        }
        return enumByHashCode;
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0125  */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser r22, java.lang.String r23, java.lang.Object r24, java.lang.reflect.Type r25, java.util.Map<java.lang.String, java.lang.Object> r26, int[] r27) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.parseField(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.String, java.lang.Object, java.lang.reflect.Type, java.util.Map, int[]):boolean");
    }

    public FieldDeserializer smartMatch(String str) {
        return smartMatch(str, null);
    }

    public FieldDeserializer smartMatch(String str, int[] iArr) {
        boolean z;
        if (str == null) {
            return null;
        }
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            int i = 0;
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i2 = 0;
                while (true) {
                    FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i2 >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i2] = fieldDeserializerArr[i2].fieldInfo.nameHashCode;
                    i2++;
                }
                Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(str));
            if (binarySearch < 0) {
                binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_extract(str));
            }
            if (binarySearch < 0) {
                z = str.startsWith("is");
                if (z) {
                    binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_extract(str.substring(2)));
                }
            } else {
                z = false;
            }
            if (binarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    short[] sArr = new short[this.smartMatchHashArray.length];
                    Arrays.fill(sArr, (short) -1);
                    while (true) {
                        FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int binarySearch2 = Arrays.binarySearch(this.smartMatchHashArray, fieldDeserializerArr2[i].fieldInfo.nameHashCode);
                        if (binarySearch2 >= 0) {
                            sArr[binarySearch2] = (short) i;
                        }
                        i++;
                    }
                    this.smartMatchHashArrayMapping = sArr;
                }
                short s = this.smartMatchHashArrayMapping[binarySearch];
                if (s != -1 && !isSetFlag(s, iArr)) {
                    fieldDeserializer = this.sortedFieldDeserializers[s];
                }
            }
            if (fieldDeserializer != null) {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                if ((fieldInfo.parserFeatures & Feature.DisableFieldSmartMatch.mask) != 0) {
                    return null;
                }
                Class<?> cls = fieldInfo.fieldClass;
                if (z && cls != Boolean.TYPE && cls != Boolean.class) {
                    return null;
                }
            }
        }
        return fieldDeserializer;
    }

    private Object createFactoryInstance(ParserConfig parserConfig, Object obj) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return this.beanInfo.factoryMethod.invoke(null, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x00b4, code lost:
    
        r7.setLong(r0, ((java.lang.Number) r4).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x009f, code lost:
    
        if ((r4 instanceof java.lang.Number) == false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00a1, code lost:
    
        r7.setInt(r0, ((java.lang.Number) r4).intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x008b, code lost:
    
        if (r4 != java.lang.Boolean.FALSE) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0093, code lost:
    
        if (r4 != java.lang.Boolean.TRUE) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0095, code lost:
    
        r7.setBoolean(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x008d, code lost:
    
        r7.setBoolean(r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x006b, code lost:
    
        if (com.alibaba.fastjson.JSONValidator.from(r6).validate() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007f, code lost:
    
        if (r6.method != null) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
    
        r9 = r7.getType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0087, code lost:
    
        if (r9 != java.lang.Boolean.TYPE) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009b, code lost:
    
        if (r9 != java.lang.Integer.TYPE) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ae, code lost:
    
        if (r9 != java.lang.Long.TYPE) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c3, code lost:
    
        if (r9 != java.lang.Float.TYPE) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f0, code lost:
    
        if (r9 != java.lang.Double.TYPE) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011b, code lost:
    
        if (r4 == null) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0121, code lost:
    
        if (r8 != r4.getClass()) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0123, code lost:
    
        r7.set(r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f4, code lost:
    
        if ((r4 instanceof java.lang.Number) == false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f6, code lost:
    
        r7.setDouble(r0, ((java.lang.Number) r4).doubleValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0103, code lost:
    
        if ((r4 instanceof java.lang.String) == false) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0105, code lost:
    
        r4 = (java.lang.String) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x010b, code lost:
    
        if (r4.length() > 10) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010d, code lost:
    
        r4 = com.alibaba.fastjson.util.TypeUtils.parseDouble(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0116, code lost:
    
        r7.setDouble(r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0112, code lost:
    
        r4 = java.lang.Double.parseDouble(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00c7, code lost:
    
        if ((r4 instanceof java.lang.Number) == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00c9, code lost:
    
        r7.setFloat(r0, ((java.lang.Number) r4).floatValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00d6, code lost:
    
        if ((r4 instanceof java.lang.String) == false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00d8, code lost:
    
        r4 = (java.lang.String) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00de, code lost:
    
        if (r4.length() > 10) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00e0, code lost:
    
        r4 = com.alibaba.fastjson.util.TypeUtils.parseFloat(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00e9, code lost:
    
        r7.setFloat(r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00e5, code lost:
    
        r4 = java.lang.Float.parseFloat(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00b2, code lost:
    
        if ((r4 instanceof java.lang.Number) == false) goto L225;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object createInstance(java.util.Map<java.lang.String, java.lang.Object> r13, com.alibaba.fastjson.parser.ParserConfig r14) throws java.lang.IllegalArgumentException, java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.createInstance(java.util.Map, com.alibaba.fastjson.parser.ParserConfig):java.lang.Object");
    }

    public Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    protected Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    protected Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    protected static JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        if (javaBeanInfo.jsonType == null) {
            return null;
        }
        for (Class<?> cls : javaBeanInfo.jsonType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    protected static void parseArray(Collection collection, ObjectDeserializer objectDeserializer, DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            }
            if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() == ',') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        } else {
            jSONLexerBase.nextToken(16);
        }
    }
}
