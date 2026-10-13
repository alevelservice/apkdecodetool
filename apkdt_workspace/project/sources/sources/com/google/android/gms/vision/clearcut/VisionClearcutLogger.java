package com.google.android.gms.vision.clearcut;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.clearcut.a;
import com.google.android.gms.internal.vision.d4;
import com.google.android.gms.internal.vision.f2;
import com.google.android.gms.internal.vision.j1;
import com.google.android.gms.vision.L;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
@Keep
/* loaded from: classes.dex */
public class VisionClearcutLogger {
    private final com.google.android.gms.clearcut.a zzbv;
    private boolean zzbw = true;

    public VisionClearcutLogger(Context context) {
        this.zzbv = new com.google.android.gms.clearcut.a(context, "VISION", null);
    }

    public final void zzb(int i2, f2 f2Var) {
        byte[] e2 = f2Var.e();
        if (i2 < 0 || i2 > 3) {
            L.i("Illegal event code: %d", Integer.valueOf(i2));
            return;
        }
        try {
            if (this.zzbw) {
                a.C0083a a2 = this.zzbv.a(e2);
                a2.a(i2);
                a2.a();
            } else {
                f2.a m = f2.m();
                try {
                    m.a(e2, 0, e2.length, d4.b());
                    L.e("Would have logged:\n%s", m.toString());
                } catch (Exception e3) {
                    L.e(e3, "Parsing error", new Object[0]);
                }
            }
        } catch (Exception e4) {
            j1.a(e4);
            L.e(e4, "Failed to log", new Object[0]);
        }
    }
}
