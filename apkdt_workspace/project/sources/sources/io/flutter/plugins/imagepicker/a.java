package io.flutter.plugins.imagepicker;

import android.media.ExifInterface;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: ExifDataCopier.java */
/* loaded from: classes2.dex */
class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        try {
            ExifInterface exifInterface = new ExifInterface(str);
            ExifInterface exifInterface2 = new ExifInterface(str2);
            Iterator it = Arrays.asList("FNumber", "ExposureTime", "ISOSpeedRatings", "GPSAltitude", "GPSAltitudeRef", "FocalLength", "GPSDateStamp", "WhiteBalance", "GPSProcessingMethod", "GPSTimeStamp", "DateTime", "Flash", "GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "Make", "Model", "Orientation").iterator();
            while (it.hasNext()) {
                a(exifInterface, exifInterface2, (String) it.next());
            }
            exifInterface2.saveAttributes();
        } catch (Exception e2) {
            String str3 = "Error preserving Exif data on selected image: " + e2;
        }
    }

    private static void a(ExifInterface exifInterface, ExifInterface exifInterface2, String str) {
        if (exifInterface.getAttribute(str) != null) {
            exifInterface2.setAttribute(str, exifInterface.getAttribute(str));
        }
    }
}
