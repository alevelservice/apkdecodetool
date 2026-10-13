package io.flutter.plugins.imagepicker;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: FileUtils.java */
/* loaded from: classes2.dex */
class b {
    private static String b(Context context, Uri uri) {
        Cursor cursor;
        String str = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"mime_type"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToNext()) {
                        str = MimeTypeMap.getSingleton().getExtensionFromMimeType(cursor.getString(0));
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            if (str == null) {
                str = "jpg";
            }
            return "." + str;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    @SuppressLint({"NewApi"})
    private String c(Context context, Uri uri) {
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if (b(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + split[1];
                }
            } else if (a(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                if (!TextUtils.isEmpty(documentId)) {
                    try {
                        return a(context, ContentUris.withAppendedId(Uri.parse(Environment.DIRECTORY_DOWNLOADS), Long.valueOf(documentId).longValue()), null, null);
                    } catch (NumberFormatException unused) {
                        return null;
                    }
                }
            } else if (d(uri)) {
                String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                String str = split2[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return a(context, uri2, "_id=?", new String[]{split2[1]});
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                if (c(uri)) {
                    return null;
                }
                return a(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:22:0x0032
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    private static java.lang.String d(android.content.Context r4, android.net.Uri r5) {
        /*
            r0 = 0
            r1 = 0
            java.lang.String r2 = b(r4, r5)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L4a
            android.content.ContentResolver r3 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L4a
            java.io.InputStream r5 = r3.openInputStream(r5)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L4a
            java.lang.String r3 = "image_picker"
            java.io.File r4 = r4.getCacheDir()     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L38
            java.io.File r4 = java.io.File.createTempFile(r3, r2, r4)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L38
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L36
            r2.<init>(r4)     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L36
            if (r5 == 0) goto L27
            a(r5, r2)     // Catch: java.lang.Throwable -> L24 java.io.IOException -> L4d
            r3 = 1
            goto L28
        L24:
            r4 = move-exception
            r1 = r2
            goto L3d
        L27:
            r3 = 0
        L28:
            if (r5 == 0) goto L2d
            r5.close()     // Catch: java.io.IOException -> L2d
        L2d:
            r2.close()     // Catch: java.io.IOException -> L32
            r0 = r3
            goto L59
        L32:
            goto L59
        L34:
            r2 = r1
            goto L4d
        L36:
            r4 = move-exception
            goto L3d
        L38:
            r4 = r1
            r2 = r4
            goto L4d
        L3b:
            r4 = move-exception
            r5 = r1
        L3d:
            if (r5 == 0) goto L44
            r5.close()     // Catch: java.io.IOException -> L43
            goto L44
        L43:
        L44:
            if (r1 == 0) goto L49
            r1.close()     // Catch: java.io.IOException -> L49
        L49:
            throw r4
        L4a:
            r4 = r1
            r5 = r4
            r2 = r5
        L4d:
            if (r5 == 0) goto L54
            r5.close()     // Catch: java.io.IOException -> L53
            goto L54
        L53:
        L54:
            if (r2 == 0) goto L59
            r2.close()     // Catch: java.io.IOException -> L32
        L59:
            if (r0 == 0) goto L5f
            java.lang.String r1 = r4.getPath()
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.imagepicker.b.d(android.content.Context, android.net.Uri):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(Context context, Uri uri) {
        String c2 = c(context, uri);
        return c2 == null ? d(context, uri) : c2;
    }

    private static String a(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int columnIndex = cursor.getColumnIndex("_data");
                        if (columnIndex == -1) {
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        }
                        String string = cursor.getString(columnIndex);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private static boolean b(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private static void a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                outputStream.flush();
                return;
            }
        }
    }

    private static boolean a(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private static boolean d(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    private static boolean c(Uri uri) {
        return "com.google.android.apps.photos.contentprovider".equals(uri.getAuthority());
    }
}
