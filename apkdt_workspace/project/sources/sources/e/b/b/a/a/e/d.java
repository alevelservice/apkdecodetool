package e.b.b.a.a.e;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* compiled from: DeviceHWInfo.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final FileFilter f17052a = new e();

    /* renamed from: b, reason: collision with root package name */
    static int f17053b = -100;

    /* renamed from: c, reason: collision with root package name */
    static long f17054c = -100;

    /* renamed from: d, reason: collision with root package name */
    static int f17055d = -100;

    static {
        String.valueOf(-100);
    }

    public static int a() {
        int i2 = f17055d;
        if (i2 == -1) {
            return i2;
        }
        if (i2 == -100) {
            synchronized (d.class) {
                if (Build.VERSION.SDK_INT <= 10) {
                    f17055d = 1;
                    return f17055d;
                }
                try {
                    f17055d = a("/sys/devices/system/cpu/possible");
                    if (f17055d == -1) {
                        f17055d = a("/sys/devices/system/cpu/present");
                    }
                    if (f17055d == -1) {
                        f17055d = d();
                    }
                } catch (Throwable unused) {
                    f17055d = -1;
                }
            }
        }
        return f17055d;
    }

    private static int b(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    public static String c() {
        String str;
        try {
            str = Build.BRAND.toLowerCase();
        } catch (Throwable unused) {
            str = "";
        }
        return TextUtils.isEmpty(str) ? "unknown" : str;
    }

    private static int d() {
        return new File("/sys/devices/system/cpu/").listFiles(f17052a).length;
    }

    public static int b() {
        int i2 = f17053b;
        if (i2 == -1) {
            return i2;
        }
        if (i2 == -100) {
            synchronized (d.class) {
                for (int i3 = 0; i3 < a(); i3++) {
                    try {
                        File file = new File("/sys/devices/system/cpu/cpu" + i3 + "/cpufreq/cpuinfo_max_freq");
                        if (file.exists()) {
                            byte[] bArr = new byte[128];
                            FileInputStream fileInputStream = new FileInputStream(file);
                            try {
                                fileInputStream.read(bArr);
                                int i4 = 0;
                                while (Character.isDigit(bArr[i4]) && i4 < bArr.length) {
                                    i4++;
                                }
                                Integer valueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i4)));
                                if (valueOf.intValue() > f17053b) {
                                    f17053b = valueOf.intValue();
                                }
                            } catch (NumberFormatException unused) {
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable unused2) {
                                }
                                throw th;
                            }
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused3) {
                            }
                        }
                    } catch (IOException unused4) {
                        f17053b = -1;
                    }
                }
                if (f17053b == -100) {
                    FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
                    try {
                        int a2 = a("cpu MHz", fileInputStream2) * 1000;
                        if (a2 > f17053b) {
                            f17053b = a2;
                        }
                    } finally {
                        try {
                            fileInputStream2.close();
                        } catch (Throwable unused5) {
                        }
                    }
                }
            }
        }
        return f17053b;
    }

    private static int a(String str) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (IOException unused) {
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            int b2 = b(new BufferedReader(new InputStreamReader(fileInputStream)).readLine());
            try {
                fileInputStream.close();
            } catch (Throwable unused2) {
            }
            return b2;
        } catch (IOException unused3) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused4) {
                }
            }
            return -1;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused5) {
                }
            }
            throw th;
        }
    }

    @TargetApi(16)
    public static long a(Context context) {
        long j2;
        long j3 = f17054c;
        if (j3 == -1) {
            return j3;
        }
        if (j3 == -100) {
            synchronized (d.class) {
                try {
                    if (Build.VERSION.SDK_INT >= 16) {
                        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
                        f17054c = memoryInfo.totalMem;
                    } else {
                        try {
                            FileInputStream fileInputStream = new FileInputStream("/proc/meminfo");
                            try {
                                j2 = a("MemTotal", fileInputStream) * 1024;
                            } finally {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable unused) {
                                }
                            }
                        } catch (IOException unused2) {
                            j2 = -1;
                        }
                        f17054c = j2;
                    }
                } catch (Throwable unused3) {
                    f17054c = -1L;
                }
            }
        }
        return f17054c;
    }

    private static int a(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int read = fileInputStream.read(bArr);
            int i2 = 0;
            while (i2 < read) {
                if (bArr[i2] == 10 || i2 == 0) {
                    if (bArr[i2] == 10) {
                        i2++;
                    }
                    for (int i3 = i2; i3 < read; i3++) {
                        int i4 = i3 - i2;
                        if (bArr[i3] != str.charAt(i4)) {
                            break;
                        }
                        if (i4 == str.length() - 1) {
                            return a(bArr, i3);
                        }
                    }
                }
                i2++;
            }
            return -1;
        } catch (IOException | NumberFormatException unused) {
            return -1;
        }
    }

    private static int a(byte[] bArr, int i2) {
        while (i2 < bArr.length && bArr[i2] != 10) {
            if (Character.isDigit(bArr[i2])) {
                int i3 = i2 + 1;
                while (i3 < bArr.length && Character.isDigit(bArr[i3])) {
                    i3++;
                }
                return Integer.parseInt(new String(bArr, 0, i2, i3 - i2));
            }
            i2++;
        }
        return -1;
    }
}
