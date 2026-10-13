package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.internal.ads.db;
import com.google.android.gms.internal.ads.ja;
import com.google.android.gms.internal.ads.wa;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class h extends ja {

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ zze f4562c;

    private h(zze zzeVar) {
        this.f4562c = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.ja
    public final void a() {
        Bitmap a2 = com.google.android.gms.ads.internal.n.v().a(Integer.valueOf(this.f4562c.zzdgo.s.f4600j));
        if (a2 != null) {
            db e2 = com.google.android.gms.ads.internal.n.e();
            zze zzeVar = this.f4562c;
            Activity activity = zzeVar.zzzr;
            zzi zziVar = zzeVar.zzdgo.s;
            final Drawable a3 = e2.a(activity, a2, zziVar.f4598h, zziVar.f4599i);
            wa.f10063h.post(new Runnable(this, a3) { // from class: com.google.android.gms.ads.internal.overlay.k

                /* renamed from: e, reason: collision with root package name */
                private final h f4567e;

                /* renamed from: f, reason: collision with root package name */
                private final Drawable f4568f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4567e = this;
                    this.f4568f = a3;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    h hVar = this.f4567e;
                    hVar.f4562c.zzzr.getWindow().setBackgroundDrawable(this.f4568f);
                }
            });
        }
    }
}
