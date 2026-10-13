package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class h4 extends f4<s4.c> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final boolean a(d6 d6Var) {
        return d6Var instanceof s4.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final i4<s4.c> b(Object obj) {
        return ((s4.d) obj).m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final void c(Object obj) {
        a(obj).e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final i4<s4.c> a(Object obj) {
        return ((s4.d) obj).zzwk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final int a(Map.Entry<?, ?> entry) {
        return ((s4.c) entry.getKey()).f12507f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final void a(e8 e8Var, Map.Entry<?, ?> entry) {
        s4.c cVar = (s4.c) entry.getKey();
        if (cVar.f12509h) {
            switch (g4.f12355a[cVar.f12508g.ordinal()]) {
                case 1:
                    s6.a(cVar.f12507f, (List<Double>) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 2:
                    s6.b(cVar.f12507f, (List<Float>) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 3:
                    s6.c(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 4:
                    s6.d(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 5:
                    s6.h(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 6:
                    s6.f(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 7:
                    s6.k(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 8:
                    s6.n(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 9:
                    s6.i(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 10:
                    s6.l(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 11:
                    s6.g(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 12:
                    s6.j(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 13:
                    s6.e(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 14:
                    s6.h(cVar.f12507f, (List) entry.getValue(), e8Var, cVar.f12510i);
                    return;
                case 15:
                    s6.b(cVar.f12507f, (List<j3>) entry.getValue(), e8Var);
                    return;
                case 16:
                    s6.a(cVar.f12507f, (List<String>) entry.getValue(), e8Var);
                    return;
                case 17:
                    List list = (List) entry.getValue();
                    if (list == null || list.isEmpty()) {
                        return;
                    }
                    s6.b(cVar.f12507f, (List<?>) entry.getValue(), e8Var, n6.a().a((Class) list.get(0).getClass()));
                    return;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 == null || list2.isEmpty()) {
                        return;
                    }
                    s6.a(cVar.f12507f, (List<?>) entry.getValue(), e8Var, n6.a().a((Class) list2.get(0).getClass()));
                    return;
                default:
                    return;
            }
        }
        switch (g4.f12355a[cVar.f12508g.ordinal()]) {
            case 1:
                e8Var.a(cVar.f12507f, ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                e8Var.a(cVar.f12507f, ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                e8Var.b(cVar.f12507f, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                e8Var.e(cVar.f12507f, ((Long) entry.getValue()).longValue());
                return;
            case 5:
                e8Var.a(cVar.f12507f, ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                e8Var.a(cVar.f12507f, ((Long) entry.getValue()).longValue());
                return;
            case 7:
                e8Var.c(cVar.f12507f, ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                e8Var.a(cVar.f12507f, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                e8Var.d(cVar.f12507f, ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                e8Var.e(cVar.f12507f, ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                e8Var.c(cVar.f12507f, ((Long) entry.getValue()).longValue());
                return;
            case 12:
                e8Var.zzj(cVar.f12507f, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                e8Var.d(cVar.f12507f, ((Long) entry.getValue()).longValue());
                return;
            case 14:
                e8Var.a(cVar.f12507f, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                e8Var.a(cVar.f12507f, (j3) entry.getValue());
                return;
            case 16:
                e8Var.a(cVar.f12507f, (String) entry.getValue());
                return;
            case 17:
                e8Var.b(cVar.f12507f, entry.getValue(), n6.a().a((Class) entry.getValue().getClass()));
                return;
            case 18:
                e8Var.a(cVar.f12507f, entry.getValue(), n6.a().a((Class) entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.f4
    public final Object a(d4 d4Var, d6 d6Var, int i2) {
        return d4Var.a(d6Var, i2);
    }
}
