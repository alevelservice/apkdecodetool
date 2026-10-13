.class public Lcom/example/native_webview/e;
.super Ljava/lang/Object;
.source "NativeWebviewPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;
.implements Lg/a/c/a/m$a;
.implements Lg/a/c/a/d$d;
.implements Lio/flutter/embedding/engine/g/c/a;


# static fields
.field public static k:Lg/a/c/a/k;

.field public static l:Lg/a/c/a/d;


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Lg/a/c/a/k$d;

.field private g:Lcom/example/native_webview/d;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/content/Context;

.field private j:Lio/flutter/embedding/engine/g/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lg/a/c/a/d$b;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 14
    new-instance v0, Lcom/example/native_webview/e$a;

    invoke-direct {v0, p0, p1}, Lcom/example/native_webview/e$a;-><init>(Lcom/example/native_webview/e;Lg/a/c/a/d$b;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/example/native_webview/e;->f:Lg/a/c/a/k$d;

    .line 7
    iput-object v0, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/e;->i:Landroid/content/Context;

    .line 2
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "native_webview"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Lcom/example/native_webview/e;->k:Lg/a/c/a/k;

    .line 3
    new-instance p1, Lg/a/c/a/d;

    const-string v0, "native_webview_stream"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/d;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Lcom/example/native_webview/e;->l:Lg/a/c/a/d;

    .line 4
    sget-object p1, Lcom/example/native_webview/e;->k:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 5
    sget-object p1, Lcom/example/native_webview/e;->l:Lg/a/c/a/d;

    invoke-virtual {p1, p0}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/example/native_webview/d;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 4
    const-class v1, Lcom/example/native_webview/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/native_webview/d;

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/example/native_webview/e;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/native_webview/e;->e:Landroid/app/Activity;

    const-class v2, Lcom/example/native_webview/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_access_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getFullURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_full_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getRootURL()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "extra_root_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_error_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getShowInFullScreen()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "extra_full_screen_web_view"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    invoke-virtual {v1}, Lcom/example/native_webview/d;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_app_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/example/native_webview/e;->e:Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 12
    iget-object p1, p0, Lcom/example/native_webview/e;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/example/native_webview/e;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/example/native_webview/e;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public a(Ljava/lang/Object;Lg/a/c/a/d$b;)V
    .locals 1

    .line 8
    invoke-direct {p0, p2}, Lcom/example/native_webview/e;->a(Lg/a/c/a/d$b;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/example/native_webview/e;->h:Landroid/content/BroadcastReceiver;

    .line 9
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    sget-object p2, Lcom/example/native_webview/WebViewActivity;->BROADCAST_ACTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/example/native_webview/e;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/example/native_webview/e;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "success"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/example/native_webview/e;->f:Lg/a/c/a/k$d;

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/example/native_webview/e;->a()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/e;->j:Lio/flutter/embedding/engine/g/c/c;

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/e;->e:Landroid/app/Activity;

    .line 3
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/example/native_webview/e;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/e;->j:Lio/flutter/embedding/engine/g/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/c/c;->b(Lg/a/c/a/m$a;)V

    .line 3
    iput-object v1, p0, Lcom/example/native_webview/e;->j:Lio/flutter/embedding/engine/g/c/c;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/example/native_webview/e;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/example/native_webview/e;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/e;->i:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/example/native_webview/e;->k:Lg/a/c/a/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 4
    sput-object p1, Lcom/example/native_webview/e;->k:Lg/a/c/a/k;

    .line 5
    :cond_0
    sget-object v0, Lcom/example/native_webview/e;->l:Lg/a/c/a/d;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lg/a/c/a/d;->a(Lg/a/c/a/d$d;)V

    .line 7
    sput-object p1, Lcom/example/native_webview/e;->l:Lg/a/c/a/d;

    :cond_1
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    const-string v1, "showWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p2, p0, Lcom/example/native_webview/e;->f:Lg/a/c/a/k$d;

    .line 3
    iget-object v0, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/example/native_webview/e;->b(Ljava/lang/Object;)Lcom/example/native_webview/d;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    .line 4
    iget-object v0, p0, Lcom/example/native_webview/e;->g:Lcom/example/native_webview/d;

    if-nez v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/example/native_webview/e;->f:Lg/a/c/a/k$d;

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

    .line 6
    invoke-direct {p0}, Lcom/example/native_webview/e;->a()V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/example/native_webview/e;->c()V

    const-string p1, "success"

    .line 8
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    const-string v0, "closeWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/example/native_webview/e;->b()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    :goto_0
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/example/native_webview/e;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
