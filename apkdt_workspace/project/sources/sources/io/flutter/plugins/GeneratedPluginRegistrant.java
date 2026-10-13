package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.baseflow.permissionhandler.q;
import com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin;
import com.pichillilorenzo.flutter_inappwebview.g;
import d.gallery_saver.GallerySaverPlugin;
import e.h.a.stop_watch_timer.StopWatchTimerPlugin;
import e.m.b.u;
import io.flutter.embedding.engine.a;
import io.flutter.plugins.a.d;
import io.flutter.plugins.d.h;
import io.flutter.plugins.e.b;
import io.flutter.plugins.f.i;
import io.flutter.plugins.firebase.core.j;
import io.flutter.plugins.firebase.crashlytics.r;
import io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin;
import io.flutter.plugins.imagepicker.e;
import io.flutter.plugins.share.c;

@Keep
/* loaded from: classes2.dex */
public final class GeneratedPluginRegistrant {
    public static void registerWith(@NonNull a aVar) {
        io.flutter.embedding.engine.g.g.a aVar2 = new io.flutter.embedding.engine.g.g.a(aVar);
        aVar.l().a(new d());
        aVar.l().a(new io.flutter.plugins.b.a());
        de.esys.esysfluttershare.a.a(aVar2.registrarFor("de.esys.esysfluttershare.EsysFlutterSharePlugin"));
        aVar.l().a(new j());
        aVar.l().a(new r());
        aVar.l().a(new FlutterFirebaseMessagingPlugin());
        aVar.l().a(new g());
        aVar.l().a(new FlutterLocalNotificationsPlugin());
        g.b.a.a.a.a.a(aVar2.registrarFor("io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin"));
        e.a(aVar2.registrarFor("io.flutter.plugins.imagepicker.ImagePickerPlugin"));
        e.g.a.a.a.a(aVar2.registrarFor("com.github.adee42.keyboardvisibility.KeyboardVisibilityPlugin"));
        e.j.a.a.a(aVar2.registrarFor("com.iyaffle.launchreview.LaunchReviewPlugin"));
        u.a(aVar2.registrarFor("com.mapbox.mapboxgl.MapboxMapsPlugin"));
        aVar.l().a(new io.flutter.plugins.c.a());
        aVar.l().a(new h());
        aVar.l().a(new q());
        aVar.l().a(new c());
        aVar.l().a(new b());
        aVar.l().a(new e.n.a.c());
        aVar.l().a(new StopWatchTimerPlugin());
        h.a.a.a.a(aVar2.registrarFor("name.avioli.unilinks.UniLinksPlugin"));
        aVar.l().a(new io.flutter.plugins.urllauncher.c());
        aVar.l().a(new i());
        aVar.l().a(new e.d.b.a.a());
        aVar.l().a(new f.a.a.a.b());
        aVar.l().a(new GallerySaverPlugin());
        aVar.l().a(new b.a.a.c());
        aVar.l().a(new e.l.a.a());
        aVar.l().a(new com.example.native_webview.e());
        aVar.l().a(new e.d.a.d());
        aVar.l().a(new com.intercept.plugins.qr_scanner.b());
        aVar.l().a(new com.jaumard.smsautofill.d());
        aVar.l().a(new e.d.c.a.b());
    }
}
