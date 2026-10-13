package kotlin.jvm.d;

import kotlin.SinceKotlin;
import kotlin.reflect.KProperty;

/* compiled from: PropertyReference.java */
/* loaded from: classes2.dex */
public abstract class l extends a implements KProperty {
    public l() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            return getOwner().equals(lVar.getOwner()) && getName().equals(lVar.getName()) && getSignature().equals(lVar.getSignature()) && h.a(getBoundReceiver(), lVar.getBoundReceiver());
        }
        if (obj instanceof KProperty) {
            return obj.equals(compute());
        }
        return false;
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KProperty
    @SinceKotlin(version = "1.1")
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // kotlin.reflect.KProperty
    @SinceKotlin(version = "1.1")
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        kotlin.reflect.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }

    @SinceKotlin(version = "1.1")
    public l(Object obj) {
        super(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.d.a
    @SinceKotlin(version = "1.1")
    public KProperty getReflected() {
        return (KProperty) super.getReflected();
    }
}
