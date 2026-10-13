package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class ea1 implements la1 {

    /* renamed from: a, reason: collision with root package name */
    private la1[] f6388a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ea1(la1... la1VarArr) {
        this.f6388a = la1VarArr;
    }

    @Override // com.google.android.gms.internal.ads.la1
    public final ma1 a(Class<?> cls) {
        for (la1 la1Var : this.f6388a) {
            if (la1Var.b(cls)) {
                return la1Var.a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.ads.la1
    public final boolean b(Class<?> cls) {
        for (la1 la1Var : this.f6388a) {
            if (la1Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
