package com.google.android.gms.internal.vision;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class y extends x<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y(b0 b0Var, String str, Boolean bool) {
        super(b0Var, str, bool, null);
    }

    @Override // com.google.android.gms.internal.vision.x
    final /* synthetic */ Boolean a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (e.f12333c.matcher(str).matches()) {
                return true;
            }
            if (e.f12334d.matcher(str).matches()) {
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
