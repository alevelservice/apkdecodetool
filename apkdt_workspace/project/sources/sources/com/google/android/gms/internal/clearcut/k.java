package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k extends e<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(o oVar, String str, String str2) {
        super(oVar, str, str2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.e
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String a(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.f11407b, null);
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(this.f11407b);
            if (valueOf.length() != 0) {
                "Invalid string value in SharedPreferences for ".concat(valueOf);
            } else {
                new String("Invalid string value in SharedPreferences for ");
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.e
    protected final /* synthetic */ String a(String str) {
        return str;
    }
}
