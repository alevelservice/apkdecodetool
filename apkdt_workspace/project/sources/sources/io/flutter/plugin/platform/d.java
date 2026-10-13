package io.flutter.plugin.platform;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.alipay.mobile.security.bio.utils.FileUtil;
import io.flutter.embedding.engine.i.h;
import java.io.FileNotFoundException;
import java.util.List;

/* compiled from: PlatformPlugin.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final Activity f19289a;

    /* renamed from: b, reason: collision with root package name */
    private final io.flutter.embedding.engine.i.h f19290b;

    /* renamed from: c, reason: collision with root package name */
    private h.j f19291c;

    /* renamed from: d, reason: collision with root package name */
    private int f19292d;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final h.InterfaceC0238h f19293e = new a();

    /* compiled from: PlatformPlugin.java */
    /* loaded from: classes2.dex */
    class a implements h.InterfaceC0238h {
        a() {
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(@NonNull h.i iVar) {
            d.this.a(iVar);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void b() {
            d.this.d();
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public boolean c() {
            CharSequence a2 = d.this.a(h.e.PLAIN_TEXT);
            return a2 != null && a2.length() > 0;
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(@NonNull h.g gVar) {
            d.this.a(gVar);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(int i2) {
            d.this.a(i2);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(@NonNull h.c cVar) {
            d.this.a(cVar);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(@NonNull List<h.k> list) {
            d.this.a(list);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(@NonNull h.j jVar) {
            d.this.a(jVar);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a() {
            d.this.c();
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public CharSequence a(@Nullable h.e eVar) {
            return d.this.a(eVar);
        }

        @Override // io.flutter.embedding.engine.i.h.InterfaceC0238h
        public void a(@NonNull String str) {
            d.this.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlatformPlugin.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19295a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19296b;

        /* renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f19297c = new int[h.d.values().length];

        static {
            try {
                f19297c[h.d.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19297c[h.d.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f19296b = new int[h.k.values().length];
            try {
                f19296b[h.k.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19296b[h.k.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f19295a = new int[h.g.values().length];
            try {
                f19295a[h.g.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19295a[h.g.LIGHT_IMPACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19295a[h.g.MEDIUM_IMPACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19295a[h.g.HEAVY_IMPACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19295a[h.g.SELECTION_CLICK.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public d(Activity activity, io.flutter.embedding.engine.i.h hVar) {
        this.f19289a = activity;
        this.f19290b = hVar;
        this.f19290b.a(this.f19293e);
        this.f19292d = 1280;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f19289a.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        b();
    }

    public void b() {
        this.f19289a.getWindow().getDecorView().setSystemUiVisibility(this.f19292d);
        h.j jVar = this.f19291c;
        if (jVar != null) {
            a(jVar);
        }
    }

    public void a() {
        this.f19290b.a((h.InterfaceC0238h) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h.i iVar) {
        if (iVar == h.i.CLICK) {
            this.f19289a.getWindow().getDecorView().playSoundEffect(0);
        }
    }

    @VisibleForTesting
    void a(h.g gVar) {
        View decorView = this.f19289a.getWindow().getDecorView();
        int i2 = b.f19295a[gVar.ordinal()];
        if (i2 == 1) {
            decorView.performHapticFeedback(0);
            return;
        }
        if (i2 == 2) {
            decorView.performHapticFeedback(1);
            return;
        }
        if (i2 == 3) {
            decorView.performHapticFeedback(3);
            return;
        }
        if (i2 != 4) {
            if (i2 == 5 && Build.VERSION.SDK_INT >= 21) {
                decorView.performHapticFeedback(4);
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            decorView.performHapticFeedback(6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        this.f19289a.setRequestedOrientation(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h.c cVar) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            return;
        }
        if (i2 < 28 && i2 > 21) {
            this.f19289a.setTaskDescription(new ActivityManager.TaskDescription(cVar.f19149b, (Bitmap) null, cVar.f19148a));
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f19289a.setTaskDescription(new ActivityManager.TaskDescription(cVar.f19149b, 0, cVar.f19148a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<h.k> list) {
        int i2 = (list.size() != 0 || Build.VERSION.SDK_INT < 19) ? 1798 : 5894;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int i4 = b.f19296b[list.get(i3).ordinal()];
            if (i4 == 1) {
                i2 &= -5;
            } else if (i4 == 2) {
                i2 = i2 & (-513) & (-3);
            }
        }
        this.f19292d = i2;
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h.j jVar) {
        Window window = this.f19289a.getWindow();
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        if (Build.VERSION.SDK_INT >= 26) {
            h.d dVar = jVar.f19158d;
            if (dVar != null) {
                int i2 = b.f19297c[dVar.ordinal()];
                if (i2 == 1) {
                    systemUiVisibility |= 16;
                } else if (i2 == 2) {
                    systemUiVisibility &= -17;
                }
            }
            Integer num = jVar.f19157c;
            if (num != null) {
                window.setNavigationBarColor(num.intValue());
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            h.d dVar2 = jVar.f19156b;
            if (dVar2 != null) {
                int i3 = b.f19297c[dVar2.ordinal()];
                if (i3 == 1) {
                    systemUiVisibility |= FileUtil.STREAM_BUFFER_SIZE;
                } else if (i3 == 2) {
                    systemUiVisibility &= -8193;
                }
            }
            Integer num2 = jVar.f19155a;
            if (num2 != null) {
                window.setStatusBarColor(num2.intValue());
            }
        }
        Integer num3 = jVar.f19159e;
        decorView.setSystemUiVisibility(systemUiVisibility);
        this.f19291c = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence a(h.e eVar) {
        ClipboardManager clipboardManager = (ClipboardManager) this.f19289a.getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip()) {
            return null;
        }
        try {
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            if (primaryClip == null) {
                return null;
            }
            if (eVar != null && eVar != h.e.PLAIN_TEXT) {
                return null;
            }
            ClipData.Item itemAt = primaryClip.getItemAt(0);
            if (itemAt.getUri() != null) {
                this.f19289a.getContentResolver().openTypedAssetFileDescriptor(itemAt.getUri(), "text/*", null);
            }
            return itemAt.coerceToText(this.f19289a);
        } catch (FileNotFoundException unused) {
            return null;
        } catch (SecurityException e2) {
            g.a.b.b("PlatformPlugin", "Attempted to get clipboard data that requires additional permission(s).\nSee the exception details for which permission(s) are required, and consider adding them to your Android Manifest as described in:\nhttps://developer.android.com/guide/topics/permissions/overview", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        ((ClipboardManager) this.f19289a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", str));
    }
}
