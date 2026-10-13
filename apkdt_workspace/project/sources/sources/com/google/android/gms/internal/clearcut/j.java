package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j extends e<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(o oVar, String str, Boolean bool) {
        super(oVar, str, bool, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.e
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean a(SharedPreferences sharedPreferences) {
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(this.f11407b, false));
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(this.f11407b);
            if (valueOf.length() != 0) {
                "Invalid boolean value in SharedPreferences for ".concat(valueOf);
                return null;
            }
            new String("Invalid boolean value in SharedPreferences for ");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.e
    protected final /* synthetic */ Boolean a(String str) {
        if (q5.f11533c.matcher(str).matches()) {
            return true;
        }
        if (q5.f11534d.matcher(str).matches()) {
            return false;
        }
        String str2 = this.f11407b;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
        sb.append("Invalid boolean value for ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        sb.toString();
        return null;
    }
}
