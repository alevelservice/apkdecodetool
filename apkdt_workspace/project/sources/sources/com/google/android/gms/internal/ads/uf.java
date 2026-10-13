package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class uf implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    private final AudioManager f9721a;

    /* renamed from: b, reason: collision with root package name */
    private final wf f9722b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9723c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f9724d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9725e;

    /* renamed from: f, reason: collision with root package name */
    private float f9726f = 1.0f;

    public uf(Context context, wf wfVar) {
        this.f9721a = (AudioManager) context.getSystemService("audio");
        this.f9722b = wfVar;
    }

    private final void d() {
        boolean z;
        boolean z2;
        boolean z3 = this.f9724d && !this.f9725e && this.f9726f > 0.0f;
        if (z3 && !(z2 = this.f9723c)) {
            AudioManager audioManager = this.f9721a;
            if (audioManager != null && !z2) {
                this.f9723c = audioManager.requestAudioFocus(this, 3, 2) == 1;
            }
            this.f9722b.zzwq();
            return;
        }
        if (z3 || !(z = this.f9723c)) {
            return;
        }
        AudioManager audioManager2 = this.f9721a;
        if (audioManager2 != null && z) {
            this.f9723c = audioManager2.abandonAudioFocus(this) == 0;
        }
        this.f9722b.zzwq();
    }

    public final void a(boolean z) {
        this.f9725e = z;
        d();
    }

    public final void b() {
        this.f9724d = true;
        d();
    }

    public final void c() {
        this.f9724d = false;
        d();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i2) {
        this.f9723c = i2 > 0;
        this.f9722b.zzwq();
    }

    public final void a(float f2) {
        this.f9726f = f2;
        d();
    }

    public final float a() {
        float f2 = this.f9725e ? 0.0f : this.f9726f;
        if (this.f9723c) {
            return f2;
        }
        return 0.0f;
    }
}
