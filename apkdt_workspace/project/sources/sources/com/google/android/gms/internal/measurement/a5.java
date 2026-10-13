package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class a5 implements h5 {

    /* renamed from: a, reason: collision with root package name */
    private h5[] f11743a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a5(h5... h5VarArr) {
        this.f11743a = h5VarArr;
    }

    @Override // com.google.android.gms.internal.measurement.h5
    public final i5 a(Class<?> cls) {
        for (h5 h5Var : this.f11743a) {
            if (h5Var.b(cls)) {
                return h5Var.a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.measurement.h5
    public final boolean b(Class<?> cls) {
        for (h5 h5Var : this.f11743a) {
            if (h5Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
