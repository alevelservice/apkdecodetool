package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r1 extends p1<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(w1 w1Var, String str, Boolean bool) {
        super(w1Var, str, bool, null);
    }

    @Override // com.google.android.gms.internal.measurement.p1
    final /* synthetic */ Boolean a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (c1.f11789c.matcher(str).matches()) {
                return true;
            }
            if (c1.f11790d.matcher(str).matches()) {
                return false;
            }
        }
        String b2 = super.b();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 28 + String.valueOf(valueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(b2);
        sb.append(": ");
        sb.append(valueOf);
        sb.toString();
        return null;
    }
}
