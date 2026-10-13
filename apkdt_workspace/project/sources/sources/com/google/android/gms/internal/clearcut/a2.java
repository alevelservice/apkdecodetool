package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class a2 implements h2 {

    /* renamed from: a, reason: collision with root package name */
    private h2[] f11355a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a2(h2... h2VarArr) {
        this.f11355a = h2VarArr;
    }

    @Override // com.google.android.gms.internal.clearcut.h2
    public final g2 a(Class<?> cls) {
        for (h2 h2Var : this.f11355a) {
            if (h2Var.b(cls)) {
                return h2Var.a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.clearcut.h2
    public final boolean b(Class<?> cls) {
        for (h2 h2Var : this.f11355a) {
            if (h2Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
