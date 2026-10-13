package com.alipay.zoloz.toyger.blob;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class BitmapHelper {
    public static final int FRAME_MODE_BGR = 2;
    public static final int FRAME_MODE_BGRA = 1;
    public static final int FRAME_MODE_NV21 = 0;
    public static final int FRAME_MODE_RGB = 4;
    public static final int FRAME_MODE_RGBA = 3;

    public static byte[] Bitmap2BytesEx(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return addBMP_RGB_888(iArr, width, height);
    }

    public static Bitmap RGBABytes2Bitmap(byte[] bArr, int i2, int i3) {
        Bitmap createBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArr));
        return createBitmap;
    }

    public static Bitmap RGBBytes2Bitmap(byte[] bArr, int i2, int i3) {
        int[] convertBytesToInts = convertBytesToInts(bArr);
        if (convertBytesToInts == null) {
            return null;
        }
        return Bitmap.createBitmap(convertBytesToInts, 0, i2, i2, i3, Bitmap.Config.ARGB_8888);
    }

    private static byte[] addBMP_RGB_888(int[] iArr, int i2, int i3) {
        byte[] bArr = new byte[i3 * i2 * 4];
        int length = iArr.length - 1;
        int i4 = 0;
        while (length >= i2) {
            int i5 = length - i2;
            for (int i6 = i5 + 1; i6 <= length; i6++) {
                bArr[i4] = (byte) (iArr[i6] >> 0);
                bArr[i4 + 1] = (byte) (iArr[i6] >> 8);
                bArr[i4 + 2] = (byte) (iArr[i6] >> 16);
                bArr[i4 + 3] = (byte) (iArr[i6] >> 24);
                i4 += 4;
            }
            length = i5;
        }
        return bArr;
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap != null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] bitmapToByteArray(Bitmap bitmap, int i2) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
            try {
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap bytes2Bitmap(byte[] bArr, int i2, int i3, int i4) {
        if (i4 == 0) {
            return getYUVBitmap(bArr, i2, i3);
        }
        if (i4 == 1 || i4 == 2) {
            return null;
        }
        if (i4 == 3) {
            return RGBABytes2Bitmap(bArr, i2, i3);
        }
        if (i4 != 4) {
            return null;
        }
        return RGBBytes2Bitmap(bArr, i2, i3);
    }

    public static byte[] compressRGBAImage(byte[] bArr, int i2, int i3, int i4, int i5) {
        byte[] bArr2;
        Bitmap RGBABytes2Bitmap = RGBABytes2Bitmap(bArr, i2, i3);
        if (i4 != 90 && i4 != 270) {
            bArr2 = bitmapToByteArray(RGBABytes2Bitmap, i5);
        } else {
            Matrix matrix = new Matrix();
            matrix.setRotate(i4);
            Bitmap createBitmap = Bitmap.createBitmap(RGBABytes2Bitmap, 0, 0, RGBABytes2Bitmap.getWidth(), RGBABytes2Bitmap.getHeight(), matrix, true);
            byte[] bitmapToByteArray = bitmapToByteArray(createBitmap, i5);
            createBitmap.recycle();
            bArr2 = bitmapToByteArray;
        }
        RGBABytes2Bitmap.recycle();
        return bArr2;
    }

    public static byte[] compressRGBImage(byte[] bArr, int i2, int i3, int i4, int i5) {
        byte[] bArr2;
        Bitmap RGBBytes2Bitmap = RGBBytes2Bitmap(bArr, i2, i3);
        if (i4 != 90 && i4 != 270) {
            bArr2 = bitmapToByteArray(RGBBytes2Bitmap, i5);
        } else {
            Matrix matrix = new Matrix();
            matrix.setRotate(i4);
            Bitmap createBitmap = Bitmap.createBitmap(RGBBytes2Bitmap, 0, 0, RGBBytes2Bitmap.getWidth(), RGBBytes2Bitmap.getHeight(), matrix, true);
            byte[] bitmapToByteArray = bitmapToByteArray(createBitmap, i5);
            createBitmap.recycle();
            bArr2 = bitmapToByteArray;
        }
        RGBBytes2Bitmap.recycle();
        return bArr2;
    }

    public static int convertByteToInt(byte b2) {
        return (((b2 >> 4) & 15) * 16) + (b2 & 15);
    }

    public static int[] convertBytesToInts(byte[] bArr) {
        int i2;
        int length = bArr.length;
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        int i4 = length % 3 != 0 ? 1 : 0;
        int[] iArr = new int[(length / 3) + i4];
        int length2 = iArr.length;
        if (i4 == 0) {
            while (i3 < length2) {
                int i5 = i3 * 3;
                iArr[i3] = convertByteToInt(bArr[i5 + 2]) | (convertByteToInt(bArr[i5]) << 16) | (convertByteToInt(bArr[i5 + 1]) << 8) | (-16777216);
                i3++;
            }
        } else {
            while (true) {
                i2 = length2 - 1;
                if (i3 >= i2) {
                    break;
                }
                int i6 = i3 * 3;
                iArr[i3] = convertByteToInt(bArr[i6 + 2]) | (convertByteToInt(bArr[i6]) << 16) | (convertByteToInt(bArr[i6 + 1]) << 8) | (-16777216);
                i3++;
            }
            iArr[i2] = -16777216;
        }
        return iArr;
    }

    public static Bitmap cropBitmap(Bitmap bitmap, Rect rect) {
        if (bitmap == null) {
            return null;
        }
        try {
            bitmap.getWidth();
            bitmap.getHeight();
            return recycle(Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top), bitmap);
        } catch (OutOfMemoryError unused) {
            return bitmap;
        }
    }

    public static Bitmap getBitmap(byte[] bArr, int i2, int i3) {
        if (bArr == 0) {
            return null;
        }
        int length = bArr.length / 3;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i4 * 3;
            int i6 = bArr[i5];
            int i7 = bArr[i5 + 1];
            int i8 = bArr[i5 + 2];
            if (i6 < 0) {
                i6 += 256;
            }
            if (i7 < 0) {
                i7 += 256;
            }
            if (i8 < 0) {
                i8 += 256;
            }
            iArr[i4] = Color.rgb(i6, i7, i8);
        }
        return Bitmap.createBitmap(iArr, i2, i3, Bitmap.Config.ARGB_8888);
    }

    public static Bitmap getYUVBitmap(byte[] bArr, int i2, int i3) {
        try {
            YuvImage yuvImage = new YuvImage(bArr, 17, i2, i3, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, i2, i3), 100, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        } catch (OutOfMemoryError | Error unused) {
            return null;
        }
    }

    public static byte[] processImage(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
        if (i2 == 0) {
            return rotateYUVImage(bArr, i3, i4, i5, i6);
        }
        if (i2 == 1 || i2 == 2) {
            return null;
        }
        if (i2 == 3) {
            return compressRGBAImage(bArr, i3, i4, i5, i6);
        }
        if (i2 != 4) {
            return null;
        }
        return compressRGBImage(bArr, i3, i4, i5, i6);
    }

    public static Bitmap readBitMap(Context context, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        return BitmapFactory.decodeStream(context.getResources().openRawResource(i2), null, options);
    }

    public static void recycle(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public static Bitmap resize(Bitmap bitmap, int i2, int i3) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i2 / width, i3 / height);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        bitmap.recycle();
        return createBitmap;
    }

    public static Bitmap reverseBitmap(Bitmap bitmap, int i2) {
        if (bitmap == null) {
            return null;
        }
        float[] fArr = i2 != 0 ? new float[]{1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f} : new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        Matrix matrix = new Matrix();
        matrix.setValues(fArr);
        return recycle(Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true), bitmap);
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, int i2) {
        if (bitmap == null) {
            return null;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            Matrix matrix = new Matrix();
            matrix.setRotate(i2);
            return recycle(Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false), bitmap);
        } catch (OutOfMemoryError unused) {
            return bitmap;
        }
    }

    private static byte[] rotateYUV420Degree180(byte[] bArr, int i2, int i3) {
        int i4 = i2 * i3;
        int i5 = (i4 * 3) / 2;
        byte[] bArr2 = new byte[i5];
        int i6 = 0;
        for (int i7 = i4 - 1; i7 >= 0; i7--) {
            bArr2[i6] = bArr[i7];
            i6++;
        }
        for (int i8 = i5 - 1; i8 >= i4; i8 -= 2) {
            int i9 = i6 + 1;
            bArr2[i6] = bArr[i8 - 1];
            i6 = i9 + 1;
            bArr2[i9] = bArr[i8];
        }
        return bArr2;
    }

    public static byte[] rotateYUV420Degree270(byte[] bArr, int i2, int i3) {
        return rotateYUV420Degree180(rotateYUV420Degree90(bArr, i2, i3), i2, i3);
    }

    private static byte[] rotateYUV420Degree90(byte[] bArr, int i2, int i3) {
        int i4 = i2 * i3;
        int i5 = (i4 * 3) / 2;
        byte[] bArr2 = new byte[i5];
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            for (int i8 = i3 - 1; i8 >= 0; i8--) {
                bArr2[i6] = bArr[(i8 * i2) + i7];
                i6++;
            }
        }
        int i9 = i5 - 1;
        int i10 = i2 - 1;
        while (i10 > 0) {
            int i11 = i9;
            for (int i12 = 0; i12 < i3 / 2; i12++) {
                int i13 = (i12 * i2) + i4;
                bArr2[i11] = bArr[i13 + i10];
                int i14 = i11 - 1;
                bArr2[i14] = bArr[i13 + (i10 - 1)];
                i11 = i14 - 1;
            }
            i10 -= 2;
            i9 = i11;
        }
        return bArr2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(1:3)(2:15|(1:17)(7:18|5|(1:7)|8|9|10|11))|4|5|(0)|8|9|10|11) */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] rotateYUVImage(byte[] r7, int r8, int r9, int r10, int r11) {
        /*
            r0 = 90
            if (r10 != r0) goto La
            byte[] r7 = rotateYUV420Degree270(r7, r8, r9)
        L8:
            r1 = r7
            goto L17
        La:
            r0 = 270(0x10e, float:3.78E-43)
            if (r10 != r0) goto L13
            byte[] r7 = rotateYUV420Degree90(r7, r8, r9)
            goto L8
        L13:
            r1 = r7
            r6 = r9
            r9 = r8
            r8 = r6
        L17:
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream
            r7.<init>()
            if (r1 == 0) goto L32
            android.graphics.YuvImage r10 = new android.graphics.YuvImage
            r2 = 17
            r5 = 0
            r0 = r10
            r3 = r9
            r4 = r8
            r0.<init>(r1, r2, r3, r4, r5)
            android.graphics.Rect r0 = new android.graphics.Rect
            r1 = 0
            r0.<init>(r1, r1, r9, r8)
            r10.compressToJpeg(r0, r11, r7)
        L32:
            r7.close()     // Catch: java.io.IOException -> L35
        L35:
            byte[] r7 = r7.toByteArray()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.zoloz.toyger.blob.BitmapHelper.rotateYUVImage(byte[], int, int, int, int):byte[]");
    }

    public static Bitmap zoomBitmap(Bitmap bitmap, int i2, int i3) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i2 / width, i3 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    private static Bitmap recycle(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null) {
            return bitmap2;
        }
        if (bitmap != bitmap2) {
            bitmap2.recycle();
        }
        return bitmap;
    }

    public static Bitmap bytes2Bitmap(byte[] bArr) {
        if (bArr.length != 0) {
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }
        return null;
    }

    public static Bitmap getYUVBitmap(byte[] bArr, int i2, int i3, int i4) {
        YuvImage yuvImage = new YuvImage(bArr, 17, i2, i3, null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(new Rect(0, 0, i2, i3), i4, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap resize(Bitmap bitmap, int i2) {
        if (bitmap == null) {
            return null;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float f2 = i2 / width;
            Matrix matrix = new Matrix();
            matrix.postScale(f2, f2);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
            bitmap.recycle();
            return createBitmap;
        } catch (OutOfMemoryError unused) {
            return bitmap;
        }
    }
}
