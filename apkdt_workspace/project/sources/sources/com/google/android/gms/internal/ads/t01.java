package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.oa1;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class t01<P, KeyProto extends oa1, KeyFormatProto extends oa1> implements u01<P> {

    /* renamed from: a, reason: collision with root package name */
    private final Class<P> f9484a;

    /* renamed from: b, reason: collision with root package name */
    private final Class<KeyProto> f9485b;

    /* renamed from: c, reason: collision with root package name */
    private final Class<KeyFormatProto> f9486c;

    /* renamed from: d, reason: collision with root package name */
    private final String f9487d;

    /* JADX INFO: Access modifiers changed from: protected */
    public t01(Class<P> cls, Class<KeyProto> cls2, Class<KeyFormatProto> cls3, String str) {
        this.f9484a = cls;
        this.f9485b = cls2;
        this.f9486c = cls3;
        this.f9487d = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <Casted> Casted a(Object obj, String str, Class<Casted> cls) {
        if (cls.isInstance(obj)) {
            return obj;
        }
        throw new GeneralSecurityException(str);
    }

    private final P g(KeyProto keyproto) {
        c((t01<P, KeyProto, KeyFormatProto>) keyproto);
        return e((t01<P, KeyProto, KeyFormatProto>) keyproto);
    }

    private final KeyProto h(KeyFormatProto keyformatproto) {
        d((t01<P, KeyProto, KeyFormatProto>) keyformatproto);
        KeyProto f2 = f(keyformatproto);
        c((t01<P, KeyProto, KeyFormatProto>) f2);
        return f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.u01
    public final P b(oa1 oa1Var) {
        String valueOf = String.valueOf(this.f9485b.getName());
        a(oa1Var, valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type "), this.f9485b);
        return (P) g(oa1Var);
    }

    protected abstract l41.b c();

    @Override // com.google.android.gms.internal.ads.u01
    public final P c(t71 t71Var) {
        try {
            return g(d(t71Var));
        } catch (o91 e2) {
            String valueOf = String.valueOf(this.f9485b.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e2);
        }
    }

    protected abstract void c(KeyProto keyproto);

    protected abstract KeyProto d(t71 t71Var);

    protected abstract void d(KeyFormatProto keyformatproto);

    protected abstract KeyFormatProto e(t71 t71Var);

    protected abstract P e(KeyProto keyproto);

    protected abstract KeyProto f(KeyFormatProto keyformatproto);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.u01
    public final oa1 a(oa1 oa1Var) {
        String valueOf = String.valueOf(this.f9486c.getName());
        a(oa1Var, valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type "), this.f9486c);
        return h(oa1Var);
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final oa1 b(t71 t71Var) {
        try {
            return h(e(t71Var));
        } catch (o91 e2) {
            String valueOf = String.valueOf(this.f9486c.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final l41 a(t71 t71Var) {
        try {
            KeyProto h2 = h(e(t71Var));
            l41.a o = l41.o();
            o.a(this.f9487d);
            o.a(h2.f());
            o.a(c());
            return (l41) o.s();
        } catch (o91 e2) {
            throw new GeneralSecurityException("Unexpected proto", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final String b() {
        return this.f9487d;
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final Class<P> a() {
        return this.f9484a;
    }
}
