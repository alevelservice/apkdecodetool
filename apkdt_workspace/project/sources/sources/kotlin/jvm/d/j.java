package kotlin.jvm.d;

import kotlin.SinceKotlin;
import kotlin.reflect.KProperty1;

/* compiled from: PropertyReference1.java */
/* loaded from: classes2.dex */
public abstract class j extends l implements KProperty1 {
    public j() {
    }

    @Override // kotlin.jvm.d.a
    protected kotlin.reflect.b computeReflected() {
        n.a(this);
        return this;
    }

    @Override // kotlin.reflect.KProperty1
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((KProperty1) getReflected()).getDelegate(obj);
    }

    @Override // kotlin.jvm.c.b
    public Object invoke(Object obj) {
        return get(obj);
    }

    @SinceKotlin(version = "1.1")
    public j(Object obj) {
        super(obj);
    }

    @Override // kotlin.reflect.KProperty1
    public KProperty1.a getGetter() {
        return ((KProperty1) getReflected()).getGetter();
    }
}
