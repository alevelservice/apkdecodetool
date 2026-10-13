package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class ni1 {

    /* renamed from: a, reason: collision with root package name */
    protected AudioTrack f8357a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f8358b;

    /* renamed from: c, reason: collision with root package name */
    private int f8359c;

    /* renamed from: d, reason: collision with root package name */
    private long f8360d;

    /* renamed from: e, reason: collision with root package name */
    private long f8361e;

    /* renamed from: f, reason: collision with root package name */
    private long f8362f;

    /* renamed from: g, reason: collision with root package name */
    private long f8363g;

    /* renamed from: h, reason: collision with root package name */
    private long f8364h;

    /* renamed from: i, reason: collision with root package name */
    private long f8365i;

    private ni1() {
    }

    public void a(AudioTrack audioTrack, boolean z) {
        this.f8357a = audioTrack;
        this.f8358b = z;
        this.f8363g = -9223372036854775807L;
        this.f8360d = 0L;
        this.f8361e = 0L;
        this.f8362f = 0L;
        if (audioTrack != null) {
            this.f8359c = audioTrack.getSampleRate();
        }
    }

    public boolean b() {
        return false;
    }

    public long c() {
        throw new UnsupportedOperationException();
    }

    public long d() {
        throw new UnsupportedOperationException();
    }

    public final long e() {
        if (this.f8363g != -9223372036854775807L) {
            return Math.min(this.f8365i, this.f8364h + ((((SystemClock.elapsedRealtime() * 1000) - this.f8363g) * this.f8359c) / 1000000));
        }
        int playState = this.f8357a.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & this.f8357a.getPlaybackHeadPosition();
        if (this.f8358b) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f8362f = this.f8360d;
            }
            playbackHeadPosition += this.f8362f;
        }
        if (this.f8360d > playbackHeadPosition) {
            this.f8361e++;
        }
        this.f8360d = playbackHeadPosition;
        return playbackHeadPosition + (this.f8361e << 32);
    }

    public final long f() {
        return (e() * 1000000) / this.f8359c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ni1(ki1 ki1Var) {
        this();
    }

    public final void a(long j2) {
        this.f8364h = e();
        this.f8363g = SystemClock.elapsedRealtime() * 1000;
        this.f8365i = j2;
        this.f8357a.stop();
    }

    public final void a() {
        if (this.f8363g != -9223372036854775807L) {
            return;
        }
        this.f8357a.pause();
    }
}
