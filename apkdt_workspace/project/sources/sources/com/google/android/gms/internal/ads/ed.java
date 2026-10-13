package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ed {

    /* renamed from: b, reason: collision with root package name */
    private static List<MediaCodecInfo> f6399b;

    /* renamed from: a, reason: collision with root package name */
    private static Map<String, List<Map<String, Object>>> f6398a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private static final Object f6400c = new Object();

    @TargetApi(16)
    public static List<Map<String, Object>> a(String str) {
        synchronized (f6400c) {
            if (f6398a.containsKey(str)) {
                return f6398a.get(str);
            }
            try {
                synchronized (f6400c) {
                    if (f6399b == null) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            f6399b = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            int codecCount = MediaCodecList.getCodecCount();
                            f6399b = new ArrayList(codecCount);
                            for (int i2 = 0; i2 < codecCount; i2++) {
                                f6399b.add(MediaCodecList.getCodecInfoAt(i2));
                            }
                        } else {
                            f6399b = Collections.emptyList();
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (MediaCodecInfo mediaCodecInfo : f6399b) {
                    if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("codecName", mediaCodecInfo.getName());
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                        ArrayList arrayList2 = new ArrayList();
                        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                            arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                        }
                        hashMap.put("profileLevels", arrayList2);
                        if (Build.VERSION.SDK_INT >= 21) {
                            MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                            hashMap.put("bitRatesBps", a(videoCapabilities.getBitrateRange()));
                            hashMap.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                            hashMap.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                            hashMap.put("frameRates", a(videoCapabilities.getSupportedFrameRates()));
                            hashMap.put("widths", a(videoCapabilities.getSupportedWidths()));
                            hashMap.put("heights", a(videoCapabilities.getSupportedHeights()));
                        }
                        if (Build.VERSION.SDK_INT >= 23) {
                            hashMap.put("instancesLimit", Integer.valueOf(capabilitiesForType.getMaxSupportedInstances()));
                        }
                        arrayList.add(hashMap);
                    }
                }
                f6398a.put(str, arrayList);
                return arrayList;
            } catch (LinkageError | RuntimeException e2) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(HummerConstants.HUMMER_ERROR, e2.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(hashMap2);
                f6398a.put(str, arrayList3);
                return arrayList3;
            }
        }
    }

    @TargetApi(21)
    private static Integer[] a(Range<Integer> range) {
        return new Integer[]{range.getLower(), range.getUpper()};
    }
}
