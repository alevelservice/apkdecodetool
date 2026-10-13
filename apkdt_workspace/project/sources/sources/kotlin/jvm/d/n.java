package kotlin.jvm.d;

import kotlin.SinceKotlin;
import kotlin.reflect.KProperty1;

/* compiled from: Reflection.java */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private static final o f19944a;

    static {
        o oVar = null;
        try {
            oVar = (o) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (oVar == null) {
            oVar = new o();
        }
        f19944a = oVar;
    }

    public static kotlin.reflect.c a(Class cls) {
        return f19944a.a(cls);
    }

    @SinceKotlin(version = "1.1")
    public static String a(i iVar) {
        return f19944a.a(iVar);
    }

    @SinceKotlin(version = "1.3")
    public static String a(f fVar) {
        return f19944a.a(fVar);
    }

    public static KProperty1 a(j jVar) {
        f19944a.a(jVar);
        return jVar;
    }
}
