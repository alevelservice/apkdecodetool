package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class o3 {

    /* renamed from: b, reason: collision with root package name */
    private static volatile o3 f12011b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile o3 f12012c;

    /* renamed from: d, reason: collision with root package name */
    static final o3 f12013d;

    /* renamed from: a, reason: collision with root package name */
    private final Map<a, b4.e<?, ?>> f12014a;

    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final Object f12015a;

        /* renamed from: b, reason: collision with root package name */
        private final int f12016b;

        a(Object obj, int i2) {
            this.f12015a = obj;
            this.f12016b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f12015a == aVar.f12015a && this.f12016b == aVar.f12016b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f12015a) * 65535) + this.f12016b;
        }
    }

    static {
        b();
        f12013d = new o3(true);
    }

    o3() {
        this.f12014a = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o3 a() {
        return a4.a(o3.class);
    }

    private static Class<?> b() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static o3 c() {
        o3 o3Var = f12011b;
        if (o3Var == null) {
            synchronized (o3.class) {
                o3Var = f12011b;
                if (o3Var == null) {
                    o3Var = m3.b();
                    f12011b = o3Var;
                }
            }
        }
        return o3Var;
    }

    public static o3 d() {
        o3 o3Var = f12012c;
        if (o3Var == null) {
            synchronized (o3.class) {
                o3Var = f12012c;
                if (o3Var == null) {
                    o3Var = m3.c();
                    f12012c = o3Var;
                }
            }
        }
        return o3Var;
    }

    public final <ContainingType extends k5> b4.e<ContainingType, ?> a(ContainingType containingtype, int i2) {
        return (b4.e) this.f12014a.get(new a(containingtype, i2));
    }

    private o3(boolean z) {
        this.f12014a = Collections.emptyMap();
    }
}
