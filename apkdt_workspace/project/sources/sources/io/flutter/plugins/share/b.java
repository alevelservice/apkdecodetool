package io.flutter.plugins.share;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ActionBroadcastReceiver;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Share.java */
/* loaded from: classes2.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private Context f19502a;

    /* renamed from: b, reason: collision with root package name */
    private Activity f19503b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, Activity activity) {
        this.f19502a = context;
        this.f19503b = activity;
    }

    private String b(List<String> list) {
        if (list.size() <= 1) {
            return list.size() == 1 ? list.get(0) : "*/*";
        }
        String str = list.get(0);
        for (int i2 = 1; i2 < list.size(); i2++) {
            String str2 = list.get(i2);
            if (!str.equals(str2)) {
                if (!a(str2).equals(a(str))) {
                    return "*/*";
                }
                str = a(str2) + "/*";
            }
        }
        return str;
    }

    @NonNull
    private File c() {
        return new File(b().getExternalCacheDir(), "share");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        this.f19503b = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        if (str != null && !str.isEmpty()) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", str);
            intent.putExtra(ActionBroadcastReceiver.KEY_URL_TITLE, str2);
            intent.setType("text/plain");
            a(Intent.createChooser(intent, null));
            return;
        }
        throw new IllegalArgumentException("Non-empty text expected");
    }

    private boolean b(File file) {
        try {
            String canonicalPath = file.getCanonicalPath();
            File externalFilesDir = this.f19502a.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                return canonicalPath.startsWith(externalFilesDir.getCanonicalPath());
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list, List<String> list2, String str, String str2) {
        if (list != null && !list.isEmpty()) {
            a();
            ArrayList<Uri> a2 = a(list);
            Intent intent = new Intent();
            if (a2.isEmpty()) {
                a(str, str2);
                return;
            }
            if (a2.size() == 1) {
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.STREAM", a2.get(0));
                intent.setType((list2.isEmpty() || list2.get(0) == null) ? "*/*" : list2.get(0));
            } else {
                intent.setAction("android.intent.action.SEND_MULTIPLE");
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", a2);
                intent.setType(b(list2));
            }
            if (str != null) {
                intent.putExtra("android.intent.extra.TEXT", str);
            }
            if (str2 != null) {
                intent.putExtra(ActionBroadcastReceiver.KEY_URL_TITLE, str2);
            }
            intent.addFlags(1);
            Intent createChooser = Intent.createChooser(intent, null);
            Iterator<ResolveInfo> it = b().getPackageManager().queryIntentActivities(createChooser, AntDetector.ACTION_ID_SAMPLE).iterator();
            while (it.hasNext()) {
                String str3 = it.next().activityInfo.packageName;
                Iterator<Uri> it2 = a2.iterator();
                while (it2.hasNext()) {
                    b().grantUriPermission(str3, it2.next(), 3);
                }
            }
            a(createChooser);
            return;
        }
        throw new IllegalArgumentException("Non-empty path expected");
    }

    private Context b() {
        Activity activity = this.f19503b;
        if (activity != null) {
            return activity;
        }
        Context context = this.f19502a;
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Both context and activity are null");
    }

    private void a(Intent intent) {
        Activity activity = this.f19503b;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            if (this.f19502a != null) {
                intent.addFlags(268435456);
                this.f19502a.startActivity(intent);
                return;
            }
            throw new IllegalStateException("Both context and activity are null");
        }
    }

    private ArrayList<Uri> a(List<String> list) {
        ArrayList<Uri> arrayList = new ArrayList<>(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(it.next());
            if (!b(file)) {
                file = a(file);
            }
            arrayList.add(FileProvider.getUriForFile(b(), b().getPackageName() + ".flutter.share_provider", file));
        }
        return arrayList;
    }

    @NonNull
    private String a(String str) {
        return (str == null || !str.contains("/")) ? "*" : str.substring(0, str.indexOf("/"));
    }

    private void a() {
        File c2 = c();
        if (c2.exists()) {
            for (File file : c2.listFiles()) {
                file.delete();
            }
            c2.delete();
        }
    }

    private File a(File file) {
        File c2 = c();
        if (!c2.exists()) {
            c2.mkdirs();
        }
        File file2 = new File(c2, file.getName());
        a(file, file2);
        return file2;
    }

    private static void a(File file, File file2) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        return;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
            } finally {
                fileOutputStream.close();
            }
        } finally {
            fileInputStream.close();
        }
    }
}
