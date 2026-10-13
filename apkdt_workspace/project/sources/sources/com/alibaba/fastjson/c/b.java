package com.alibaba.fastjson.c;

/* compiled from: SerializerFeature.java */
/* loaded from: classes.dex */
public enum b {
    QuoteFieldNames,
    UseSingleQuotes,
    WriteMapNullValue,
    WriteEnumUsingToString,
    UseISO8601DateFormat,
    WriteNullListAsEmpty,
    WriteNullStringAsEmpty,
    WriteNullNumberAsZero,
    WriteNullBooleanAsFalse,
    SkipTransientField,
    SortField,
    WriteTabAsSpecial,
    PrettyFormat,
    WriteClassName,
    DisableCircularReferenceDetect,
    WriteSlashAsSpecial,
    WriteDateUseDateFormat,
    NotWriteRootClassName,
    DisableCheckSpecialChar,
    BeanToArray,
    WriteNonStringKeyAsString,
    NotWriteDefaultValue;

    public static final b[] EMPTY = new b[0];
    public final int mask = 1 << ordinal();

    b() {
    }

    public static int of(b[] bVarArr) {
        if (bVarArr == null) {
            return 0;
        }
        int i2 = 0;
        for (b bVar : bVarArr) {
            i2 |= bVar.mask;
        }
        return i2;
    }
}
