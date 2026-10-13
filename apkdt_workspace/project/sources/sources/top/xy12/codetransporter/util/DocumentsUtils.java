package top.xy12.codetransporter.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.DocumentsContract;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DocumentsUtils {
    public static final int OPEN_DOCUMENT_TREE_CODE = 8000;
    private static final String TAG = "DocumentsUtils";
    private static List<String> sExtSdCardPaths = new ArrayList();

    private DocumentsUtils() {
    }

    public static void cleanCache() {
        sExtSdCardPaths.clear();
    }

    private static String[] getExtSdCardPaths(Context context) {
        if (sExtSdCardPaths.size() > 0) {
            return (String[]) sExtSdCardPaths.toArray(new String[0]);
        }
        for (File file : context.getExternalFilesDirs("external")) {
            if (file != null && !file.equals(context.getExternalFilesDir("external"))) {
                int lastIndexOf = file.getAbsolutePath().lastIndexOf("/Android/data");
                if (lastIndexOf < 0) {
                    Log.w(TAG, "Unexpected external file dir: " + file.getAbsolutePath());
                } else {
                    String substring = file.getAbsolutePath().substring(0, lastIndexOf);
                    try {
                        substring = new File(substring).getCanonicalPath();
                    } catch (IOException unused) {
                    }
                    sExtSdCardPaths.add(substring);
                }
            }
        }
        if (sExtSdCardPaths.isEmpty()) {
            sExtSdCardPaths.add("/storage/sdcard1");
        }
        return (String[]) sExtSdCardPaths.toArray(new String[0]);
    }

    private static String getExtSdCardFolder(File file, Context context) {
        String[] extSdCardPaths = getExtSdCardPaths(context);
        for (int i = 0; i < extSdCardPaths.length; i++) {
            try {
                if (file.getCanonicalPath().startsWith(extSdCardPaths[i])) {
                    return extSdCardPaths[i];
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static boolean isOnExtSdCard(File file, Context context) {
        return getExtSdCardFolder(file, context) != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.documentfile.provider.DocumentFile getDocumentFile(java.io.File r6, boolean r7, android.content.Context r8) {
        /*
            java.lang.String r0 = getExtSdCardFolder(r6, r8)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r2 = 0
            r3 = 1
            java.lang.String r6 = r6.getCanonicalPath()     // Catch: java.lang.Exception -> L1f java.io.IOException -> L69
            boolean r4 = r0.equals(r6)     // Catch: java.lang.Exception -> L1f java.io.IOException -> L69
            if (r4 != 0) goto L20
            int r4 = r0.length()     // Catch: java.lang.Exception -> L1f java.io.IOException -> L69
            int r4 = r4 + r3
            java.lang.String r6 = r6.substring(r4)     // Catch: java.lang.Exception -> L1f java.io.IOException -> L69
            r4 = 0
            goto L22
        L1f:
        L20:
            r6 = r1
            r4 = 1
        L22:
            android.content.SharedPreferences r5 = android.preference.PreferenceManager.getDefaultSharedPreferences(r8)
            java.lang.String r0 = r5.getString(r0, r1)
            if (r0 == 0) goto L31
            android.net.Uri r0 = android.net.Uri.parse(r0)
            goto L32
        L31:
            r0 = r1
        L32:
            if (r0 != 0) goto L35
            return r1
        L35:
            androidx.documentfile.provider.DocumentFile r8 = androidx.documentfile.provider.DocumentFile.fromTreeUri(r8, r0)
            if (r4 == 0) goto L3c
            return r8
        L3c:
            java.lang.String r0 = "/"
            java.lang.String[] r6 = r6.split(r0)
        L42:
            int r0 = r6.length
            if (r2 >= r0) goto L68
            r0 = r6[r2]
            androidx.documentfile.provider.DocumentFile r0 = r8.findFile(r0)
            if (r0 != 0) goto L64
            int r0 = r6.length
            int r0 = r0 - r3
            if (r2 < r0) goto L5d
            if (r7 == 0) goto L54
            goto L5d
        L54:
            java.lang.String r0 = "image"
            r1 = r6[r2]
            androidx.documentfile.provider.DocumentFile r8 = r8.createFile(r0, r1)
            goto L65
        L5d:
            r0 = r6[r2]
            androidx.documentfile.provider.DocumentFile r8 = r8.createDirectory(r0)
            goto L65
        L64:
            r8 = r0
        L65:
            int r2 = r2 + 1
            goto L42
        L68:
            return r8
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: top.xy12.codetransporter.util.DocumentsUtils.getDocumentFile(java.io.File, boolean, android.content.Context):androidx.documentfile.provider.DocumentFile");
    }

    public static boolean mkdirs(Context context, File file) {
        boolean mkdirs = file.mkdirs();
        if (mkdirs || !isOnExtSdCard(file, context)) {
            return mkdirs;
        }
        DocumentFile documentFile = getDocumentFile(file, true, context);
        return documentFile != null && documentFile.canWrite();
    }

    public static boolean delete(Context context, File file) {
        DocumentFile documentFile;
        boolean delete = file.delete();
        return (delete || !isOnExtSdCard(file, context) || (documentFile = getDocumentFile(file, false, context)) == null) ? delete : documentFile.delete();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        if (r4.delete() != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean canWrite(java.io.File r4) {
        /*
            boolean r0 = r4.exists()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            boolean r0 = r4.canWrite()
            if (r0 == 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 != 0) goto L40
            boolean r3 = r4.exists()
            if (r3 != 0) goto L40
            boolean r3 = r4.isDirectory()     // Catch: java.io.IOException -> L3c
            if (r3 != 0) goto L2c
            boolean r3 = r4.createNewFile()     // Catch: java.io.IOException -> L3c
            if (r3 == 0) goto L39
            boolean r4 = r4.delete()     // Catch: java.io.IOException -> L3c
            if (r4 == 0) goto L39
            goto L3a
        L2c:
            boolean r3 = r4.mkdirs()     // Catch: java.io.IOException -> L3c
            if (r3 == 0) goto L39
            boolean r4 = r4.delete()     // Catch: java.io.IOException -> L3c
            if (r4 == 0) goto L39
            goto L3a
        L39:
            r1 = 0
        L3a:
            r0 = r1
            goto L40
        L3c:
            r4 = move-exception
            r4.printStackTrace()
        L40:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: top.xy12.codetransporter.util.DocumentsUtils.canWrite(java.io.File):boolean");
    }

    public static boolean canWrite(Context context, File file) {
        boolean canWrite = canWrite(file);
        if (canWrite || !isOnExtSdCard(file, context)) {
            return canWrite;
        }
        DocumentFile documentFile = getDocumentFile(file, true, context);
        return documentFile != null && documentFile.canWrite();
    }

    public static boolean renameTo(Context context, File file, File file2) {
        DocumentFile fromFile;
        Uri moveDocument;
        boolean renameTo = file.renameTo(file2);
        if (!renameTo && isOnExtSdCard(file2, context)) {
            if (isOnExtSdCard(file, context)) {
                fromFile = getDocumentFile(file, false, context);
            } else {
                fromFile = DocumentFile.fromFile(file);
            }
            DocumentFile documentFile = getDocumentFile(file2.getParentFile(), true, context);
            if (fromFile != null && documentFile != null) {
                try {
                    Log.i("renameTo", "src.getParent():" + file.getParent() + ",dest.getParent():" + file2.getParent());
                    if (file.getParent().equals(file2.getParent())) {
                        renameTo = fromFile.renameTo(file2.getName());
                    } else if (Build.VERSION.SDK_INT >= 24) {
                        moveDocument = DocumentsContract.moveDocument(context.getContentResolver(), DocumentsContract.renameDocument(context.getContentResolver(), fromFile.getUri(), file2.getName()), fromFile.getParentFile().getUri(), documentFile.getUri());
                        renameTo = moveDocument != null;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return renameTo;
    }

    public static InputStream getInputStream(Context context, File file) {
        InputStream inputStream = null;
        try {
            if (!canWrite(file) && isOnExtSdCard(file, context)) {
                DocumentFile documentFile = getDocumentFile(file, false, context);
                if (documentFile != null && documentFile.canWrite()) {
                    inputStream = context.getContentResolver().openInputStream(documentFile.getUri());
                }
            } else {
                inputStream = new FileInputStream(file);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    public static OutputStream getOutputStream(Context context, File file) {
        OutputStream outputStream = null;
        try {
            if (!canWrite(file) && isOnExtSdCard(file, context)) {
                DocumentFile documentFile = getDocumentFile(file, false, context);
                if (documentFile != null && documentFile.canWrite()) {
                    outputStream = context.getContentResolver().openOutputStream(documentFile.getUri());
                }
            } else {
                outputStream = new FileOutputStream(file);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return outputStream;
    }

    public static OutputStream getOutputStream(Context context, File file, String str) {
        try {
            if (!canWrite(file) && isOnExtSdCard(file, context)) {
                DocumentFile documentFile = getDocumentFile(file, false, context);
                if (documentFile == null || !documentFile.canWrite()) {
                    return null;
                }
                return context.getContentResolver().openOutputStream(documentFile.getUri(), str);
            }
            return new FileOutputStream(file, str.equals("rw") || str.equals("wa"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.FileDescriptor getFileDescriptor(android.content.Context r3, java.io.File r4) {
        /*
            r0 = 0
            boolean r1 = isOnExtSdCard(r4, r3)     // Catch: java.io.FileNotFoundException -> L5e
            if (r1 == 0) goto L27
            r1 = 0
            androidx.documentfile.provider.DocumentFile r4 = getDocumentFile(r4, r1, r3)     // Catch: java.io.FileNotFoundException -> L5e
            if (r4 == 0) goto L62
            boolean r1 = r4.canWrite()     // Catch: java.io.FileNotFoundException -> L5e
            if (r1 == 0) goto L62
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch: java.io.FileNotFoundException -> L5e
            android.net.Uri r4 = r4.getUri()     // Catch: java.io.FileNotFoundException -> L5e
            java.lang.String r1 = "rw"
            android.os.ParcelFileDescriptor r3 = r3.openFileDescriptor(r4, r1)     // Catch: java.io.FileNotFoundException -> L5e
            java.io.FileDescriptor r0 = r3.getFileDescriptor()     // Catch: java.io.FileNotFoundException -> L5e
            goto L62
        L27:
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            java.lang.String r1 = "rws"
            r3.<init>(r4, r1)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            r1 = 0
            r3.setLength(r1)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L52
            java.io.FileDescriptor r0 = r3.getFD()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L52
            r3.close()     // Catch: java.io.IOException -> L3b java.io.FileNotFoundException -> L5e
            goto L62
        L3b:
            r3 = move-exception
        L3c:
            r3.printStackTrace()     // Catch: java.io.FileNotFoundException -> L5e
            goto L62
        L40:
            r4 = move-exception
            goto L47
        L42:
            r4 = move-exception
            r3 = r0
            goto L53
        L45:
            r4 = move-exception
            r3 = r0
        L47:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L52
            if (r3 == 0) goto L62
            r3.close()     // Catch: java.io.IOException -> L50 java.io.FileNotFoundException -> L5e
            goto L62
        L50:
            r3 = move-exception
            goto L3c
        L52:
            r4 = move-exception
        L53:
            if (r3 == 0) goto L5d
            r3.close()     // Catch: java.io.IOException -> L59 java.io.FileNotFoundException -> L5e
            goto L5d
        L59:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.io.FileNotFoundException -> L5e
        L5d:
            throw r4     // Catch: java.io.FileNotFoundException -> L5e
        L5e:
            r3 = move-exception
            r3.printStackTrace()
        L62:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: top.xy12.codetransporter.util.DocumentsUtils.getFileDescriptor(android.content.Context, java.io.File):java.io.FileDescriptor");
    }

    public static boolean saveTreeUri(Context context, String str, Uri uri) {
        DocumentFile fromTreeUri = DocumentFile.fromTreeUri(context, uri);
        if (fromTreeUri != null && fromTreeUri.canWrite()) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, uri.toString()).apply();
            Log.e(TAG, "save uri" + str);
            return true;
        }
        Log.e(TAG, "no write permission: " + str);
        return false;
    }

    public static boolean checkWritableRootPath(Context context, String str) {
        File file = new File(str);
        if (!file.canWrite()) {
            String str2 = TAG;
            Log.e(str2, "sd card can not write:" + str + ",is on extsdcard:" + isOnExtSdCard(file, context));
            if (isOnExtSdCard(file, context)) {
                DocumentFile documentFile = getDocumentFile(file, true, context);
                if (documentFile != null) {
                    Log.i(str2, "get document file:" + documentFile.canWrite());
                }
                return documentFile == null || !documentFile.canWrite();
            }
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString(str, "");
            Log.i(str2, "lum_2 get perf documentUri:" + string);
            if (string == null || string.isEmpty()) {
                return true;
            }
            DocumentFile fromTreeUri = DocumentFile.fromTreeUri(context, Uri.parse(string));
            if (fromTreeUri != null) {
                Log.i(str2, "lum get perf documentUri:" + fromTreeUri.canWrite());
            }
            return fromTreeUri == null || !fromTreeUri.canWrite();
        }
        Log.e(TAG, "sd card can write...");
        return false;
    }
}
