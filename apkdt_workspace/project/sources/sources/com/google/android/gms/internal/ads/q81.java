package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class q81 {

    /* renamed from: b, reason: collision with root package name */
    private static volatile q81 f8861b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile q81 f8862c;

    /* renamed from: d, reason: collision with root package name */
    private static final q81 f8863d;

    /* renamed from: a, reason: collision with root package name */
    private final Map<a, e91.e<?, ?>> f8864a;

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final Object f8865a;

        /* renamed from: b, reason: collision with root package name */
        private final int f8866b;

        a(Object obj, int i2) {
            this.f8865a = obj;
            this.f8866b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f8865a == aVar.f8865a && this.f8866b == aVar.f8866b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f8865a) * 65535) + this.f8866b;
        }
    }

    static {
        a();
        f8863d = new q81(true);
    }

    q81() {
        this.f8864a = new HashMap();
    }

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static q81 b() {
        q81 q81Var = f8861b;
        if (q81Var == null) {
            synchronized (q81.class) {
                q81Var = f8861b;
                if (q81Var == null) {
                    q81Var = f8863d;
                    f8861b = q81Var;
                }
            }
        }
        return q81Var;
    }

    public static q81 c() {
        q81 q81Var = f8862c;
        if (q81Var == null) {
            synchronized (q81.class) {
                q81Var = f8862c;
                if (q81Var == null) {
                    q81Var = d91.a(q81.class);
                    f8862c = q81Var;
                }
            }
        }
        return q81Var;
    }

    public final <ContainingType extends oa1> e91.e<ContainingType, ?> a(ContainingType containingtype, int i2) {
        return (e91.e) this.f8864a.get(new a(containingtype, i2));
    }

    private q81(boolean z) {
        this.f8864a = Collections.emptyMap();
    }
}
