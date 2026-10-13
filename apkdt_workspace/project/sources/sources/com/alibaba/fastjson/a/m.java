package com.alibaba.fastjson.a;

import java.lang.reflect.Type;

/* compiled from: ParseContext.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public Object f3198a;

    /* renamed from: b, reason: collision with root package name */
    public final m f3199b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3200c;

    /* renamed from: d, reason: collision with root package name */
    public Type f3201d;

    /* renamed from: e, reason: collision with root package name */
    private transient String f3202e;

    public m(m mVar, Object obj, Object obj2) {
        this.f3199b = mVar;
        this.f3198a = obj;
        this.f3200c = obj2;
    }

    public String toString() {
        if (this.f3202e == null) {
            if (this.f3199b == null) {
                this.f3202e = "$";
            } else if (this.f3200c instanceof Integer) {
                this.f3202e = this.f3199b.toString() + "[" + this.f3200c + "]";
            } else {
                this.f3202e = this.f3199b.toString() + "." + this.f3200c;
            }
        }
        return this.f3202e;
    }
}
