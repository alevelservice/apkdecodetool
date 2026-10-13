package com.mapbox.mapboxsdk.style.layers;

import androidx.annotation.Keep;

/* loaded from: classes2.dex */
public class TransitionOptions {

    @Keep
    private long delay;

    @Keep
    private long duration;

    @Keep
    private boolean enablePlacementTransitions;

    public TransitionOptions(long j2, long j3) {
        this(j2, j3, true);
    }

    @Keep
    @Deprecated
    public static TransitionOptions fromTransitionOptions(long j2, long j3) {
        return new TransitionOptions(j2, j3);
    }

    public long a() {
        return this.delay;
    }

    public long b() {
        return this.duration;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TransitionOptions.class != obj.getClass()) {
            return false;
        }
        TransitionOptions transitionOptions = (TransitionOptions) obj;
        return this.duration == transitionOptions.duration && this.delay == transitionOptions.delay && this.enablePlacementTransitions == transitionOptions.enablePlacementTransitions;
    }

    public int hashCode() {
        long j2 = this.duration;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        long j3 = this.delay;
        return ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.enablePlacementTransitions ? 1 : 0);
    }

    public String toString() {
        return "TransitionOptions{duration=" + this.duration + ", delay=" + this.delay + ", enablePlacementTransitions=" + this.enablePlacementTransitions + '}';
    }

    public TransitionOptions(long j2, long j3, boolean z) {
        this.duration = j2;
        this.delay = j3;
        this.enablePlacementTransitions = z;
    }

    @Keep
    static TransitionOptions fromTransitionOptions(long j2, long j3, boolean z) {
        return new TransitionOptions(j2, j3, z);
    }
}
