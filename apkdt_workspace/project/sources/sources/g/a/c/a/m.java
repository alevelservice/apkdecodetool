package g.a.c.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

/* compiled from: PluginRegistry.java */
/* loaded from: classes2.dex */
public interface m {

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface a {
        boolean onActivityResult(int i2, int i3, Intent intent);
    }

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface b {
        boolean onNewIntent(Intent intent);
    }

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(m mVar);
    }

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface d {
        Context a();

        d a(a aVar);

        d a(b bVar);

        d a(e eVar);

        String a(String str);

        Activity b();

        Context c();

        g.a.c.a.c d();

        io.flutter.plugin.platform.h e();
    }

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface e {
        boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr);
    }

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface f {
        void onUserLeaveHint();
    }

    /* compiled from: PluginRegistry.java */
    /* loaded from: classes2.dex */
    public interface g {
        boolean a(io.flutter.view.e eVar);
    }

    boolean hasPlugin(String str);

    d registrarFor(String str);

    <T> T valuePublishedByPlugin(String str);
}
