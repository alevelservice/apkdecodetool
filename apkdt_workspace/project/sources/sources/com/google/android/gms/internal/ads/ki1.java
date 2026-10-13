package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ki1 extends Thread {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AudioTrack f7701e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ li1 f7702f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ki1(li1 li1Var, AudioTrack audioTrack) {
        this.f7702f = li1Var;
        this.f7701e = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f7701e.flush();
            this.f7701e.release();
        } finally {
            conditionVariable = this.f7702f.f7902f;
            conditionVariable.open();
        }
    }
}
