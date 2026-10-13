package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s1 extends p1<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s1(w1 w1Var, String str, Long l2) {
        super(w1Var, str, l2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.p1
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String b2 = super.b();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 25 + String.valueOf(valueOf).length());
        sb.append("Invalid long value for ");
        sb.append(b2);
        sb.append(": ");
        sb.append(valueOf);
        sb.toString();
        return null;
    }
}
