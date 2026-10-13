package kotlin.internal;

import com.alipay.mobile.security.faceauth.api.AntDetector;
import kotlin.jvm.JvmField;
import kotlin.jvm.d.h;
import kotlin.r;
import kotlin.text.m;
import org.jetbrains.annotations.NotNull;

/* compiled from: PlatformImplementations.kt */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final PlatformImplementations f19938a;

    static {
        PlatformImplementations platformImplementations;
        Object newInstance;
        Object newInstance2;
        int a2 = a();
        if (a2 >= 65544) {
            try {
                newInstance2 = Class.forName("kotlin.internal.jdk8.JDK8PlatformImplementations").newInstance();
                h.a(newInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                } catch (ClassCastException e2) {
                    Throwable initCause = new ClassCastException("Instance classloader: " + newInstance2.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e2);
                    h.a((Object) initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause;
                }
            } catch (ClassNotFoundException unused) {
                try {
                    Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                    h.a(newInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance3 == null) {
                            throw new r("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        platformImplementations = (PlatformImplementations) newInstance3;
                    } catch (ClassCastException e3) {
                        Throwable initCause2 = new ClassCastException("Instance classloader: " + newInstance3.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e3);
                        h.a((Object) initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause2;
                    }
                } catch (ClassNotFoundException unused2) {
                }
            }
            if (newInstance2 == null) {
                throw new r("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            }
            platformImplementations = (PlatformImplementations) newInstance2;
            f19938a = platformImplementations;
        }
        if (a2 >= 65543) {
            try {
                newInstance = Class.forName("kotlin.internal.e.a").newInstance();
                h.a(newInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
            } catch (ClassNotFoundException unused3) {
                try {
                    Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    h.a(newInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance4 == null) {
                            throw new r("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        platformImplementations = (PlatformImplementations) newInstance4;
                    } catch (ClassCastException e4) {
                        Throwable initCause3 = new ClassCastException("Instance classloader: " + newInstance4.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e4);
                        h.a((Object) initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause3;
                    }
                } catch (ClassNotFoundException unused4) {
                }
            }
            try {
                if (newInstance == null) {
                    throw new r("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                }
                platformImplementations = (PlatformImplementations) newInstance;
                f19938a = platformImplementations;
            } catch (ClassCastException e5) {
                Throwable initCause4 = new ClassCastException("Instance classloader: " + newInstance.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e5);
                h.a((Object) initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                throw initCause4;
            }
        }
        platformImplementations = new PlatformImplementations();
        f19938a = platformImplementations;
    }

    private static final int a() {
        int a2;
        int a3;
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            return 65542;
        }
        a2 = m.a((CharSequence) property, '.', 0, false, 6, (Object) null);
        if (a2 < 0) {
            try {
                return Integer.parseInt(property) * AntDetector.ACTION_ID_SAMPLE;
            } catch (NumberFormatException unused) {
                return 65542;
            }
        }
        int i2 = a2 + 1;
        a3 = m.a((CharSequence) property, '.', i2, false, 4, (Object) null);
        if (a3 < 0) {
            a3 = property.length();
        }
        if (property != null) {
            String substring = property.substring(0, a2);
            h.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (property != null) {
                String substring2 = property.substring(i2, a3);
                h.a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                try {
                    return (Integer.parseInt(substring) * AntDetector.ACTION_ID_SAMPLE) + Integer.parseInt(substring2);
                } catch (NumberFormatException unused2) {
                    return 65542;
                }
            }
            throw new r("null cannot be cast to non-null type java.lang.String");
        }
        throw new r("null cannot be cast to non-null type java.lang.String");
    }
}
