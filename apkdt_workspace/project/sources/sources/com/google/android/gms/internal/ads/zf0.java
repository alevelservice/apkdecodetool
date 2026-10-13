package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zf0 {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f10740a;

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f10741b = Collections.synchronizedList(new ArrayList());

    public zf0(com.google.android.gms.common.util.e eVar) {
        this.f10740a = eVar;
    }

    public final <T> qz0<T> a(ns0 ns0Var, qz0<T> qz0Var) {
        long c2 = this.f10740a.c();
        String str = ns0Var.t;
        if (str != null) {
            gz0.a(qz0Var, new cg0(this, str, c2), yd.f10544e);
        }
        return qz0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, int i2, long j2) {
        List<String> list = this.f10741b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(j2);
        list.add(sb.toString());
    }

    public final String a() {
        return TextUtils.join("_", this.f10741b);
    }
}
