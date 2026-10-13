package com.alipay.mobile.security.bio.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Scanner;

/* loaded from: classes.dex */
public class FileUtil {
    public static final int STREAM_BUFFER_SIZE = 8192;

    public static String assetsToString(Context context, String str) {
        try {
            Scanner useDelimiter = new Scanner(context.getAssets().open(str)).useDelimiter("\\A");
            return useDelimiter.hasNext() ? useDelimiter.next() : "";
        } catch (IOException unused) {
            return null;
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

    public static byte[] bitmapToByteArray(Bitmap bitmap, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void closeSafely(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void copyDirectory(String str, String str2) {
        File file = new File(str);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            for (int i2 = 0; i2 < listFiles.length; i2++) {
                String str3 = str + File.separator + listFiles[i2].getName();
                String str4 = str2 + File.separator + listFiles[i2].getName();
                File file2 = new File(str2);
                if (!file2.exists()) {
                    file2.mkdir();
                }
                copyDirectory(str3, str4);
            }
            return;
        }
        if (file.isFile()) {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(str)));
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
            byte[] bArr = new byte[524288];
            while (dataInputStream.read(bArr) != -1) {
                dataOutputStream.write(bArr);
            }
            dataInputStream.close();
            dataOutputStream.close();
        }
    }

    public static File extractAssets(Context context, String str) {
        AssetManager assets = context.getAssets();
        File file = new File(context.getFilesDir().getAbsolutePath());
        file.mkdirs();
        File file2 = new File(file, str);
        try {
            if (assets.list(str) != null) {
                streamToStream(assets.open(str), new FileOutputStream(file2));
            }
        } catch (IOException unused) {
        }
        return file2;
    }

    public static byte[] getAssetsData(Context context, String str) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        r0 = null;
        byte[] bArr = null;
        try {
            inputStream = context.getAssets().open(str);
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArr = InputStreamUtils.input2byte(inputStream);
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            InputStreamUtils.close(inputStream2);
            throw th;
        }
        InputStreamUtils.close(inputStream);
        return bArr;
    }

    public static byte[] getRawData(Context context, int i2) {
        InputStream inputStream;
        byte[] bArr = null;
        try {
            inputStream = context.getResources().openRawResource(i2);
            try {
                try {
                    bArr = InputStreamUtils.input2byte(inputStream);
                } catch (IOException e2) {
                    e = e2;
                    e.toString();
                    InputStreamUtils.close(inputStream);
                    return bArr;
                }
            } catch (Throwable th) {
                th = th;
                InputStreamUtils.close(inputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            InputStreamUtils.close(inputStream);
            throw th;
        }
        InputStreamUtils.close(inputStream);
        return bArr;
    }

    public static void recursionDeleteFile(File file) {
        if (file == null) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file2 : listFiles) {
                    recursionDeleteFile(file2);
                }
                file.delete();
                return;
            }
            file.delete();
        }
    }

    public static synchronized boolean save(File file, byte[] bArr) {
        boolean z;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        synchronized (FileUtil.class) {
            z = false;
            if (file != null && bArr != null) {
                if (file.exists()) {
                    file.delete();
                } else {
                    try {
                        file.createNewFile();
                    } catch (IOException e2) {
                        e2.toString();
                    }
                }
                BufferedOutputStream bufferedOutputStream2 = null;
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        try {
                            bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                        } catch (IOException e3) {
                            e = e3;
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        bufferedOutputStream.write(bArr);
                        bufferedOutputStream.flush();
                        z = true;
                        OutputStreamUtils.close(bufferedOutputStream);
                    } catch (IOException e4) {
                        e = e4;
                        bufferedOutputStream2 = bufferedOutputStream;
                        e.toString();
                        OutputStreamUtils.close(bufferedOutputStream2);
                        OutputStreamUtils.close(fileOutputStream);
                        return z;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream2 = bufferedOutputStream;
                        OutputStreamUtils.close(bufferedOutputStream2);
                        OutputStreamUtils.close(fileOutputStream);
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
                OutputStreamUtils.close(fileOutputStream);
            }
        }
        return z;
    }

    public static synchronized void saveContent(File file, String str, boolean z) {
        BufferedWriter bufferedWriter;
        synchronized (FileUtil.class) {
            if (file == null && str == null) {
                throw new BioIllegalArgumentException();
            }
            if (!file.exists()) {
                try {
                    file.getParentFile().mkdirs();
                    file.createNewFile();
                } catch (IOException e2) {
                    e2.toString();
                }
            }
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, z)));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e3) {
                e = e3;
            }
            try {
                bufferedWriter.write(str);
                try {
                    bufferedWriter.close();
                } catch (IOException e4) {
                    e = e4;
                    e.toString();
                }
            } catch (Exception e5) {
                e = e5;
                bufferedWriter2 = bufferedWriter;
                e.toString();
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.close();
                    } catch (IOException e6) {
                        e = e6;
                        e.toString();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.close();
                    } catch (IOException e7) {
                        e7.toString();
                    }
                }
                throw th;
            }
        }
    }

    public static boolean streamToStream(InputStream inputStream, OutputStream outputStream) {
        boolean z = false;
        try {
            byte[] bArr = new byte[STREAM_BUFFER_SIZE];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
            }
            outputStream.flush();
            z = true;
        } catch (Exception unused) {
        } catch (Throwable th) {
            closeSafely(outputStream);
            closeSafely(inputStream);
            throw th;
        }
        closeSafely(outputStream);
        closeSafely(inputStream);
        return z;
    }

    public static synchronized byte[] toByteArray(String str) {
        BufferedInputStream bufferedInputStream;
        byte[] byteArray;
        synchronized (FileUtil.class) {
            File file = new File(str);
            if (file.exists()) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) file.length());
                BufferedInputStream bufferedInputStream2 = null;
                try {
                    try {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr, 0, 1024);
                        if (-1 != read) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        } else {
                            byteArray = byteArrayOutputStream.toByteArray();
                            InputStreamUtils.close(bufferedInputStream);
                            OutputStreamUtils.close(byteArrayOutputStream);
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    bufferedInputStream2 = bufferedInputStream;
                    e.toString();
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream2 = bufferedInputStream;
                    InputStreamUtils.close(bufferedInputStream2);
                    OutputStreamUtils.close(byteArrayOutputStream);
                    throw th;
                }
            } else {
                throw new FileNotFoundException(str);
            }
        }
        return byteArray;
    }

    public static byte[] getAssetsData(Resources resources, String str) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        r0 = null;
        byte[] bArr = null;
        try {
            inputStream = resources.getAssets().open(str);
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArr = InputStreamUtils.input2byte(inputStream);
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            InputStreamUtils.close(inputStream2);
            throw th;
        }
        InputStreamUtils.close(inputStream);
        return bArr;
    }
}
