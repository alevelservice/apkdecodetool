package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wk1 {

    /* renamed from: a, reason: collision with root package name */
    private final String f10138a;

    /* renamed from: b, reason: collision with root package name */
    private final String f10139b;

    public wk1(String str, String str2) {
        this.f10138a = str;
        this.f10139b = str2;
    }

    public final String a() {
        return this.f10138a;
    }

    public final String b() {
        return this.f10139b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && wk1.class == obj.getClass()) {
            wk1 wk1Var = (wk1) obj;
            if (TextUtils.equals(this.f10138a, wk1Var.f10138a) && TextUtils.equals(this.f10139b, wk1Var.f10139b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f10138a.hashCode() * 31) + this.f10139b.hashCode();
    }

    public final String toString() {
        String str = this.f10138a;
        String str2 = this.f10139b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
