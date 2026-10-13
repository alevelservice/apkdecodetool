package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mb {

    /* renamed from: a, reason: collision with root package name */
    private boolean f8071a = false;

    /* renamed from: b, reason: collision with root package name */
    private float f8072b = 1.0f;

    private final synchronized boolean c() {
        return this.f8072b >= 0.0f;
    }

    public final synchronized void a(float f2) {
        this.f8072b = f2;
    }

    public final synchronized boolean b() {
        return this.f8071a;
    }

    public final synchronized float a() {
        if (!c()) {
            return 1.0f;
        }
        return this.f8072b;
    }

    public final synchronized void a(boolean z) {
        this.f8071a = z;
    }

    public static float a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }
}
