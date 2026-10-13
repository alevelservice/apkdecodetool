package kotlin.jvm.d;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.SinceKotlin;

/* compiled from: CallableReference.java */
/* loaded from: classes2.dex */
public abstract class a implements kotlin.reflect.b, Serializable {

    @SinceKotlin(version = "1.1")
    public static final Object NO_RECEIVER = C0262a.f19941e;

    /* renamed from: e, reason: collision with root package name */
    private transient kotlin.reflect.b f19940e;

    @SinceKotlin(version = "1.1")
    protected final Object receiver;

    /* compiled from: CallableReference.java */
    @SinceKotlin(version = "1.2")
    /* renamed from: kotlin.jvm.d.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0262a implements Serializable {

        /* renamed from: e, reason: collision with root package name */
        private static final C0262a f19941e = new C0262a();

        private C0262a() {
        }

        private Object readResolve() {
            return f19941e;
        }
    }

    public a() {
        this(NO_RECEIVER);
    }

    @Override // kotlin.reflect.b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // kotlin.reflect.b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    @SinceKotlin(version = "1.1")
    public kotlin.reflect.b compute() {
        kotlin.reflect.b bVar = this.f19940e;
        if (bVar != null) {
            return bVar;
        }
        kotlin.reflect.b computeReflected = computeReflected();
        this.f19940e = computeReflected;
        return computeReflected;
    }

    protected abstract kotlin.reflect.b computeReflected();

    @Override // kotlin.reflect.a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    @SinceKotlin(version = "1.1")
    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        throw new AbstractMethodError();
    }

    public kotlin.reflect.e getOwner() {
        throw new AbstractMethodError();
    }

    @Override // kotlin.reflect.b
    public List<kotlin.reflect.g> getParameters() {
        return getReflected().getParameters();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin(version = "1.1")
    public kotlin.reflect.b getReflected() {
        kotlin.reflect.b compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new kotlin.jvm.b();
    }

    @Override // kotlin.reflect.b
    public kotlin.reflect.j getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        throw new AbstractMethodError();
    }

    @Override // kotlin.reflect.b
    @SinceKotlin(version = "1.1")
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.b
    @SinceKotlin(version = "1.1")
    public kotlin.reflect.k getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // kotlin.reflect.b
    @SinceKotlin(version = "1.1")
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // kotlin.reflect.b
    @SinceKotlin(version = "1.1")
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // kotlin.reflect.b
    @SinceKotlin(version = "1.1")
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // kotlin.reflect.b
    @SinceKotlin(version = "1.3")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin(version = "1.1")
    public a(Object obj) {
        this.receiver = obj;
    }
}
