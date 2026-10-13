package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(19)
/* loaded from: classes.dex */
public final class mi1 extends ni1 {

    /* renamed from: j, reason: collision with root package name */
    private final AudioTimestamp f8143j;

    /* renamed from: k, reason: collision with root package name */
    private long f8144k;

    /* renamed from: l, reason: collision with root package name */
    private long f8145l;
    private long m;

    public mi1() {
        super(null);
        this.f8143j = new AudioTimestamp();
    }

    @Override // com.google.android.gms.internal.ads.ni1
    public final void a(AudioTrack audioTrack, boolean z) {
        super.a(audioTrack, z);
        this.f8144k = 0L;
        this.f8145l = 0L;
        this.m = 0L;
    }

    @Override // com.google.android.gms.internal.ads.ni1
    public final boolean b() {
        boolean timestamp = this.f8357a.getTimestamp(this.f8143j);
        if (timestamp) {
            long j2 = this.f8143j.framePosition;
            if (this.f8145l > j2) {
                this.f8144k++;
            }
            this.f8145l = j2;
            this.m = j2 + (this.f8144k << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.ni1
    public final long c() {
        return this.f8143j.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.ni1
    public final long d() {
        return this.m;
    }
}
