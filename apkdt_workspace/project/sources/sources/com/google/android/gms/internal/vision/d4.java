package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class d4 {

    /* renamed from: b, reason: collision with root package name */
    private static volatile d4 f12321b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile d4 f12322c;

    /* renamed from: d, reason: collision with root package name */
    private static final d4 f12323d = new d4(true);

    /* renamed from: a, reason: collision with root package name */
    private final Map<a, s4.f<?, ?>> f12324a;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final Object f12325a;

        /* renamed from: b, reason: collision with root package name */
        private final int f12326b;

        a(Object obj, int i2) {
            this.f12325a = obj;
            this.f12326b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f12325a == aVar.f12325a && this.f12326b == aVar.f12326b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f12325a) * 65535) + this.f12326b;
        }
    }

    d4() {
        this.f12324a = new HashMap();
    }

    public static d4 a() {
        d4 d4Var = f12321b;
        if (d4Var == null) {
            synchronized (d4.class) {
                d4Var = f12321b;
                if (d4Var == null) {
                    d4Var = f12323d;
                    f12321b = d4Var;
                }
            }
        }
        return d4Var;
    }

    public static d4 b() {
        d4 d4Var = f12322c;
        if (d4Var == null) {
            synchronized (d4.class) {
                d4Var = f12322c;
                if (d4Var == null) {
                    d4Var = r4.a(d4.class);
                    f12322c = d4Var;
                }
            }
        }
        return d4Var;
    }

    private d4(boolean z) {
        this.f12324a = Collections.emptyMap();
    }

    public final <ContainingType extends d6> s4.f<ContainingType, ?> a(ContainingType containingtype, int i2) {
        return (s4.f) this.f12324a.get(new a(containingtype, i2));
    }
}
