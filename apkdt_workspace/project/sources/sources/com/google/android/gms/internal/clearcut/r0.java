package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;
import java.util.Map;

/* loaded from: classes.dex */
final class r0 extends q0<d1.d> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.q0
    public final int a(Map.Entry<?, ?> entry) {
        return ((d1.d) entry.getKey()).f11388e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.q0
    public final u0<d1.d> a(Object obj) {
        return ((d1.c) obj).zzjv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.q0
    public final void a(m4 m4Var, Map.Entry<?, ?> entry) {
        d1.d dVar = (d1.d) entry.getKey();
        switch (s0.f11551a[dVar.f11389f.ordinal()]) {
            case 1:
                m4Var.a(dVar.f11388e, ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                m4Var.a(dVar.f11388e, ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                m4Var.b(dVar.f11388e, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                m4Var.e(dVar.f11388e, ((Long) entry.getValue()).longValue());
                return;
            case 5:
                m4Var.a(dVar.f11388e, ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                m4Var.a(dVar.f11388e, ((Long) entry.getValue()).longValue());
                return;
            case 7:
                m4Var.c(dVar.f11388e, ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                m4Var.a(dVar.f11388e, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                m4Var.d(dVar.f11388e, ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                m4Var.zzm(dVar.f11388e, ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                m4Var.c(dVar.f11388e, ((Long) entry.getValue()).longValue());
                return;
            case 12:
                m4Var.e(dVar.f11388e, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                m4Var.d(dVar.f11388e, ((Long) entry.getValue()).longValue());
                return;
            case 14:
                m4Var.a(dVar.f11388e, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                m4Var.a(dVar.f11388e, (y) entry.getValue());
                return;
            case 16:
                m4Var.a(dVar.f11388e, (String) entry.getValue());
                return;
            case 17:
                m4Var.b(dVar.f11388e, entry.getValue(), u2.a().a((Class) entry.getValue().getClass()));
                return;
            case 18:
                m4Var.a(dVar.f11388e, entry.getValue(), u2.a().a((Class) entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }

    final void a(Object obj, u0<d1.d> u0Var) {
        ((d1.c) obj).zzjv = u0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.q0
    public final boolean a(i2 i2Var) {
        return i2Var instanceof d1.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.q0
    public final u0<d1.d> b(Object obj) {
        u0<d1.d> a2 = a(obj);
        if (!a2.c()) {
            return a2;
        }
        u0<d1.d> u0Var = (u0) a2.clone();
        a(obj, u0Var);
        return u0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.q0
    public final void c(Object obj) {
        a(obj).h();
    }
}
