package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public final class hl1 {

    /* renamed from: a, reason: collision with root package name */
    public final String f7109a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7110b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7111c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7112d;

    /* renamed from: e, reason: collision with root package name */
    private final String f7113e;

    /* renamed from: f, reason: collision with root package name */
    private final MediaCodecInfo.CodecCapabilities f7114f;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0059, code lost:
    
        if ((com.google.android.gms.internal.ads.cp1.f6080a >= 21 && r4.isFeatureSupported("secure-playback")) != false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private hl1(java.lang.String r2, java.lang.String r3, android.media.MediaCodecInfo.CodecCapabilities r4, boolean r5, boolean r6) {
        /*
            r1 = this;
            r1.<init>()
            com.google.android.gms.internal.ads.no1.a(r2)
            java.lang.String r2 = (java.lang.String) r2
            r1.f7109a = r2
            r1.f7113e = r3
            r1.f7114f = r4
            r2 = 1
            r3 = 0
            if (r5 != 0) goto L29
            if (r4 == 0) goto L29
            int r5 = com.google.android.gms.internal.ads.cp1.f6080a
            r0 = 19
            if (r5 < r0) goto L24
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = r4.isFeatureSupported(r5)
            if (r5 == 0) goto L24
            r5 = 1
            goto L25
        L24:
            r5 = 0
        L25:
            if (r5 == 0) goto L29
            r5 = 1
            goto L2a
        L29:
            r5 = 0
        L2a:
            r1.f7110b = r5
            r5 = 21
            if (r4 == 0) goto L43
            int r0 = com.google.android.gms.internal.ads.cp1.f6080a
            if (r0 < r5) goto L3e
            java.lang.String r0 = "tunneled-playback"
            boolean r0 = r4.isFeatureSupported(r0)
            if (r0 == 0) goto L3e
            r0 = 1
            goto L3f
        L3e:
            r0 = 0
        L3f:
            if (r0 == 0) goto L43
            r0 = 1
            goto L44
        L43:
            r0 = 0
        L44:
            r1.f7111c = r0
            if (r6 != 0) goto L5d
            if (r4 == 0) goto L5c
            int r6 = com.google.android.gms.internal.ads.cp1.f6080a
            if (r6 < r5) goto L58
            java.lang.String r5 = "secure-playback"
            boolean r4 = r4.isFeatureSupported(r5)
            if (r4 == 0) goto L58
            r4 = 1
            goto L59
        L58:
            r4 = 0
        L59:
            if (r4 == 0) goto L5c
            goto L5d
        L5c:
            r2 = 0
        L5d:
            r1.f7112d = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hl1.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    public static hl1 a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new hl1(str, str2, codecCapabilities, z, z2);
    }

    public static hl1 b(String str) {
        return new hl1(str, null, null, false, false);
    }

    private final void c(String str) {
        String str2 = this.f7109a;
        String str3 = this.f7113e;
        String str4 = cp1.f6084e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        sb.toString();
    }

    public final MediaCodecInfo.CodecProfileLevel[] a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7114f;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @TargetApi(21)
    public final boolean b(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7114f;
        if (codecCapabilities == null) {
            c("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            c("channelCount.aCaps");
            return false;
        }
        if (audioCapabilities.getMaxInputChannelCount() >= i2) {
            return true;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("channelCount.support, ");
        sb.append(i2);
        c(sb.toString());
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hl1.a(java.lang.String):boolean");
    }

    @TargetApi(21)
    public final boolean a(int i2, int i3, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7114f;
        if (codecCapabilities == null) {
            c("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("sizeAndRate.vCaps");
            return false;
        }
        if (a(videoCapabilities, i2, i3, d2)) {
            return true;
        }
        if (i2 < i3 && a(videoCapabilities, i3, i2, d2)) {
            StringBuilder sb = new StringBuilder(69);
            sb.append("sizeAndRate.rotated, ");
            sb.append(i2);
            sb.append("x");
            sb.append(i3);
            sb.append("x");
            sb.append(d2);
            String sb2 = sb.toString();
            String str = this.f7109a;
            String str2 = this.f7113e;
            String str3 = cp1.f6084e;
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 25 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
            sb3.append("AssumedSupport [");
            sb3.append(sb2);
            sb3.append("] [");
            sb3.append(str);
            sb3.append(", ");
            sb3.append(str2);
            sb3.append("] [");
            sb3.append(str3);
            sb3.append("]");
            sb3.toString();
            return true;
        }
        StringBuilder sb4 = new StringBuilder(69);
        sb4.append("sizeAndRate.support, ");
        sb4.append(i2);
        sb4.append("x");
        sb4.append(i3);
        sb4.append("x");
        sb4.append(d2);
        c(sb4.toString());
        return false;
    }

    @TargetApi(21)
    public final Point a(int i2, int i3) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7114f;
        if (codecCapabilities == null) {
            c("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(cp1.a(i2, widthAlignment) * widthAlignment, cp1.a(i3, heightAlignment) * heightAlignment);
    }

    @TargetApi(21)
    public final boolean a(int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f7114f;
        if (codecCapabilities == null) {
            c("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            c("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i2)) {
            return true;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("sampleRate.support, ");
        sb.append(i2);
        c(sb.toString());
        return false;
    }

    @TargetApi(21)
    private static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i3, double d2) {
        if (d2 != -1.0d && d2 > 0.0d) {
            return videoCapabilities.areSizeAndRateSupported(i2, i3, d2);
        }
        return videoCapabilities.isSizeSupported(i2, i3);
    }
}
