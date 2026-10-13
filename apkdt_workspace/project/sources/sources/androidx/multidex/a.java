package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

/* compiled from: MultiDex.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Set<File> f2500a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f2501b = a(System.getProperty("java.vm.version"));

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiDex.java */
    /* loaded from: classes.dex */
    public static final class c {
        static void a(ClassLoader classLoader, List<? extends File> list) {
            int size = list.size();
            Field b2 = a.b(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) b2.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = next;
                zipFileArr[previousIndex] = new ZipFile(next);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            b2.set(classLoader, sb.toString());
            a.b(classLoader, "mPaths", strArr);
            a.b(classLoader, "mFiles", fileArr);
            a.b(classLoader, "mZips", zipFileArr);
            a.b(classLoader, "mDexs", dexFileArr);
        }
    }

    private static ApplicationInfo b(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static void c(Context context) {
        if (f2501b) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 4) {
            try {
                ApplicationInfo b2 = b(context);
                if (b2 == null) {
                    return;
                }
                a(context, new File(b2.sourceDir), new File(b2.dataDir), "secondary-dexes", "", true);
                return;
            } catch (Exception e2) {
                throw new RuntimeException("MultiDex installation failed (" + e2.getMessage() + ").");
            }
        }
        throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field b(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    private static void a(Context context, File file, File file2, String str, String str2, boolean z) {
        synchronized (f2500a) {
            if (f2500a.contains(file)) {
                return;
            }
            f2500a.add(file);
            if (Build.VERSION.SDK_INT > 20) {
                String str3 = "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"";
            }
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (classLoader == null) {
                    return;
                }
                try {
                    a(context);
                } catch (Throwable unused) {
                }
                File a2 = a(context, file2, str);
                androidx.multidex.b bVar = new androidx.multidex.b(file, a2);
                IOException e2 = null;
                try {
                    try {
                        a(classLoader, a2, bVar.a(context, str2, false));
                    } catch (IOException e3) {
                        if (z) {
                            a(classLoader, a2, bVar.a(context, str2, true));
                        } else {
                            throw e3;
                        }
                    }
                    try {
                    } catch (IOException e4) {
                        e2 = e4;
                    }
                    if (e2 != null) {
                        throw e2;
                    }
                } finally {
                    try {
                        bVar.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (RuntimeException unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiDex.java */
    /* renamed from: androidx.multidex.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0043a {

        /* renamed from: b, reason: collision with root package name */
        private static final int f2502b = 4;

        /* renamed from: a, reason: collision with root package name */
        private final InterfaceC0044a f2503a;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MultiDex.java */
        /* renamed from: androidx.multidex.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0044a {
            Object a(File file, DexFile dexFile);
        }

        /* compiled from: MultiDex.java */
        /* renamed from: androidx.multidex.a$a$b */
        /* loaded from: classes.dex */
        private static class b implements InterfaceC0044a {

            /* renamed from: a, reason: collision with root package name */
            private final Constructor<?> f2504a;

            b(Class<?> cls) {
                this.f2504a = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f2504a.setAccessible(true);
            }

            @Override // androidx.multidex.a.C0043a.InterfaceC0044a
            public Object a(File file, DexFile dexFile) {
                return this.f2504a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* compiled from: MultiDex.java */
        /* renamed from: androidx.multidex.a$a$c */
        /* loaded from: classes.dex */
        private static class c implements InterfaceC0044a {

            /* renamed from: a, reason: collision with root package name */
            private final Constructor<?> f2505a;

            c(Class<?> cls) {
                this.f2505a = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f2505a.setAccessible(true);
            }

            @Override // androidx.multidex.a.C0043a.InterfaceC0044a
            public Object a(File file, DexFile dexFile) {
                return this.f2505a.newInstance(file, file, dexFile);
            }
        }

        /* compiled from: MultiDex.java */
        /* renamed from: androidx.multidex.a$a$d */
        /* loaded from: classes.dex */
        private static class d implements InterfaceC0044a {

            /* renamed from: a, reason: collision with root package name */
            private final Constructor<?> f2506a;

            d(Class<?> cls) {
                this.f2506a = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f2506a.setAccessible(true);
            }

            @Override // androidx.multidex.a.C0043a.InterfaceC0044a
            public Object a(File file, DexFile dexFile) {
                return this.f2506a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private C0043a() {
            InterfaceC0044a dVar;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    dVar = new b(cls);
                } catch (NoSuchMethodException unused) {
                    dVar = new c(cls);
                }
            } catch (NoSuchMethodException unused2) {
                dVar = new d(cls);
            }
            this.f2503a = dVar;
        }

        static void a(ClassLoader classLoader, List<? extends File> list) {
            Object obj = a.b(classLoader, "pathList").get(classLoader);
            Object[] a2 = new C0043a().a(list);
            try {
                a.b(obj, "dexElements", a2);
            } catch (NoSuchFieldException unused) {
                a.b(obj, "pathElements", a2);
            }
        }

        private Object[] a(List<? extends File> list) {
            Object[] objArr = new Object[list.size()];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                File file = list.get(i2);
                objArr[i2] = this.f2503a.a(file, DexFile.loadDex(file.getPath(), a(file), 0));
            }
            return objArr;
        }

        private static String a(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f2502b) + ".dex").getPath();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method b(Object obj, String str, Class<?>... clsArr) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, String str, Object[] objArr) {
        Field b2 = b(obj, str);
        Object[] objArr2 = (Object[]) b2.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        b2.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiDex.java */
    /* loaded from: classes.dex */
    public static final class b {
        static void a(ClassLoader classLoader, List<? extends File> list, File file) {
            IOException[] iOExceptionArr;
            Object obj = a.b(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            a.b(obj, "dexElements", a(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                }
                Field b2 = a.b(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) b2.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                b2.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        private static Object[] a(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) a.b(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(obj, arrayList, file, arrayList2);
        }
    }

    static boolean a(String str) {
        boolean z = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with version ");
        sb.append(str);
        sb.append(z ? " has multidex support" : " does not have multidex support");
        sb.toString();
        return z;
    }

    private static void a(ClassLoader classLoader, File file, List<? extends File> list) {
        if (list.isEmpty()) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            b.a(classLoader, list, file);
        } else if (i2 >= 14) {
            C0043a.a(classLoader, list);
        } else {
            c.a(classLoader, list);
        }
    }

    private static void a(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            String str = "Clearing old secondary dex dir (" + file.getPath() + ").";
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                String str2 = "Failed to list secondary dex dir content (" + file.getPath() + ").";
                return;
            }
            for (File file2 : listFiles) {
                String str3 = "Trying to delete old file " + file2.getPath() + " of size " + file2.length();
                if (file2.delete()) {
                    String str4 = "Deleted old file " + file2.getPath();
                } else {
                    String str5 = "Failed to delete old file " + file2.getPath();
                }
            }
            if (!file.delete()) {
                String str6 = "Failed to delete secondary dex dir " + file.getPath();
                return;
            }
            String str7 = "Deleted old secondary dex dir " + file.getPath();
        }
    }

    private static File a(Context context, File file, String str) {
        File file2 = new File(file, "code_cache");
        try {
            a(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), "code_cache");
            a(file2);
        }
        File file3 = new File(file2, str);
        a(file3);
        return file3;
    }

    private static void a(File file) {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            String str = "Failed to create dir " + file.getPath() + ". Parent file is null.";
        } else {
            String str2 = "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite();
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
