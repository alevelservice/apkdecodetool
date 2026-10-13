package d.gallery_saver;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.exifinterface.media.ExifInterface;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.d.h;
import kotlin.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: FileUtils.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f16775a = new a();

    private a() {
    }

    private final int a(int i2) {
        if (i2 == 3) {
            return 180;
        }
        if (i2 != 6) {
            return i2 != 8 ? 0 : 270;
        }
        return 90;
    }

    private final int b(String str) {
        return new ExifInterface(str).a("Orientation", 1);
    }

    public final boolean a(@NotNull ContentResolver contentResolver, @NotNull String str, @Nullable String str2) {
        long parseId;
        Bitmap thumbnail;
        h.b(contentResolver, "contentResolver");
        h.b(str, "path");
        File file = new File(str);
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(file.toString()));
        byte[] a2 = a(file);
        byte[] a3 = a(a2, str);
        if (a3 == null) {
            a3 = a2;
        }
        String absolutePath = new File(new File(a(str2, d.image)), file.getName()).getAbsolutePath();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", absolutePath);
        contentValues.put("title", file.getName());
        contentValues.put("_display_name", file.getName());
        contentValues.put("mime_type", mimeTypeFromExtension);
        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        try {
            uri = contentResolver.insert(uri, contentValues);
            if (a3 != null) {
                OutputStream openOutputStream = uri != null ? contentResolver.openOutputStream(uri) : null;
                if (openOutputStream != null) {
                    try {
                        openOutputStream.write(a3);
                        t tVar = t.f19946a;
                        kotlin.x.a.a(openOutputStream, null);
                    } finally {
                    }
                }
                if (uri != null && (thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, (parseId = ContentUris.parseId(uri)), 1, null)) != null && Build.VERSION.SDK_INT < 30) {
                    a(contentResolver, thumbnail, parseId);
                }
            } else if (uri != null) {
                contentResolver.delete(uri, null, null);
            }
            return true;
        } catch (IOException unused) {
            if (uri != null) {
                contentResolver.delete(uri, null, null);
                return false;
            }
            h.a();
            throw null;
        }
    }

    private final byte[] a(byte[] bArr, String str) {
        int i2;
        try {
            i2 = a(b(str));
        } catch (IOException e2) {
            e2.toString();
            i2 = 0;
        }
        if (i2 == 0) {
            return null;
        }
        if (bArr != null) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            Matrix matrix = new Matrix();
            matrix.preRotate(i2);
            h.a((Object) decodeByteArray, "bitmap");
            Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, true);
            decodeByteArray.recycle();
            h.a((Object) createBitmap, "adjustedBitmap");
            byte[] a2 = a(createBitmap);
            createBitmap.recycle();
            return a2;
        }
        h.a();
        throw null;
    }

    private final void a(ContentResolver contentResolver, Bitmap bitmap, long j2) {
        Matrix matrix = new Matrix();
        float f2 = (float) 50.0d;
        matrix.setScale(f2 / bitmap.getWidth(), f2 / bitmap.getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        ContentValues contentValues = new ContentValues();
        contentValues.put("kind", (Integer) 3);
        contentValues.put("image_id", Integer.valueOf((int) j2));
        h.a((Object) createBitmap, "thumb");
        contentValues.put("height", Integer.valueOf(createBitmap.getHeight()));
        contentValues.put("width", Integer.valueOf(createBitmap.getWidth()));
        Uri insert = contentResolver.insert(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, contentValues);
        if (insert != null) {
            try {
                contentResolver.openOutputStream(insert);
            } finally {
            }
        }
        t tVar = t.f19946a;
        kotlin.x.a.a(null, null);
    }

    private final byte[] a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        bitmap.recycle();
        h.a((Object) byteArray, "byteArray");
        return byteArray;
    }

    private final byte[] a(File file) {
        byte[] bArr = new byte[(int) file.length()];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            bufferedInputStream.read(bArr, 0, bArr.length);
            kotlin.x.a.a(bufferedInputStream, null);
            return bArr;
        } finally {
        }
    }

    public static /* synthetic */ boolean a(a aVar, ContentResolver contentResolver, String str, String str2, int i2, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            i2 = 8388608;
        }
        return aVar.a(contentResolver, str, str2, i2);
    }

    public final boolean a(@NotNull ContentResolver contentResolver, @NotNull String str, @Nullable String str2, int i2) {
        h.b(contentResolver, "contentResolver");
        h.b(str, "inputPath");
        File file = new File(str);
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(file.toString()));
        String absolutePath = new File(new File(a(str2, d.video)), file.getName()).getAbsolutePath();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", absolutePath);
        contentValues.put("title", file.getName());
        contentValues.put("_display_name", file.getName());
        contentValues.put("mime_type", mimeTypeFromExtension);
        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        try {
            Uri insert = contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
            FileInputStream fileInputStream = new FileInputStream(file);
            if (insert == null) {
                return true;
            }
            OutputStream openOutputStream = contentResolver.openOutputStream(insert);
            byte[] bArr = new byte[i2];
            if (openOutputStream != null) {
                while (fileInputStream.read(bArr) != -1) {
                    try {
                        try {
                            openOutputStream.write(bArr);
                        } finally {
                        }
                    } finally {
                    }
                }
                t tVar = t.f19946a;
                kotlin.x.a.a(openOutputStream, null);
            }
            kotlin.x.a.a(fileInputStream, null);
            return true;
        } catch (FileNotFoundException e2) {
            e2.getMessage();
            return false;
        } catch (Exception e3) {
            e3.getMessage();
            return false;
        }
    }

    private final String a(String str, d dVar) {
        String str2;
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        h.a((Object) externalStorageDirectory, "Environment.getExternalStorageDirectory()");
        String path = externalStorageDirectory.getPath();
        h.a((Object) path, "Environment.getExternalStorageDirectory().path");
        if (TextUtils.isEmpty(str)) {
            if (dVar == d.image) {
                str2 = Environment.DIRECTORY_PICTURES;
            } else {
                str2 = Environment.DIRECTORY_MOVIES;
            }
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str2);
            h.a((Object) externalStoragePublicDirectory, "Environment.getExternalS…Directory(baseFolderName)");
            String path2 = externalStoragePublicDirectory.getPath();
            h.a((Object) path2, "Environment.getExternalS…tory(baseFolderName).path");
            String a2 = a(path2);
            if (a2 != null) {
                return a2;
            }
        } else {
            String a3 = a(path + File.separator + str);
            if (a3 != null) {
                return a3;
            }
        }
        return path;
    }

    private final String a(String str) {
        File file = new File(str);
        if (!file.exists()) {
            if (file.mkdirs()) {
                return file.getPath();
            }
            return null;
        }
        return file.getPath();
    }
}
