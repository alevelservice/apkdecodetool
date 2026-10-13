package com.alibaba.fastjson.c;

/* compiled from: SerialContext.java */
/* loaded from: classes.dex */
public class z {

    /* renamed from: a, reason: collision with root package name */
    public final z f3276a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3277b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3278c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3279d;

    public z(z zVar, Object obj, Object obj2, int i2) {
        this.f3276a = zVar;
        this.f3277b = obj;
        this.f3278c = obj2;
        this.f3279d = i2;
    }

    public String toString() {
        if (this.f3276a == null) {
            return "$";
        }
        if (this.f3278c instanceof Integer) {
            return this.f3276a.toString() + "[" + this.f3278c + "]";
        }
        return this.f3276a.toString() + "." + this.f3278c;
    }
}
