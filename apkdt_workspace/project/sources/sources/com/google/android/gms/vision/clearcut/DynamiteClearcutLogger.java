package com.google.android.gms.vision.clearcut;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.internal.vision.f2;
import com.google.android.gms.vision.L;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
@Keep
/* loaded from: classes.dex */
public class DynamiteClearcutLogger {
    private static final ThreadPoolExecutor zzbn = new ThreadPoolExecutor(1, 2, 2, TimeUnit.SECONDS, new LinkedBlockingQueue(10), new ThreadPoolExecutor.DiscardPolicy());
    private b zzbo = new b(0.03333333333333333d);
    private VisionClearcutLogger zzbp;

    public DynamiteClearcutLogger(Context context) {
        this.zzbp = new VisionClearcutLogger(context);
    }

    public final void zza(int i2, f2 f2Var) {
        if (i2 == 3 && !this.zzbo.a()) {
            L.v("Skipping image analysis log due to rate limiting", new Object[0]);
        } else {
            zzbn.execute(new a(this, i2, f2Var));
        }
    }
}
