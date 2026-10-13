package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ce1 extends fe1 {

    /* renamed from: a, reason: collision with root package name */
    private String f5990a;

    public ce1(String str) {
        this.f5990a = str;
    }

    @Override // com.google.android.gms.internal.ads.fe1
    public final void a(String str) {
        String str2 = this.f5990a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        sb.toString();
    }
}
