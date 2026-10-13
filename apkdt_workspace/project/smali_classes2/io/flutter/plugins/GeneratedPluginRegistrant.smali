.class public final Lio/flutter/plugins/GeneratedPluginRegistrant;
.super Ljava/lang/Object;
.source "GeneratedPluginRegistrant.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWith(Lio/flutter/embedding/engine/a;)V
    .locals 3
    .param p0    # Lio/flutter/embedding/engine/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/embedding/engine/g/g/a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/g/g/a;-><init>(Lio/flutter/embedding/engine/a;)V

    .line 2
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/a/d;

    invoke-direct {v2}, Lio/flutter/plugins/a/d;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 3
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/b/a;

    invoke-direct {v2}, Lio/flutter/plugins/b/a;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    const-string v1, "de.esys.esysfluttershare.EsysFlutterSharePlugin"

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v1

    invoke-static {v1}, Lde/esys/esysfluttershare/a;->a(Lg/a/c/a/m$d;)V

    .line 5
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/firebase/core/j;

    invoke-direct {v2}, Lio/flutter/plugins/firebase/core/j;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 6
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/r;

    invoke-direct {v2}, Lio/flutter/plugins/firebase/crashlytics/r;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 7
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;

    invoke-direct {v2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 8
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/g;

    invoke-direct {v2}, Lcom/pichillilorenzo/flutter_inappwebview/g;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 9
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

    invoke-direct {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    const-string v1, "io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin"

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v1

    invoke-static {v1}, Lg/b/a/a/a/a;->a(Lg/a/c/a/m$d;)V

    const-string v1, "io.flutter.plugins.imagepicker.ImagePickerPlugin"

    .line 11
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/imagepicker/e;->a(Lg/a/c/a/m$d;)V

    const-string v1, "com.github.adee42.keyboardvisibility.KeyboardVisibilityPlugin"

    .line 12
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v1

    invoke-static {v1}, Le/g/a/a/a;->a(Lg/a/c/a/m$d;)V

    const-string v1, "com.iyaffle.launchreview.LaunchReviewPlugin"

    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v1

    invoke-static {v1}, Le/j/a/a;->a(Lg/a/c/a/m$d;)V

    const-string v1, "com.mapbox.mapboxgl.MapboxMapsPlugin"

    .line 14
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v1

    invoke-static {v1}, Le/m/b/u;->a(Lg/a/c/a/m$d;)V

    .line 15
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/c/a;

    invoke-direct {v2}, Lio/flutter/plugins/c/a;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 16
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/d/h;

    invoke-direct {v2}, Lio/flutter/plugins/d/h;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 17
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lcom/baseflow/permissionhandler/q;

    invoke-direct {v2}, Lcom/baseflow/permissionhandler/q;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 18
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/share/c;

    invoke-direct {v2}, Lio/flutter/plugins/share/c;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 19
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/e/b;

    invoke-direct {v2}, Lio/flutter/plugins/e/b;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 20
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Le/n/a/c;

    invoke-direct {v2}, Le/n/a/c;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 21
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v1

    new-instance v2, Le/h/a/a/a;

    invoke-direct {v2}, Le/h/a/a/a;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    const-string v1, "name.avioli.unilinks.UniLinksPlugin"

    .line 22
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/g/g/a;->registrarFor(Ljava/lang/String;)Lg/a/c/a/m$d;

    move-result-object v0

    invoke-static {v0}, Lh/a/a/a;->a(Lg/a/c/a/m$d;)V

    .line 23
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/urllauncher/c;

    invoke-direct {v1}, Lio/flutter/plugins/urllauncher/c;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 24
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/f/i;

    invoke-direct {v1}, Lio/flutter/plugins/f/i;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 25
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Le/d/b/a/a;

    invoke-direct {v1}, Le/d/b/a/a;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 26
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/b;

    invoke-direct {v1}, Lf/a/a/a/b;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 27
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Ld/a/c;

    invoke-direct {v1}, Ld/a/c;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 28
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lb/a/a/c;

    invoke-direct {v1}, Lb/a/a/c;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 29
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Le/l/a/a;

    invoke-direct {v1}, Le/l/a/a;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 30
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lcom/example/native_webview/e;

    invoke-direct {v1}, Lcom/example/native_webview/e;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 31
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Le/d/a/d;

    invoke-direct {v1}, Le/d/a/d;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 32
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lcom/intercept/plugins/qr_scanner/b;

    invoke-direct {v1}, Lcom/intercept/plugins/qr_scanner/b;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 33
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object v0

    new-instance v1, Lcom/jaumard/smsautofill/d;

    invoke-direct {v1}, Lcom/jaumard/smsautofill/d;-><init>()V

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    .line 34
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->l()Lio/flutter/embedding/engine/g/b;

    move-result-object p0

    new-instance v0, Le/d/c/a/b;

    invoke-direct {v0}, Le/d/c/a/b;-><init>()V

    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/g/b;->a(Lio/flutter/embedding/engine/g/a;)V

    return-void
.end method
