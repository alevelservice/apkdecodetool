package com.alipay.zoloz.toyger.face;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Environment;
import com.alipay.zoloz.toyger.algorithm.TGDepthFrame;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FrameProcessor {
    public static final SimpleDateFormat DATE_FORMAT2 = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss-SSS", Locale.US);
    private static final boolean SAVE_BITMAP = false;
    private static final String TAG = "FrameProcessor";
    private TGDepthFrame mTgDepthFrame;
    private TGFrame mTgFrame;

    /* loaded from: classes.dex */
    static class LogFileNameFilter implements FilenameFilter {
        LogFileNameFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".bin");
        }
    }

    public static void bitmap2File(Bitmap bitmap, File file) {
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 90, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException | IOException unused) {
        }
    }

    @TargetApi(9)
    public static void clearOldBinFiles() {
        File file = new File(Environment.getExternalStorageDirectory(), "Download");
        if (file.exists()) {
            try {
                File[] listFiles = file.listFiles(new LogFileNameFilter());
                if (listFiles == null || listFiles.length <= 0) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(3L);
                for (File file2 : listFiles) {
                    if (file2.lastModified() < currentTimeMillis) {
                        String str = "Delete File : " + file2;
                        if (file2.delete()) {
                            file2.deleteOnExit();
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                e2.toString();
            }
        }
    }

    public static String getDetailDateFormat(long j2) {
        String format;
        synchronized (DATE_FORMAT2) {
            format = DATE_FORMAT2.format(new Date(j2));
        }
        return format;
    }

    public static synchronized boolean save(File file, byte[] bArr) {
        boolean z;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        synchronized (FrameProcessor.class) {
            z = false;
            if (file != null && bArr != null) {
                if (file.exists()) {
                    file.delete();
                } else {
                    try {
                        file.createNewFile();
                    } catch (IOException unused) {
                    }
                }
                BufferedOutputStream bufferedOutputStream2 = null;
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    } catch (IOException unused2) {
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (IOException unused3) {
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
                try {
                    bufferedOutputStream.write(bArr);
                    bufferedOutputStream.flush();
                    z = true;
                    close(bufferedOutputStream);
                } catch (IOException unused4) {
                    bufferedOutputStream2 = bufferedOutputStream;
                    close(bufferedOutputStream2);
                    close(fileOutputStream);
                    return z;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedOutputStream2 = bufferedOutputStream;
                    close(bufferedOutputStream2);
                    close(fileOutputStream);
                    throw th;
                }
                close(fileOutputStream);
            }
        }
        return z;
    }

    static void saveBitmap(TGFrame tGFrame, TGDepthFrame tGDepthFrame, ToygerFaceAttr toygerFaceAttr, String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearFrame() {
        this.mTgFrame = null;
        this.mTgDepthFrame = null;
    }

    public TGDepthFrame getTgDepthFrame() {
        return this.mTgDepthFrame;
    }

    public TGFrame getTgFrame() {
        return this.mTgFrame;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initFame(TGFrame tGFrame, TGDepthFrame tGDepthFrame) {
        this.mTgFrame = tGFrame;
        this.mTgDepthFrame = tGDepthFrame;
    }

    void saveBitmap(ToygerFaceAttr toygerFaceAttr, String str) {
        saveBitmap(this.mTgFrame, this.mTgDepthFrame, toygerFaceAttr, str);
    }

    public void saveTgDepthFrame(String str) {
        short[] sArr;
        File file = new File(Environment.getExternalStorageDirectory(), "Download");
        if (!file.exists() && !file.mkdirs()) {
            String str2 = "Failed to mkdirs: " + file;
        }
        String str3 = getDetailDateFormat(System.currentTimeMillis()) + "_" + str;
        TGDepthFrame tGDepthFrame = this.mTgDepthFrame;
        if (tGDepthFrame == null || tGDepthFrame.width <= 0 || tGDepthFrame.height <= 0 || (sArr = tGDepthFrame.data) == null || sArr.length <= 0) {
            return;
        }
        byte[] bArr = new byte[sArr.length * 2];
        ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().put(this.mTgDepthFrame.data);
        File file2 = new File(file, str3 + "_depth.bin");
        save(file2, bArr);
        String str4 = "Save file : " + file2 + ", tgDepthFrame.width=" + this.mTgDepthFrame.width + ", tgDepthFrame.height=" + this.mTgDepthFrame.height;
    }

    public void saveTgFrame(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), "Download");
        if (!file.exists() && !file.mkdirs()) {
            String str2 = "Failed to mkdirs: " + file;
        }
        String str3 = getDetailDateFormat(System.currentTimeMillis()) + "_" + str;
        byte[] bArr = this.mTgFrame.data;
        File file2 = new File(file, str3 + "_raw.bin");
        save(file2, bArr);
        String str4 = "Save file : " + file2 + ", tgFrame.width=" + this.mTgFrame.width + ", tgFrame.height=" + this.mTgFrame.height;
    }

    public static void saveBitmap(Bitmap bitmap, String str) {
        String str2 = getDetailDateFormat(System.currentTimeMillis()) + "_" + str + ".png";
        File file = new File(Environment.getExternalStorageDirectory(), "Download");
        if (!file.exists() && !file.mkdirs()) {
            String str3 = "Failed to mkdirs: " + file;
        }
        File file2 = new File(file, str2);
        bitmap2File(bitmap, file2);
        String str4 = "Save file : " + file2;
    }
}
