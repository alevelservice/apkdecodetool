package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class t6 extends r6<u6, u6> {
    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(Object obj, u6 u6Var) {
        ((b4) obj).zzahz = u6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final boolean a(z5 z5Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ void b(u6 u6Var, p7 p7Var) {
        u6Var.a(p7Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ int c(u6 u6Var) {
        return u6Var.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ u6 d(Object obj) {
        return ((b4) obj).zzahz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ u6 e(Object obj) {
        u6 u6Var = ((b4) obj).zzahz;
        if (u6Var != u6.d()) {
            return u6Var;
        }
        u6 e2 = u6.e();
        a2(obj, e2);
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ int f(u6 u6Var) {
        return u6Var.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final void a(Object obj) {
        ((b4) obj).zzahz.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ void b(Object obj, u6 u6Var) {
        a2(obj, u6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ u6 c(u6 u6Var, u6 u6Var2) {
        u6 u6Var3 = u6Var;
        u6 u6Var4 = u6Var2;
        return u6Var4.equals(u6.d()) ? u6Var3 : u6.a(u6Var3, u6Var4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ void a(u6 u6Var, p7 p7Var) {
        u6Var.b(p7Var);
    }

    @Override // com.google.android.gms.internal.measurement.r6
    final /* synthetic */ u6 b(u6 u6Var) {
        u6 u6Var2 = u6Var;
        u6Var2.a();
        return u6Var2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ void a(Object obj, u6 u6Var) {
        a2(obj, u6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ u6 a() {
        return u6.e();
    }

    @Override // com.google.android.gms.internal.measurement.r6
    final /* synthetic */ void b(u6 u6Var, int i2, long j2) {
        u6Var.a((i2 << 3) | 1, Long.valueOf(j2));
    }

    @Override // com.google.android.gms.internal.measurement.r6
    final /* synthetic */ void a(u6 u6Var, int i2, u6 u6Var2) {
        u6Var.a((i2 << 3) | 3, u6Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ void a(u6 u6Var, int i2, t2 t2Var) {
        u6Var.a((i2 << 3) | 2, t2Var);
    }

    @Override // com.google.android.gms.internal.measurement.r6
    final /* synthetic */ void a(u6 u6Var, int i2, int i3) {
        u6Var.a((i2 << 3) | 5, Integer.valueOf(i3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.r6
    public final /* synthetic */ void a(u6 u6Var, int i2, long j2) {
        u6Var.a(i2 << 3, Long.valueOf(j2));
    }
}
