package androidx.core.view;

/* compiled from: DisplayCutoutCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final Object f1922a;

    private c(Object obj) {
        this.f1922a = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new c(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        Object obj2 = this.f1922a;
        if (obj2 == null) {
            return cVar.f1922a == null;
        }
        return obj2.equals(cVar.f1922a);
    }

    public int hashCode() {
        Object obj = this.f1922a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f1922a + "}";
    }
}
