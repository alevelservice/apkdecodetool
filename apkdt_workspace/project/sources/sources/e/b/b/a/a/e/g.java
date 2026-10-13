package e.b.b.a.a.e;

import android.os.Environment;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* compiled from: FileUtil.java */
/* loaded from: classes.dex */
public class g {
    public static boolean a() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable th) {
            String str = "isCanUseSdCard: " + th;
            return false;
        }
    }

    public static void b(File file) {
        if (file == null) {
            return;
        }
        try {
            if (file.exists() && file.isFile()) {
                file.delete();
            }
        } catch (Throwable unused) {
            String str = "deleteFileNotDir: " + file.getAbsolutePath();
        }
    }

    public static long c(File file) {
        long c2;
        if (file != null && file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    long j2 = 0;
                    for (File file2 : listFiles) {
                        if (file2 != null && file2.exists()) {
                            if (file2.isFile()) {
                                c2 = file2.length();
                            } else {
                                c2 = c(file2);
                            }
                            j2 += c2;
                        }
                    }
                    return j2;
                }
                return 0L;
            } catch (Throwable unused) {
                file.getAbsolutePath();
            }
        }
        return 0L;
    }

    public static void a(File file, String str, boolean z) {
        try {
            a(file, str.getBytes("UTF-8"), z);
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    public static void b(File file, File file2) {
        FileChannel fileChannel;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileChannel fileChannel2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileChannel = fileInputStream.getChannel();
                try {
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        fileChannel2 = fileOutputStream.getChannel();
                        fileChannel.transferTo(0L, fileChannel.size(), fileChannel2);
                        if (file2.exists()) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused) {
                            }
                            if (fileChannel != null) {
                                try {
                                    fileChannel.close();
                                } catch (Throwable unused2) {
                                }
                            }
                            try {
                                fileOutputStream.close();
                            } catch (Throwable unused3) {
                            }
                            if (fileChannel2 != null) {
                                try {
                                    fileChannel2.close();
                                    return;
                                } catch (Throwable unused4) {
                                    return;
                                }
                            }
                            return;
                        }
                        throw new RuntimeException("copy file fail");
                    } catch (Throwable th) {
                        th = th;
                        try {
                            throw new IOException(th);
                        } finally {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileChannel = null;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileChannel = null;
            fileInputStream = null;
            fileOutputStream = null;
        }
    }

    public static void a(File file, byte[] bArr, boolean z) {
        FileOutputStream fileOutputStream = null;
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, z);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                try {
                    fileOutputStream2.close();
                } catch (Throwable unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    throw new IOException(th);
                } catch (Throwable th2) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String a(File file) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                String str = new String(bArr, "UTF-8");
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                return str;
            } catch (Throwable th) {
                th = th;
                try {
                    throw new IOException(th);
                } catch (Throwable th2) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static void a(File file, File file2) {
        try {
            if (!file.renameTo(file2)) {
                b(file, file2);
                file.delete();
            }
            if (file.exists() || !file2.exists()) {
                throw new Exception("move file fail");
            }
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    public static boolean a(byte[] bArr, byte[] bArr2, File file) {
        BufferedOutputStream bufferedOutputStream;
        FileOutputStream fileOutputStream;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            fileOutputStream = new FileOutputStream(file, true);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    dataOutputStream = new DataOutputStream(bufferedOutputStream);
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                bufferedOutputStream = null;
            }
        } catch (Throwable unused3) {
            bufferedOutputStream = null;
            fileOutputStream = null;
        }
        try {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.writeShort((short) bArr2.length);
            dataOutputStream.write(bArr2);
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
            a(dataOutputStream);
            a(bufferedOutputStream);
            a(fileOutputStream);
            return true;
        } catch (Throwable unused4) {
            dataOutputStream2 = dataOutputStream;
            a(dataOutputStream2);
            a(bufferedOutputStream);
            a(fileOutputStream);
            return false;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                e.b.b.a.a.d.i.d().a("FileUtil", e2.getMessage());
            }
        }
    }
}
