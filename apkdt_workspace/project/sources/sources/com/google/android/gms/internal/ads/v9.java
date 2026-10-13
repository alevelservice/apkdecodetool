package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.l.a;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v9 implements x9 {
    @Override // com.google.android.gms.internal.ads.x9
    public final qz0<String> a(String str, PackageInfo packageInfo) {
        return gz0.a(str);
    }

    @Override // com.google.android.gms.internal.ads.x9
    public final qz0<a.C0077a> a(Context context) {
        he heVar = new he();
        mu1.a();
        if (gd.c(context)) {
            yd.f10540a.execute(new u9(this, context, heVar));
        }
        return heVar;
    }
}
