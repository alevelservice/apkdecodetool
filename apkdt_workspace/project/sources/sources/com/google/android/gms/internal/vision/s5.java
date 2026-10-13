package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class s5 implements a6 {

    /* renamed from: a, reason: collision with root package name */
    private a6[] f12525a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s5(a6... a6VarArr) {
        this.f12525a = a6VarArr;
    }

    @Override // com.google.android.gms.internal.vision.a6
    public final b6 a(Class<?> cls) {
        for (a6 a6Var : this.f12525a) {
            if (a6Var.b(cls)) {
                return a6Var.a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.vision.a6
    public final boolean b(Class<?> cls) {
        for (a6 a6Var : this.f12525a) {
            if (a6Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
