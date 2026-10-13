package com.alibaba.fastjson;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PropertyNamingStrategy.java */
/* loaded from: classes.dex */
public /* synthetic */ class i {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f3309a = new int[h.values().length];

    static {
        try {
            f3309a[h.SnakeCase.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f3309a[h.KebabCase.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f3309a[h.PascalCase.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f3309a[h.CamelCase.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
