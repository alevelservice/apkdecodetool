package kotlin.jvm.d;

import kotlin.SinceKotlin;
import kotlin.reflect.KProperty1;

/* compiled from: ReflectionFactory.java */
/* loaded from: classes2.dex */
public class o {
    public kotlin.reflect.c a(Class cls) {
        return new c(cls);
    }

    public KProperty1 a(j jVar) {
        return jVar;
    }

    @SinceKotlin(version = "1.1")
    public String a(i iVar) {
        return a((f) iVar);
    }

    @SinceKotlin(version = "1.3")
    public String a(f fVar) {
        String obj = fVar.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }
}
