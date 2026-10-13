package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class p0 implements o0<fi> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        fi fiVar2 = fiVar;
        WindowManager windowManager = (WindowManager) fiVar2.getContext().getSystemService("window");
        com.google.android.gms.ads.internal.n.c();
        DisplayMetrics a2 = wa.a(windowManager);
        int i2 = a2.widthPixels;
        int i3 = a2.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        ((View) fiVar2).getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i2));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i3));
        fiVar2.zza("locationReady", hashMap);
        qd.d("GET LOCATION COMPILED");
    }
}
