package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(24)
/* loaded from: classes.dex */
public class ib extends jb {
    @Override // com.google.android.gms.internal.ads.db
    public final boolean a(Activity activity, Configuration configuration) {
        if (!((Boolean) mu1.e().a(aw1.E2)).booleanValue()) {
            return false;
        }
        if (((Boolean) mu1.e().a(aw1.G2)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        mu1.a();
        int b2 = gd.b(activity, configuration.screenHeightDp);
        int b3 = gd.b(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.n.c();
        DisplayMetrics a2 = wa.a(windowManager);
        int i2 = a2.heightPixels;
        int i3 = a2.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        double d2 = activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d2);
        int round = ((int) Math.round(d2 + 0.5d)) * ((Integer) mu1.e().a(aw1.D2)).intValue();
        return !(a(i2, b2 + dimensionPixelSize, round) && a(i3, b3, round));
    }

    @VisibleForTesting
    private static boolean a(int i2, int i3, int i4) {
        return Math.abs(i2 - i3) <= i4;
    }
}
