.class public Lcom/intercept/plugins/qr_scanner/b;
.super Ljava/lang/Object;
.source "QrScannerPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;
.implements Lg/a/c/a/m$a;
.implements Lg/a/c/a/m$e;
.implements Lio/flutter/embedding/engine/g/c/a;


# static fields
.field private static i:Lg/a/c/a/k;


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Lg/a/c/a/k$d;

.field private g:Lcom/intercept/plugins/qr_scanner/a;

.field private h:Lio/flutter/embedding/engine/g/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    if-eqz p2, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "permission is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Object;)Lcom/intercept/plugins/qr_scanner/a;
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 6
    const-class v1, Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intercept/plugins/qr_scanner/a;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->f:Lg/a/c/a/k$d;

    .line 12
    iput-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 1
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "com.intercept.plugins/qr_scanner"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Lcom/intercept/plugins/qr_scanner/b;->i:Lg/a/c/a/k;

    .line 2
    sget-object p1, Lcom/intercept/plugins/qr_scanner/b;->i:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xec1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->f:Lg/a/c/a/k$d;

    const-string v1, "permission"

    const-string v2, "you don\'t have the user permission to access the camera"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->a()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    const-class v2, Lcom/intercept/plugins/qr_scanner/QrScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_FOCUS_INTERVAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getAutoFocusIntervalInMs()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_FORCE_FOCUS:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->isForceAutoFocus()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_TORCH_ENABLED:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->isTorchEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_THEME_COLOR:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getThemeColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_TITLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_DESCRIPTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_ERROR_TITLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getAlertTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_ERROR_DESCRIPTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getAlertDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_ERROR_ACTION_TEXT:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getAlertActionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_VALID_QR_PATTERN:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getQrValidationRegex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    sget-object v1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_WHITELISTED_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v2}, Lcom/intercept/plugins/qr_scanner/a;->getWhiteListedUrls()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    const/16 v2, 0xad9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0xad9

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    sget-object p1, Lcom/intercept/plugins/qr_scanner/QrScanActivity;->EXTRA_RESULT:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 2
    iget-object p2, p0, Lcom/intercept/plugins/qr_scanner/b;->f:Lg/a/c/a/k$d;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/b;->f:Lg/a/c/a/k$d;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->a()V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/intercept/plugins/qr_scanner/b;->h:Lio/flutter/embedding/engine/g/c/c;

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    .line 3
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    .line 4
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$e;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/intercept/plugins/qr_scanner/b;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->h:Lio/flutter/embedding/engine/g/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$a;)V

    .line 3
    iget-object v0, p0, Lcom/intercept/plugins/qr_scanner/b;->h:Lio/flutter/embedding/engine/g/c/c;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$e;)V

    .line 4
    iput-object v1, p0, Lcom/intercept/plugins/qr_scanner/b;->h:Lio/flutter/embedding/engine/g/c/c;

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/intercept/plugins/qr_scanner/b;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/intercept/plugins/qr_scanner/b;->i:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    sput-object v0, Lcom/intercept/plugins/qr_scanner/b;->i:Lg/a/c/a/k;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x34264a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_2
    iput-object p2, p0, Lcom/intercept/plugins/qr_scanner/b;->f:Lg/a/c/a/k$d;

    .line 4
    iget-object p2, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/intercept/plugins/qr_scanner/b;->a(Ljava/lang/Object;)Lcom/intercept/plugins/qr_scanner/a;

    move-result-object p2

    iput-object p2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    .line 5
    iget-object p2, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    if-nez p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/intercept/plugins/qr_scanner/b;->f:Lg/a/c/a/k$d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin not passing a map as parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "INVALID_OPTIONS"

    invoke-interface {p2, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->a()V

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    const-string p2, "android.permission.CAMERA"

    invoke-direct {p0, p1, p2}, Lcom/intercept/plugins/qr_scanner/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/b;->e:Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/intercept/plugins/qr_scanner/b;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {p1}, Lcom/intercept/plugins/qr_scanner/a;->isHandlePermissions()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->b()V

    goto :goto_2

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->c()V

    goto :goto_2

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {p1}, Lcom/intercept/plugins/qr_scanner/a;->isHandlePermissions()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->b()V

    goto :goto_2

    .line 15
    :cond_6
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->c()V

    goto :goto_2

    .line 16
    :cond_7
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->d()V

    :goto_2
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/intercept/plugins/qr_scanner/b;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xec1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_2

    .line 2
    aget-object v1, p2, p1

    .line 3
    aget v2, p3, p1

    const-string v3, "android.permission.CAMERA"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/intercept/plugins/qr_scanner/b;->g:Lcom/intercept/plugins/qr_scanner/a;

    invoke-virtual {v1}, Lcom/intercept/plugins/qr_scanner/a;->isExecuteAfterPermissionGranted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->d()V

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/intercept/plugins/qr_scanner/b;->c()V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
