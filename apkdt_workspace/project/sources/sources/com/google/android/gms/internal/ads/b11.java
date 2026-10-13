package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.w41;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b11<P> {

    /* renamed from: d, reason: collision with root package name */
    private static final Charset f5701d = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    private ConcurrentMap<String, List<a11<P>>> f5702a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    private a11<P> f5703b;

    /* renamed from: c, reason: collision with root package name */
    private final Class<P> f5704c;

    private b11(Class<P> cls) {
        this.f5704c = cls;
    }

    public static <P> b11<P> a(Class<P> cls) {
        return new b11<>(cls);
    }

    public final a11<P> b() {
        return this.f5703b;
    }

    public final void a(a11<P> a11Var) {
        if (a11Var != null) {
            if (a11Var.b() == p41.ENABLED) {
                List<a11<P>> list = this.f5702a.get(new String(a11Var.d(), f5701d));
                if (list == null) {
                    list = Collections.emptyList();
                }
                if (!list.isEmpty()) {
                    this.f5703b = a11Var;
                    return;
                }
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            throw new IllegalArgumentException("the primary entry has to be ENABLED");
        }
        throw new IllegalArgumentException("the primary entry must be non-null");
    }

    public final a11<P> a(P p, w41.a aVar) {
        byte[] array;
        if (aVar.k() == p41.ENABLED) {
            int i2 = p01.f8623a[aVar.m().ordinal()];
            if (i2 == 1 || i2 == 2) {
                array = ByteBuffer.allocate(5).put((byte) 0).putInt(aVar.q()).array();
            } else if (i2 == 3) {
                array = ByteBuffer.allocate(5).put((byte) 1).putInt(aVar.q()).array();
            } else if (i2 == 4) {
                array = q01.f8826a;
            } else {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            a11<P> a11Var = new a11<>(p, array, aVar.k(), aVar.m());
            ArrayList arrayList = new ArrayList();
            arrayList.add(a11Var);
            String str = new String(a11Var.d(), f5701d);
            List<a11<P>> put = this.f5702a.put(str, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(a11Var);
                this.f5702a.put(str, Collections.unmodifiableList(arrayList2));
            }
            return a11Var;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    public final Class<P> a() {
        return this.f5704c;
    }
}
