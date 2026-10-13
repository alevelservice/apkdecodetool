package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.w41;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d11 {

    /* renamed from: a, reason: collision with root package name */
    private static final Logger f6140a = Logger.getLogger(d11.class.getName());

    /* renamed from: b, reason: collision with root package name */
    private static final ConcurrentMap<String, a> f6141b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private static final ConcurrentMap<String, Boolean> f6142c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private static final ConcurrentMap<String, o01<?>> f6143d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private static final ConcurrentMap<Class<?>, c11<?>> f6144e = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public interface a {
        u01<?> a();

        <P> u01<P> a(Class<P> cls);

        Class<?> b();

        Set<Class<?>> c();
    }

    private static synchronized a a(String str) {
        a aVar;
        synchronized (d11.class) {
            if (!f6141b.containsKey(str)) {
                String valueOf = String.valueOf(str);
                throw new GeneralSecurityException(valueOf.length() != 0 ? "No key manager found for key type ".concat(valueOf) : new String("No key manager found for key type "));
            }
            aVar = f6141b.get(str);
        }
        return aVar;
    }

    public static o01<?> b(String str) {
        if (str != null) {
            o01<?> o01Var = f6143d.get(str.toLowerCase());
            if (o01Var != null) {
                return o01Var;
            }
            String format = String.format("no catalogue found for %s. ", str);
            if (str.toLowerCase().startsWith("tinkaead")) {
                format = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (!str.toLowerCase().startsWith("tinkdeterministicaead")) {
                if (!str.toLowerCase().startsWith("tinkstreamingaead")) {
                    if (!str.toLowerCase().startsWith("tinkhybriddecrypt") && !str.toLowerCase().startsWith("tinkhybridencrypt")) {
                        if (!str.toLowerCase().startsWith("tinkmac")) {
                            if (!str.toLowerCase().startsWith("tinkpublickeysign") && !str.toLowerCase().startsWith("tinkpublickeyverify")) {
                                if (str.toLowerCase().startsWith("tink")) {
                                    format = String.valueOf(format).concat("Maybe call TinkConfig.register().");
                                }
                            } else {
                                format = String.valueOf(format).concat("Maybe call SignatureConfig.register().");
                            }
                        } else {
                            format = String.valueOf(format).concat("Maybe call MacConfig.register().");
                        }
                    } else {
                        format = String.valueOf(format).concat("Maybe call HybridConfig.register().");
                    }
                } else {
                    format = String.valueOf(format).concat("Maybe call StreamingAeadConfig.register().");
                }
            } else {
                format = String.valueOf(format).concat("Maybe call DeterministicAeadConfig.register().");
            }
            throw new GeneralSecurityException(format);
        }
        throw new IllegalArgumentException("catalogueName must be non-null.");
    }

    private static u01<?> c(String str) {
        return a(str).a();
    }

    public static synchronized void a(String str, o01<?> o01Var) {
        synchronized (d11.class) {
            if (f6143d.containsKey(str.toLowerCase())) {
                if (!o01Var.getClass().equals(f6143d.get(str.toLowerCase()).getClass())) {
                    Logger logger = f6140a;
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(str);
                    logger.logp(level, "com.google.crypto.tink.Registry", "addCatalogue", valueOf.length() != 0 ? "Attempted overwrite of a catalogueName catalogue for name ".concat(valueOf) : new String("Attempted overwrite of a catalogueName catalogue for name "));
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
                    sb.append("catalogue for name ");
                    sb.append(str);
                    sb.append(" has been already registered");
                    throw new GeneralSecurityException(sb.toString());
                }
            }
            f6143d.put(str.toLowerCase(), o01Var);
        }
    }

    private static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static synchronized <P> void a(u01<P> u01Var) {
        synchronized (d11.class) {
            a((u01) u01Var, true);
        }
    }

    public static synchronized <P> void a(u01<P> u01Var, boolean z) {
        synchronized (d11.class) {
            if (u01Var != null) {
                String b2 = u01Var.b();
                if (f6141b.containsKey(b2)) {
                    a aVar = f6141b.get(b2);
                    boolean booleanValue = f6142c.get(b2).booleanValue();
                    if (!u01Var.getClass().equals(aVar.b()) || (!booleanValue && z)) {
                        Logger logger = f6140a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(b2);
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerKeyManager", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", b2, aVar.b().getName(), u01Var.getClass().getName()));
                    }
                }
                f6141b.put(b2, new e11(u01Var));
                f6142c.put(b2, Boolean.valueOf(z));
            } else {
                throw new IllegalArgumentException("key manager must be non-null.");
            }
        }
    }

    public static synchronized oa1 b(r41 r41Var) {
        oa1 b2;
        synchronized (d11.class) {
            u01<?> c2 = c(r41Var.k());
            if (f6142c.get(r41Var.k()).booleanValue()) {
                b2 = c2.b(r41Var.m());
            } else {
                String valueOf = String.valueOf(r41Var.k());
                throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
            }
        }
        return b2;
    }

    public static synchronized <P> void a(c11<P> c11Var) {
        synchronized (d11.class) {
            if (c11Var != null) {
                Class<P> a2 = c11Var.a();
                if (f6144e.containsKey(a2)) {
                    c11<?> c11Var2 = f6144e.get(a2);
                    if (!c11Var.getClass().equals(c11Var2.getClass())) {
                        Logger logger = f6140a;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(a2.toString());
                        logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", valueOf.length() != 0 ? "Attempted overwrite of a registered SetWrapper for type ".concat(valueOf) : new String("Attempted overwrite of a registered SetWrapper for type "));
                        throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", a2.getName(), c11Var2.getClass().getName(), c11Var.getClass().getName()));
                    }
                }
                f6144e.put(a2, c11Var);
            } else {
                throw new IllegalArgumentException("wrapper must be non-null");
            }
        }
    }

    private static <P> u01<P> a(String str, Class<P> cls) {
        a a2 = a(str);
        if (cls == null) {
            return (u01<P>) a2.a();
        }
        if (a2.c().contains(cls)) {
            return a2.a(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(a2.b());
        Set<Class<?>> c2 = a2.c();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class<?> cls2 : c2) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(valueOf).length() + String.valueOf(sb2).length());
        sb3.append("Primitive type ");
        sb3.append(name);
        sb3.append(" not supported by key manager of type ");
        sb3.append(valueOf);
        sb3.append(", supported primitives: ");
        sb3.append(sb2);
        throw new GeneralSecurityException(sb3.toString());
    }

    public static synchronized l41 a(r41 r41Var) {
        l41 a2;
        synchronized (d11.class) {
            u01<?> c2 = c(r41Var.k());
            if (f6142c.get(r41Var.k()).booleanValue()) {
                a2 = c2.a(r41Var.m());
            } else {
                String valueOf = String.valueOf(r41Var.k());
                throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
            }
        }
        return a2;
    }

    public static synchronized oa1 a(String str, oa1 oa1Var) {
        oa1 a2;
        synchronized (d11.class) {
            u01 a3 = a(str, (Class) null);
            if (f6142c.get(str).booleanValue()) {
                a2 = a3.a(oa1Var);
            } else {
                String valueOf = String.valueOf(str);
                throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
            }
        }
        return a2;
    }

    public static <P> P a(String str, oa1 oa1Var, Class<P> cls) {
        a(cls);
        return (P) a(str, cls).b(oa1Var);
    }

    private static <P> P a(String str, t71 t71Var, Class<P> cls) {
        return (P) a(str, cls).c(t71Var);
    }

    public static <P> P a(String str, byte[] bArr, Class<P> cls) {
        t71 zzy = t71.zzy(bArr);
        a(cls);
        return (P) a(str, zzy, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <P> b11<P> a(v01 v01Var, u01<P> u01Var, Class<P> cls) {
        a(cls);
        Class<P> cls2 = cls;
        f11.b(v01Var.a());
        b11<P> b11Var = (b11<P>) b11.a(cls2);
        for (w41.a aVar : v01Var.a().m()) {
            if (aVar.k() == p41.ENABLED) {
                a11 a2 = b11Var.a(a(aVar.o().k(), aVar.o().m(), cls2), aVar);
                if (aVar.q() == v01Var.a().k()) {
                    b11Var.a(a2);
                }
            }
        }
        return b11Var;
    }

    public static <P> P a(b11<P> b11Var) {
        c11<?> c11Var = f6144e.get(b11Var.a());
        if (c11Var == null) {
            String valueOf = String.valueOf(b11Var.a().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        return (P) c11Var.a(b11Var);
    }
}
