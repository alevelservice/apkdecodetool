package e.f.c.j;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.net.MalformedURLException;
import java.net.URL;
import javax.annotation.Nullable;

/* compiled from: UriUtil.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final Uri f17193a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "display_photo");

    @Nullable
    public static String a(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.getScheme();
    }

    public static boolean b(@Nullable Uri uri) {
        return Constants$ScionAnalytics$MessageType.DATA_MESSAGE.equals(a(uri));
    }

    public static boolean c(@Nullable Uri uri) {
        return "asset".equals(a(uri));
    }

    public static boolean d(Uri uri) {
        String uri2 = uri.toString();
        return uri2.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) || uri2.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString());
    }

    public static boolean e(Uri uri) {
        return f(uri) && "com.android.contacts".equals(uri.getAuthority()) && !uri.getPath().startsWith(f17193a.getPath());
    }

    public static boolean f(@Nullable Uri uri) {
        return "content".equals(a(uri));
    }

    public static boolean g(@Nullable Uri uri) {
        return "file".equals(a(uri));
    }

    public static boolean h(@Nullable Uri uri) {
        return "res".equals(a(uri));
    }

    public static boolean i(@Nullable Uri uri) {
        String a2 = a(uri);
        return "https".equals(a2) || "http".equals(a2);
    }

    public static boolean j(@Nullable Uri uri) {
        return "android.resource".equals(a(uri));
    }

    @Nullable
    public static URL k(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            return new URL(uri.toString());
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Nullable
    public static String a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        int columnIndex;
        String str = null;
        if (f(uri)) {
            try {
                cursor = contentResolver.query(uri, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst() && (columnIndex = cursor.getColumnIndex("_data")) != -1) {
                            str = cursor.getString(columnIndex);
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor == null) {
                    return str;
                }
                cursor.close();
                return str;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } else {
            if (g(uri)) {
                return uri.getPath();
            }
            return null;
        }
    }

    public static Uri a(int i2) {
        return new Uri.Builder().scheme("res").path(String.valueOf(i2)).build();
    }
}
