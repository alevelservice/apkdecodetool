package io.flutter.plugins.imagepicker;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: ImageResizer.java */
/* loaded from: classes2.dex */
class g {

    /* renamed from: a, reason: collision with root package name */
    private final File f19499a;

    /* renamed from: b, reason: collision with root package name */
    private final a f19500b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(File file, a aVar) {
        this.f19499a = file;
        this.f19500b = aVar;
    }

    private File b(String str, Double d2, Double d3) {
        Bitmap decodeFile = BitmapFactory.decodeFile(str);
        double width = decodeFile.getWidth();
        Double.isNaN(width);
        double d4 = width * 1.0d;
        double height = decodeFile.getHeight();
        Double.isNaN(height);
        double d5 = height * 1.0d;
        boolean z = d2 != null;
        boolean z2 = d3 != null;
        Double valueOf = Double.valueOf(z ? Math.min(d4, d2.doubleValue()) : d4);
        Double valueOf2 = Double.valueOf(z2 ? Math.min(d5, d3.doubleValue()) : d5);
        if ((z && (d2.doubleValue() > d4 ? 1 : (d2.doubleValue() == d4 ? 0 : -1)) < 0) || (z2 && (d3.doubleValue() > d5 ? 1 : (d3.doubleValue() == d5 ? 0 : -1)) < 0)) {
            double doubleValue = (valueOf2.doubleValue() / d5) * d4;
            double doubleValue2 = (valueOf.doubleValue() / d4) * d5;
            if (valueOf.doubleValue() < valueOf2.doubleValue()) {
                if (!z) {
                    valueOf = Double.valueOf(doubleValue);
                } else {
                    valueOf2 = Double.valueOf(doubleValue2);
                }
            } else if (valueOf2.doubleValue() < valueOf.doubleValue()) {
                if (!z2) {
                    valueOf2 = Double.valueOf(doubleValue2);
                } else {
                    valueOf = Double.valueOf(doubleValue);
                }
            } else if (d4 < d5) {
                valueOf = Double.valueOf(doubleValue);
            } else if (d5 < d4) {
                valueOf2 = Double.valueOf(doubleValue2);
            }
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile, valueOf.intValue(), valueOf2.intValue(), false);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createScaledBitmap.compress(decodeFile.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        String[] split = str.split("/");
        String str2 = split[split.length - 1];
        File file = new File(this.f19499a, "/scaled_" + str2);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(byteArrayOutputStream.toByteArray());
        fileOutputStream.close();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str, Double d2, Double d3) {
        if (!((d2 == null && d3 == null) ? false : true)) {
            return str;
        }
        try {
            File b2 = b(str, d2, d3);
            this.f19500b.a(str, b2.getPath());
            return b2.getPath();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }
}
