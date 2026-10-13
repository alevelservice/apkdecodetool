package io.flutter.plugins.imagepicker;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.media.MediaScannerConnection;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.FileProvider;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

/* compiled from: ImagePickerDelegate.java */
/* loaded from: classes2.dex */
public class d implements m.a, m.e {

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final String f19471e;

    /* renamed from: f, reason: collision with root package name */
    private final Activity f19472f;

    /* renamed from: g, reason: collision with root package name */
    private final File f19473g;

    /* renamed from: h, reason: collision with root package name */
    private final io.flutter.plugins.imagepicker.g f19474h;

    /* renamed from: i, reason: collision with root package name */
    private final i f19475i;

    /* renamed from: j, reason: collision with root package name */
    private final g f19476j;

    /* renamed from: k, reason: collision with root package name */
    private final f f19477k;

    /* renamed from: l, reason: collision with root package name */
    private final io.flutter.plugins.imagepicker.b f19478l;
    private Uri m;
    private k.d n;
    private j o;

    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    class a implements i {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f19479a;

        a(Activity activity) {
            this.f19479a = activity;
        }

        @Override // io.flutter.plugins.imagepicker.d.i
        public boolean a(String str) {
            return androidx.core.content.a.a(this.f19479a, str) == 0;
        }

        @Override // io.flutter.plugins.imagepicker.d.i
        public void a(String str, int i2) {
            androidx.core.app.a.a(this.f19479a, new String[]{str}, i2);
        }

        @Override // io.flutter.plugins.imagepicker.d.i
        public boolean a() {
            return io.flutter.plugins.imagepicker.f.a(this.f19479a);
        }
    }

    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    class b implements g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f19480a;

        b(Activity activity) {
            this.f19480a = activity;
        }

        @Override // io.flutter.plugins.imagepicker.d.g
        public boolean a(Intent intent) {
            return intent.resolveActivity(this.f19480a.getPackageManager()) != null;
        }
    }

    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    class c implements f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f19481a;

        /* compiled from: ImagePickerDelegate.java */
        /* loaded from: classes2.dex */
        class a implements MediaScannerConnection.OnScanCompletedListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ h f19482a;

            a(c cVar, h hVar) {
                this.f19482a = hVar;
            }

            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String str, Uri uri) {
                this.f19482a.a(str);
            }
        }

        c(Activity activity) {
            this.f19481a = activity;
        }

        @Override // io.flutter.plugins.imagepicker.d.f
        public Uri a(String str, File file) {
            return FileProvider.getUriForFile(this.f19481a, str, file);
        }

        @Override // io.flutter.plugins.imagepicker.d.f
        public void a(Uri uri, h hVar) {
            Activity activity = this.f19481a;
            String[] strArr = new String[1];
            strArr[0] = uri != null ? uri.getPath() : "";
            MediaScannerConnection.scanFile(activity, strArr, null, new a(this, hVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePickerDelegate.java */
    /* renamed from: io.flutter.plugins.imagepicker.d$d, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0246d implements h {
        C0246d() {
        }

        @Override // io.flutter.plugins.imagepicker.d.h
        public void a(String str) {
            d.this.a(str, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    public class e implements h {
        e() {
        }

        @Override // io.flutter.plugins.imagepicker.d.h
        public void a(String str) {
            d.this.c(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    public interface f {
        Uri a(String str, File file);

        void a(Uri uri, h hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    public interface g {
        boolean a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    public interface h {
        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePickerDelegate.java */
    /* loaded from: classes2.dex */
    public interface i {
        void a(String str, int i2);

        boolean a();

        boolean a(String str);
    }

    public d(Activity activity, File file, io.flutter.plugins.imagepicker.g gVar) {
        this(activity, file, gVar, null, null, new a(activity), new b(activity), new c(activity), new io.flutter.plugins.imagepicker.b());
    }

    private void e() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        this.f19472f.startActivityForResult(intent, 2342);
    }

    private void f() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("video/*");
        this.f19472f.startActivityForResult(intent, 2352);
    }

    private void g() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (!this.f19476j.a(intent)) {
            a("no_available_camera", "No cameras available for taking pictures.");
            return;
        }
        File c2 = c();
        this.m = Uri.parse("file:" + c2.getAbsolutePath());
        Uri a2 = this.f19477k.a(this.f19471e, c2);
        intent.putExtra("output", a2);
        a(intent, a2);
        this.f19472f.startActivityForResult(intent, 2343);
    }

    private void h() {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        if (!this.f19476j.a(intent)) {
            a("no_available_camera", "No cameras available for taking pictures.");
            return;
        }
        File d2 = d();
        this.m = Uri.parse("file:" + d2.getAbsolutePath());
        Uri a2 = this.f19477k.a(this.f19471e, d2);
        intent.putExtra("output", a2);
        a(intent, a2);
        this.f19472f.startActivityForResult(intent, 2353);
    }

    private boolean i() {
        i iVar = this.f19475i;
        if (iVar == null) {
            return false;
        }
        return iVar.a();
    }

    public void b(j jVar, k.d dVar) {
        if (!e(jVar, dVar)) {
            b(dVar);
        } else if (!this.f19475i.a("android.permission.READ_EXTERNAL_STORAGE")) {
            this.f19475i.a("android.permission.READ_EXTERNAL_STORAGE", 2354);
        } else {
            f();
        }
    }

    public void c(j jVar, k.d dVar) {
        if (!e(jVar, dVar)) {
            b(dVar);
        } else if (i() && !this.f19475i.a("android.permission.CAMERA")) {
            this.f19475i.a("android.permission.CAMERA", 2345);
        } else {
            g();
        }
    }

    public void d(j jVar, k.d dVar) {
        if (!e(jVar, dVar)) {
            b(dVar);
        } else if (i() && !this.f19475i.a("android.permission.CAMERA")) {
            this.f19475i.a("android.permission.CAMERA", 2355);
        } else {
            h();
        }
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 2342) {
            a(i3, intent);
            return true;
        }
        if (i2 == 2343) {
            a(i3);
            return true;
        }
        if (i2 == 2352) {
            b(i3, intent);
            return true;
        }
        if (i2 != 2353) {
            return false;
        }
        b(i3);
        return true;
    }

    @Override // g.a.c.a.m.e
    public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        boolean z = iArr.length > 0 && iArr[0] == 0;
        if (i2 != 2344) {
            if (i2 != 2345) {
                if (i2 != 2354) {
                    if (i2 != 2355) {
                        return false;
                    }
                    if (z) {
                        h();
                    }
                } else if (z) {
                    f();
                }
            } else if (z) {
                g();
            }
        } else if (z) {
            e();
        }
        if (!z) {
            b((String) null);
        }
        return true;
    }

    @VisibleForTesting
    d(Activity activity, File file, io.flutter.plugins.imagepicker.g gVar, k.d dVar, j jVar, i iVar, g gVar2, f fVar, io.flutter.plugins.imagepicker.b bVar) {
        this.f19472f = activity;
        this.f19473g = file;
        this.f19474h = gVar;
        this.f19471e = activity.getPackageName() + ".flutter.image_provider";
        this.n = dVar;
        this.o = jVar;
        this.f19475i = iVar;
        this.f19476j = gVar2;
        this.f19477k = fVar;
        this.f19478l = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        j jVar = this.o;
        if (jVar == null) {
            return;
        }
        io.flutter.plugins.imagepicker.c.a(jVar.f18223a);
        io.flutter.plugins.imagepicker.c.a(this.o);
        Uri uri = this.m;
        if (uri != null) {
            io.flutter.plugins.imagepicker.c.a(uri);
        }
    }

    private boolean e(j jVar, k.d dVar) {
        if (this.n != null) {
            return false;
        }
        this.o = jVar;
        this.n = dVar;
        io.flutter.plugins.imagepicker.c.a();
        return true;
    }

    private void b(int i2, Intent intent) {
        if (i2 == -1 && intent != null) {
            c(this.f19478l.a(this.f19472f, intent.getData()));
        } else {
            b((String) null);
        }
    }

    private File c() {
        return a(".jpg");
    }

    private File d() {
        return a(".mp4");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(k.d dVar) {
        Map<String, Object> b2 = io.flutter.plugins.imagepicker.c.b();
        String str = (String) b2.get("path");
        if (str != null) {
            b2.put("path", this.f19474h.a(str, (Double) b2.get("maxWidth"), (Double) b2.get("maxHeight")));
        }
        if (b2.isEmpty()) {
            dVar.a(null);
        } else {
            dVar.a(b2);
        }
        io.flutter.plugins.imagepicker.c.a();
    }

    private void b(int i2) {
        if (i2 == -1) {
            f fVar = this.f19477k;
            Uri uri = this.m;
            if (uri == null) {
                uri = Uri.parse(io.flutter.plugins.imagepicker.c.c());
            }
            fVar.a(uri, new e());
            return;
        }
        b((String) null);
    }

    private void b(String str) {
        k.d dVar = this.n;
        if (dVar == null) {
            io.flutter.plugins.imagepicker.c.a(str, null, null);
        } else {
            dVar.a(str);
            b();
        }
    }

    private void b(k.d dVar) {
        dVar.a("already_active", "Image picker is already active", null);
    }

    private void b() {
        this.o = null;
        this.n = null;
    }

    public void a(j jVar, k.d dVar) {
        if (!e(jVar, dVar)) {
            b(dVar);
        } else if (!this.f19475i.a("android.permission.READ_EXTERNAL_STORAGE")) {
            this.f19475i.a("android.permission.READ_EXTERNAL_STORAGE", 2344);
        } else {
            e();
        }
    }

    private File a(String str) {
        try {
            return File.createTempFile(UUID.randomUUID().toString(), str, this.f19473g);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private void a(Intent intent, Uri uri) {
        Iterator<ResolveInfo> it = this.f19472f.getPackageManager().queryIntentActivities(intent, AntDetector.ACTION_ID_SAMPLE).iterator();
        while (it.hasNext()) {
            this.f19472f.grantUriPermission(it.next().activityInfo.packageName, uri, 3);
        }
    }

    private void a(int i2, Intent intent) {
        if (i2 == -1 && intent != null) {
            a(this.f19478l.a(this.f19472f, intent.getData()), false);
        } else {
            b((String) null);
        }
    }

    private void a(int i2) {
        if (i2 == -1) {
            f fVar = this.f19477k;
            Uri uri = this.m;
            if (uri == null) {
                uri = Uri.parse(io.flutter.plugins.imagepicker.c.c());
            }
            fVar.a(uri, new C0246d());
            return;
        }
        b((String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        j jVar = this.o;
        if (jVar != null) {
            String a2 = this.f19474h.a(str, (Double) jVar.a("maxWidth"), (Double) this.o.a("maxHeight"));
            b(a2);
            if (a2.equals(str) || !z) {
                return;
            }
            new File(str).delete();
            return;
        }
        b(str);
    }

    private void a(String str, String str2) {
        k.d dVar = this.n;
        if (dVar == null) {
            io.flutter.plugins.imagepicker.c.a(null, str, str2);
        } else {
            dVar.a(str, str2, null);
            b();
        }
    }
}
