package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class y0 implements e.i.b.b.d.a<Boolean, Void> {
    @Override // e.i.b.b.d.a
    public final /* synthetic */ Void a(@NonNull e.i.b.b.d.h<Boolean> hVar) {
        if (hVar.b().booleanValue()) {
            return null;
        }
        throw new com.google.android.gms.common.api.b(new Status(13, "listener already unregistered"));
    }
}
