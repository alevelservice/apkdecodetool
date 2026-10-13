package kotlin.jvm.d;

/* compiled from: PropertyReference1Impl.java */
/* loaded from: classes2.dex */
public class k extends j {
    private final String name;
    private final kotlin.reflect.e owner;
    private final String signature;

    public k(kotlin.reflect.e eVar, String str, String str2) {
        this.owner = eVar;
        this.name = str;
        this.signature = str2;
    }

    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return getGetter().call(obj);
    }

    @Override // kotlin.jvm.d.a
    public String getName() {
        return this.name;
    }

    @Override // kotlin.jvm.d.a
    public kotlin.reflect.e getOwner() {
        return this.owner;
    }

    @Override // kotlin.jvm.d.a
    public String getSignature() {
        return this.signature;
    }
}
