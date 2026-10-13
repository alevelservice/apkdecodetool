package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u1 extends p1<Double> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(w1 w1Var, String str, Double d2) {
        super(w1Var, str, d2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.p1
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Double a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String b2 = super.b();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 27 + String.valueOf(valueOf).length());
        sb.append("Invalid double value for ");
        sb.append(b2);
        sb.append(": ");
        sb.append(valueOf);
        sb.toString();
        return null;
    }
}
