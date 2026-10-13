package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
import android.util.Base64;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class l<T> extends e<T> {

    /* renamed from: k, reason: collision with root package name */
    private final Object f11479k;

    /* renamed from: l, reason: collision with root package name */
    private String f11480l;
    private T m;
    private final /* synthetic */ n n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(o oVar, String str, Object obj, n nVar) {
        super(oVar, str, obj, null);
        this.n = nVar;
        this.f11479k = new Object();
    }

    @Override // com.google.android.gms.internal.clearcut.e
    protected final T a(SharedPreferences sharedPreferences) {
        try {
            return a(sharedPreferences.getString(this.f11407b, ""));
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(this.f11407b);
            if (valueOf.length() != 0) {
                "Invalid byte[] value in SharedPreferences for ".concat(valueOf);
                return null;
            }
            new String("Invalid byte[] value in SharedPreferences for ");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.e
    protected final T a(String str) {
        T t;
        try {
            synchronized (this.f11479k) {
                if (!str.equals(this.f11480l)) {
                    T t2 = (T) this.n.a(Base64.decode(str, 3));
                    this.f11480l = str;
                    this.m = t2;
                }
                t = this.m;
            }
            return t;
        } catch (IOException | IllegalArgumentException unused) {
            String str2 = this.f11407b;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 27 + String.valueOf(str).length());
            sb.append("Invalid byte[] value for ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            sb.toString();
            return null;
        }
    }
}
