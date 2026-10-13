package com.alipay.mobile.security.bio.utils;

import android.hardware.Camera;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CamParaUtil {
    private static CamParaUtil myCamPara;
    private CameraSizeComparator sizeComparator = new CameraSizeComparator();

    /* loaded from: classes.dex */
    public class CameraSizeComparator implements Comparator<Camera.Size> {
        public CameraSizeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Camera.Size size, Camera.Size size2) {
            int i2 = size.width;
            int i3 = size2.width;
            if (i2 == i3) {
                return 0;
            }
            return i2 > i3 ? 1 : -1;
        }
    }

    private CamParaUtil() {
    }

    public static Map<String, String> getCameraResolution() {
        HashMap hashMap = new HashMap();
        new ArrayList();
        try {
            int numberOfCameras = Camera.getNumberOfCameras();
            for (int i2 = 0; i2 < numberOfCameras; i2++) {
                Camera open = Camera.open(i2);
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i2, cameraInfo);
                if (cameraInfo.facing == 1) {
                    Camera.Size size = open.getParameters().getSupportedPictureSizes().get(0);
                    hashMap.put("frontCamera", size.width + "*" + size.height);
                } else if (cameraInfo.facing == 0) {
                    Camera.Size size2 = open.getParameters().getSupportedPictureSizes().get(0);
                    hashMap.put("backCamera", size2.width + "*" + size2.height);
                }
                if (open != null) {
                    open.release();
                }
            }
        } catch (Exception unused) {
        }
        return hashMap;
    }

    private float getEqualRate(Camera.Size size, float f2) {
        return Math.abs((size.width / size.height) - f2);
    }

    public static synchronized CamParaUtil getInstance() {
        synchronized (CamParaUtil.class) {
            if (myCamPara == null) {
                myCamPara = new CamParaUtil();
                return myCamPara;
            }
            return myCamPara;
        }
    }

    public boolean equalRate(Camera.Size size, float f2) {
        return ((double) Math.abs((((float) size.width) / ((float) size.height)) - f2)) <= 0.03d;
    }

    public Camera.Size getPropPictureSize(List<Camera.Size> list, float f2, int i2) {
        if (list == null) {
            return null;
        }
        Collections.sort(list, this.sizeComparator);
        int i3 = 0;
        int i4 = 0;
        float f3 = 0.0f;
        for (Camera.Size size : list) {
            if (size.width >= i2) {
                if (i3 == 0) {
                    f3 = getEqualRate(size, f2);
                    i3 = i4;
                }
                if (f3 > getEqualRate(size, f2)) {
                    f3 = getEqualRate(size, f2);
                    i3 = i4;
                }
            }
            i4++;
        }
        return list.get(i3);
    }

    public Camera.Size getPropPreviewSize(List<Camera.Size> list, float f2, int i2) {
        if (list == null) {
            return null;
        }
        Collections.sort(list, this.sizeComparator);
        int i3 = 0;
        Iterator<Camera.Size> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            if (next.width >= i2 && equalRate(next, f2)) {
                String str = "PreviewSize:w = " + next.width + "h = " + next.height;
                break;
            }
            i3++;
        }
        if (i3 == list.size()) {
            i3 = list.size() - 1;
        }
        return list.get(i3);
    }

    public void printSupportFocusMode(Camera.Parameters parameters) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (supportedFocusModes == null) {
            return;
        }
        Iterator<String> it = supportedFocusModes.iterator();
        while (it.hasNext()) {
            String str = "focusModes--" + it.next();
        }
    }

    public void printSupportPictureSize(Camera.Parameters parameters) {
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        if (supportedPictureSizes == null) {
            return;
        }
        for (int i2 = 0; i2 < supportedPictureSizes.size(); i2++) {
            Camera.Size size = supportedPictureSizes.get(i2);
            String str = "pictureSizes:width = " + size.width + " height = " + size.height;
        }
    }

    public void printSupportPreviewSize(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        if (supportedPreviewSizes == null) {
            return;
        }
        for (int i2 = 0; i2 < supportedPreviewSizes.size(); i2++) {
            Camera.Size size = supportedPreviewSizes.get(i2);
            String str = "previewSizes:width = " + size.width + " height = " + size.height;
        }
    }

    public Camera.Size getPropPreviewSize(List<Camera.Size> list, int i2, int i3) {
        if (list == null) {
            return null;
        }
        Collections.sort(list, this.sizeComparator);
        for (Camera.Size size : list) {
            if (size.width >= i2 && size.height >= i3) {
                String str = "PreviewSize:w = " + size.width + "h = " + size.height;
                return size;
            }
        }
        return null;
    }
}
