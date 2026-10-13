package com.google.android.gms.internal.vision;

import android.database.ContentObserver;
import android.os.Handler;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class l extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ j f12415a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(j jVar, Handler handler) {
        super(null);
        this.f12415a = jVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f12415a.a();
    }
}
