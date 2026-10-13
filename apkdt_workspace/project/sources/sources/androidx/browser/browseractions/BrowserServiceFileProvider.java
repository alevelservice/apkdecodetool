package androidx.browser.browseractions;

import android.content.ClipData;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.core.content.FileProvider;
import com.google.common.util.concurrent.e;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestrictTo({RestrictTo.a.LIBRARY})
@Deprecated
/* loaded from: classes.dex */
public final class BrowserServiceFileProvider extends FileProvider {
    static Object sFileCleanupLock = new Object();

    /* loaded from: classes.dex */
    static class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ContentResolver f1467e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Uri f1468f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ a.f.a.b f1469g;

        a(ContentResolver contentResolver, Uri uri, a.f.a.b bVar) {
            this.f1467e = contentResolver;
            this.f1468f = uri;
            this.f1469g = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ParcelFileDescriptor openFileDescriptor = this.f1467e.openFileDescriptor(this.f1468f, "r");
                if (openFileDescriptor == null) {
                    this.f1469g.a((Throwable) new FileNotFoundException());
                    return;
                }
                Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(openFileDescriptor.getFileDescriptor());
                openFileDescriptor.close();
                if (decodeFileDescriptor == null) {
                    this.f1469g.a((Throwable) new IOException("File could not be decoded."));
                } else {
                    this.f1469g.a((a.f.a.b) decodeFileDescriptor);
                }
            } catch (IOException e2) {
                this.f1469g.a((Throwable) e2);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class c extends AsyncTask<String, Void, Void> {

        /* renamed from: a, reason: collision with root package name */
        private final Context f1474a;

        /* renamed from: b, reason: collision with root package name */
        private final String f1475b;

        /* renamed from: c, reason: collision with root package name */
        private final Bitmap f1476c;

        /* renamed from: d, reason: collision with root package name */
        private final Uri f1477d;

        /* renamed from: e, reason: collision with root package name */
        private final a.f.a.b<Uri> f1478e;

        c(Context context, String str, Bitmap bitmap, Uri uri, a.f.a.b<Uri> bVar) {
            this.f1474a = context.getApplicationContext();
            this.f1475b = str;
            this.f1476c = bitmap;
            this.f1477d = uri;
            this.f1478e = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            a();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r3) {
            new b(this.f1474a).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }

        private void a() {
            File file = new File(this.f1474a.getFilesDir(), "image_provider");
            synchronized (BrowserServiceFileProvider.sFileCleanupLock) {
                if (!file.exists() && !file.mkdir()) {
                    this.f1478e.a(new IOException("Could not create file directory."));
                    return;
                }
                File file2 = new File(file, this.f1475b + ".png");
                if (file2.exists()) {
                    this.f1478e.a((a.f.a.b<Uri>) this.f1477d);
                } else {
                    a(file2);
                }
                file2.setLastModified(System.currentTimeMillis());
            }
        }

        private void a(File file) {
            FileOutputStream fileOutputStream;
            if (Build.VERSION.SDK_INT >= 22) {
                a.i.m.a aVar = new a.i.m.a(file);
                try {
                    fileOutputStream = aVar.a();
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = null;
                }
                try {
                    this.f1476c.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.close();
                    aVar.b(fileOutputStream);
                    this.f1478e.a((a.f.a.b<Uri>) this.f1477d);
                    return;
                } catch (IOException e3) {
                    e = e3;
                    aVar.a(fileOutputStream);
                    this.f1478e.a(e);
                    return;
                }
            }
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                this.f1476c.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
                fileOutputStream2.close();
                this.f1478e.a((a.f.a.b<Uri>) this.f1477d);
            } catch (IOException e4) {
                this.f1478e.a(e4);
            }
        }
    }

    private static Uri a(Context context, String str) {
        return new Uri.Builder().scheme("content").authority(context.getPackageName() + ".image_provider").path("image_provider_images/" + str + ".png").build();
    }

    public static void grantReadPermission(@NonNull Intent intent, @Nullable List<Uri> list, @NonNull Context context) {
        if (list == null || list.size() == 0) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        intent.addFlags(1);
        ClipData newUri = ClipData.newUri(contentResolver, "image_provider_uris", list.get(0));
        for (int i2 = 1; i2 < list.size(); i2++) {
            newUri.addItem(new ClipData.Item(list.get(i2)));
        }
        intent.setClipData(newUri);
    }

    @NonNull
    public static e<Bitmap> loadBitmap(@NonNull ContentResolver contentResolver, @NonNull Uri uri) {
        a.f.a.b d2 = a.f.a.b.d();
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new a(contentResolver, uri, d2));
        return d2;
    }

    @NonNull
    @UiThread
    public static a.f.a.b<Uri> saveBitmap(@NonNull Context context, @NonNull Bitmap bitmap, @NonNull String str, int i2) {
        String str2 = str + "_" + Integer.toString(i2);
        Uri a2 = a(context, str2);
        a.f.a.b<Uri> d2 = a.f.a.b.d();
        new c(context, str2, bitmap, a2, d2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        return d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: b, reason: collision with root package name */
        private static final long f1470b = TimeUnit.DAYS.toMillis(7);

        /* renamed from: c, reason: collision with root package name */
        private static final long f1471c = TimeUnit.DAYS.toMillis(7);

        /* renamed from: d, reason: collision with root package name */
        private static final long f1472d = TimeUnit.DAYS.toMillis(1);

        /* renamed from: a, reason: collision with root package name */
        private final Context f1473a;

        b(Context context) {
            this.f1473a = context.getApplicationContext();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            long currentTimeMillis;
            SharedPreferences sharedPreferences = this.f1473a.getSharedPreferences(this.f1473a.getPackageName() + ".image_provider", 0);
            if (!a(sharedPreferences)) {
                return null;
            }
            synchronized (BrowserServiceFileProvider.sFileCleanupLock) {
                File file = new File(this.f1473a.getFilesDir(), "image_provider");
                if (!file.exists()) {
                    return null;
                }
                File[] listFiles = file.listFiles();
                long currentTimeMillis2 = System.currentTimeMillis() - f1470b;
                boolean z = true;
                for (File file2 : listFiles) {
                    if (a(file2) && file2.lastModified() < currentTimeMillis2 && !file2.delete()) {
                        String str = "Fail to delete image: " + file2.getAbsoluteFile();
                        z = false;
                    }
                }
                if (z) {
                    currentTimeMillis = System.currentTimeMillis();
                } else {
                    currentTimeMillis = (System.currentTimeMillis() - f1471c) + f1472d;
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong("last_cleanup_time", currentTimeMillis);
                edit.apply();
                return null;
            }
        }

        private static boolean a(File file) {
            return file.getName().endsWith("..png");
        }

        private static boolean a(SharedPreferences sharedPreferences) {
            return System.currentTimeMillis() > sharedPreferences.getLong("last_cleanup_time", System.currentTimeMillis()) + f1471c;
        }
    }
}
