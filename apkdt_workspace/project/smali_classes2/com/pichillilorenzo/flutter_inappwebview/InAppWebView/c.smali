.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;
.super Ljava/lang/Object;
.source "FlutterWebView.java"

# interfaces
.implements Lio/flutter/plugin/platform/f;
.implements Lg/a/c/a/k$c;


# instance fields
.field public e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field public final f:Lg/a/c/a/k;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;Landroid/view/View;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/c/a/c;",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    move-object/from16 v1, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lg/a/c/a/k;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.pichillilorenzo/flutter_inappwebview_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    .line 3
    iget-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    invoke-virtual {v2, v9}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 4
    new-instance v11, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/b;

    invoke-direct {v11}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/b;-><init>()V

    const-string v2, "display"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/hardware/display/DisplayManager;

    .line 6
    invoke-virtual {v11, v12}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/b;->b(Landroid/hardware/display/DisplayManager;)V

    const-string v2, "initialUrl"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    const-string v2, "initialFile"

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    const-string v2, "initialData"

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/Map;

    const-string v2, "initialHeaders"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/Map;

    const-string v2, "initialOptions"

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "contextMenu"

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/Map;

    const-string v3, "windowId"

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    .line 14
    new-instance v5, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    invoke-direct {v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;-><init>()V

    .line 15
    invoke-virtual {v5, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    .line 16
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    .line 17
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    move-object v1, v4

    move-object/from16 v3, p0

    move-object/from16 p1, v13

    move-object v13, v4

    move-object/from16 v4, p3

    move-object/from16 v16, v5

    move-object v5, v6

    move-object v10, v6

    move-object/from16 v6, v16

    move-object/from16 v17, v8

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;Ljava/util/Map;Landroid/view/View;)V

    iput-object v13, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 18
    invoke-virtual {v11, v12}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/b;->a(Landroid/hardware/display/DisplayManager;)V

    .line 19
    :try_start_0
    iget-object v1, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 20
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.view.View"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "mContext"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    iget-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_1
    iget-object v0, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->prepare()V

    if-eqz v10, :cond_1

    .line 27
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->m:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 28
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    iget-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 29
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_1
    if-eqz v14, :cond_2

    .line 30
    :try_start_1
    invoke-static {v14}, Lcom/pichillilorenzo/flutter_inappwebview/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 31
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " asset file cannot be found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_2
    move-object/from16 v13, p1

    :goto_2
    if-eqz v15, :cond_3

    const-string v0, "data"

    .line 33
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "mimeType"

    .line 34
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "encoding"

    .line 35
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "baseUrl"

    .line 36
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "historyUrl"

    .line 37
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 38
    iget-object v1, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_3
    iget-object v0, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    move-object/from16 v2, v17

    invoke-virtual {v0, v13, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_3
    if-nez p5, :cond_5

    move-object/from16 v1, p3

    .line 40
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uuid"

    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    const-string v2, "onHeadlessWebViewCreated"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setContainerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->lockInputConnection()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->unlockInputConnection()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setContainerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a()V

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;->a()V

    .line 5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/i;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/i;->a()V

    .line 6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    return-object v0
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    .line 1
    iget-object v2, v1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v5, 0x13

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "getTitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "getScale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "evaluateJavascript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "injectJavascriptFileFromUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "findAllAsync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "loadFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "loadData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "goBackOrForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "setContextMenu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "requestImageRef"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "setOptions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "resumeTimers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "getCertificate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "requestFocusNodeHref"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "getOriginalUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "getProgress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "clearSslPreferences"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "pageDown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "clearMatches"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "injectCSSFileFromUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "getHitTestResult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "loadUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "takeScreenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "startSafeBrowsing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "getCopyBackForwardList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "injectCSSCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "zoomOut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "getSelectedText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "getOptions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "isLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "canGoBack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "goForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "postUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "scrollTo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "scrollBy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "printCurrentPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "findNext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "zoomIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "zoomBy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "clearFocus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "clearCache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "resume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "reload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "stopLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "pageUp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "canGoForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_2f
    const-string v3, "goBack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_30
    const-string v3, "getUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_31
    const-string v3, "canGoBackOrForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_32
    const-string v3, "getScrollY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x35

    goto :goto_1

    :sswitch_33
    const-string v3, "getScrollX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x34

    goto :goto_1

    :sswitch_34
    const-string v3, "saveWebArchive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_35
    const-string v3, "getContentHeight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto :goto_1

    :sswitch_36
    const-string v3, "pauseTimers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "animated"

    const-string v12, "y"

    const-string v13, "x"

    const-string v14, "steps"

    const-string v15, "urlFile"

    const-string v8, "source"

    const-string v10, "headers"

    const-string v4, "url"

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-interface/range {p2 .. p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_6

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 5
    :cond_1
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 6
    :pswitch_1
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 8
    :cond_2
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 9
    :pswitch_2
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 11
    :cond_3
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 12
    :pswitch_3
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestImageRef()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 14
    :cond_4
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 15
    :pswitch_4
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestFocusNodeHref()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 17
    :cond_5
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 18
    :pswitch_5
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_6

    const-string v2, "contextMenu"

    .line 19
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 20
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object v1, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 21
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 22
    :cond_6
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 23
    :pswitch_6
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->clearFocus()V

    .line 25
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 26
    :cond_7
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 27
    :pswitch_7
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {v1}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 29
    :cond_8
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 30
    :pswitch_8
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v1}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 32
    :cond_9
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 33
    :pswitch_9
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_a

    const-string v2, "basename"

    .line 34
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "autoname"

    .line 35
    invoke-virtual {v1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 36
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$b;

    invoke-direct {v4, v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;Lg/a/c/a/k$d;)V

    invoke-virtual {v3, v2, v1, v4}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto/16 :goto_6

    .line 37
    :cond_a
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 38
    :pswitch_a
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_b

    const-string v2, "top"

    .line 39
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 40
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 41
    :cond_b
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 42
    :pswitch_b
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_c

    const-string v2, "bottom"

    .line 43
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 44
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 45
    :cond_c
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 46
    :pswitch_c
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_d

    .line 47
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v7, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 52
    :cond_d
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 53
    :pswitch_d
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_e

    .line 54
    invoke-virtual {v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSelectedText(Lg/a/c/a/k$d;)V

    goto/16 :goto_6

    .line 55
    :cond_e
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 56
    :pswitch_e
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUpdatedScale()Ljava/lang/Float;

    move-result-object v6

    :cond_f
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 57
    :pswitch_f
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v6

    :cond_10
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 58
    :pswitch_10
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11

    const-string v2, "zoomFactor"

    .line 59
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 60
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->zoomBy(F)V

    .line 61
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 62
    :cond_11
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 63
    :pswitch_11
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_12
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 64
    :pswitch_12
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_13

    .line 65
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->printCurrentPage()V

    .line 66
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 67
    :cond_13
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 68
    :pswitch_13
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_14

    .line 69
    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 70
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 71
    :cond_14
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 72
    :pswitch_14
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_15

    .line 73
    invoke-virtual {v1}, Landroid/webkit/WebView;->pauseTimers()V

    .line 74
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 75
    :cond_15
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 76
    :pswitch_15
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_16

    .line 77
    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 78
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 79
    :cond_16
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 80
    :pswitch_16
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_17

    .line 81
    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 82
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 83
    :cond_17
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 84
    :pswitch_17
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_18

    .line 85
    invoke-virtual {v1, v13}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 86
    invoke-virtual {v1, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 87
    invoke-virtual {v1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 88
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v3, v2, v4, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 89
    :cond_18
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 90
    :pswitch_18
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_19

    .line 91
    invoke-virtual {v1, v13}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 92
    invoke-virtual {v1, v12}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 94
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v3, v2, v4, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 95
    :cond_19
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 96
    :pswitch_19
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1a

    .line 97
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    .line 98
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 99
    :cond_1a
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 100
    :pswitch_1a
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_1b

    const-string v2, "forward"

    .line 101
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 102
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 103
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 104
    :cond_1b
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 105
    :pswitch_1b
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_1c

    const-string v2, "find"

    .line 106
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 108
    :cond_1c
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 109
    :pswitch_1c
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1d

    .line 110
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 111
    :cond_1d
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 112
    :pswitch_1d
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1e

    .line 113
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    .line 114
    :cond_1e
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 115
    :pswitch_1e
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_1f

    const-string v1, "START_SAFE_BROWSING"

    .line 116
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 117
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$a;

    invoke-direct {v2, v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;Lg/a/c/a/k$d;)V

    invoke-static {v1, v2}, Landroidx/webkit/b;->a(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_6

    .line 118
    :cond_1f
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 119
    :pswitch_1f
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCopyBackForwardList()Ljava/util/HashMap;

    move-result-object v6

    :cond_20
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 120
    :pswitch_20
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOptions()Ljava/util/Map;

    move-result-object v6

    :cond_21
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 121
    :pswitch_21
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_22

    .line 122
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    invoke-direct {v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;-><init>()V

    const-string v3, "options"

    .line 123
    invoke-virtual {v1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 124
    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    .line 125
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v3, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;Ljava/util/HashMap;)V

    .line 126
    :cond_22
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 127
    :pswitch_22
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_23

    .line 128
    invoke-virtual {v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->takeScreenshot(Lg/a/c/a/k$d;)V

    goto/16 :goto_6

    .line 129
    :cond_23
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 130
    :pswitch_23
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v16, 0x1

    goto :goto_2

    :cond_24
    const/16 v16, 0x0

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 131
    :pswitch_24
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_25

    .line 132
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 133
    :cond_25
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 134
    :pswitch_25
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_26

    invoke-virtual {v1, v14}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v16, 0x1

    goto :goto_3

    :cond_26
    const/16 v16, 0x0

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 135
    :pswitch_26
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_27

    .line 136
    invoke-virtual {v1, v14}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 137
    :cond_27
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 138
    :pswitch_27
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v16, 0x1

    goto :goto_4

    :cond_28
    const/16 v16, 0x0

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 139
    :pswitch_28
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_29

    .line 140
    invoke-virtual {v1}, Landroid/webkit/WebView;->goForward()V

    .line 141
    :cond_29
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 142
    :pswitch_29
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v16, 0x1

    goto :goto_5

    :cond_2a
    const/16 v16, 0x0

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 143
    :pswitch_2a
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2b

    .line 144
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 145
    :cond_2b
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 146
    :pswitch_2b
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2c

    .line 147
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->reload()V

    .line 148
    :cond_2c
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 149
    :pswitch_2c
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_2d

    .line 150
    invoke-virtual {v1, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSFileFromUrl(Ljava/lang/String;)V

    .line 152
    :cond_2d
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 153
    :pswitch_2d
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_2e

    .line 154
    invoke-virtual {v1, v8}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSCode(Ljava/lang/String;)V

    .line 156
    :cond_2e
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 157
    :pswitch_2e
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_2f

    .line 158
    invoke-virtual {v1, v15}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectJavascriptFileFromUrl(Ljava/lang/String;)V

    .line 160
    :cond_2f
    invoke-interface {v7, v11}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 161
    :pswitch_2f
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_30

    .line 162
    invoke-virtual {v1, v8}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto/16 :goto_6

    :cond_30
    const-string v1, ""

    .line 164
    invoke-interface {v7, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 165
    :pswitch_30
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_31

    .line 166
    invoke-virtual {v1, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v3, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadFile(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V

    goto/16 :goto_6

    .line 167
    :cond_31
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_31
    const-string v2, "data"

    .line 168
    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mimeType"

    .line 169
    invoke-virtual {v1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "encoding"

    .line 170
    invoke-virtual {v1, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "baseUrl"

    .line 171
    invoke-virtual {v1, v5}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "historyUrl"

    .line 172
    invoke-virtual {v1, v6}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 173
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_32

    move-object/from16 v7, p2

    .line 174
    invoke-virtual/range {v1 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    goto :goto_6

    .line 175
    :cond_32
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 176
    :pswitch_32
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_33

    .line 177
    invoke-virtual {v1, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "postData"

    invoke-virtual {v1, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v3, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->postUrl(Ljava/lang/String;[BLg/a/c/a/k$d;)V

    goto :goto_6

    .line 178
    :cond_33
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 179
    :pswitch_33
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_34

    .line 180
    invoke-virtual {v1, v4}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v10}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v3, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V

    goto :goto_6

    .line 181
    :cond_34
    invoke-interface {v7, v9}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 182
    :pswitch_34
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_35
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 183
    :pswitch_35
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v6

    :cond_36
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 184
    :pswitch_36
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_37
    invoke-interface {v7, v6}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a88dc9c -> :sswitch_36
        -0x69b090b6 -> :sswitch_35
        -0x60d253d5 -> :sswitch_34
        -0x4f5bd10b -> :sswitch_33
        -0x4f5bd10a -> :sswitch_32
        -0x4e0b0fbd -> :sswitch_31
        -0x4a7789c7 -> :sswitch_30
        -0x4a012e11 -> :sswitch_2f
        -0x3f9d4d33 -> :sswitch_2e
        -0x3b59fa76 -> :sswitch_2d
        -0x38833526 -> :sswitch_2c
        -0x37b57e67 -> :sswitch_2b
        -0x37b237d3 -> :sswitch_2a
        -0x2d410ecb -> :sswitch_29
        -0x2d106975 -> :sswitch_28
        -0x29807c76 -> :sswitch_27
        -0x29807ba8 -> :sswitch_26
        -0x287e8fb4 -> :sswitch_25
        -0x28785945 -> :sswitch_24
        -0x17f88ffc -> :sswitch_23
        -0x17f88dd8 -> :sswitch_22
        -0x17518f51 -> :sswitch_21
        -0x12f8b743 -> :sswitch_20
        -0x12e5de21 -> :sswitch_1f
        -0xe7dd74e -> :sswitch_1e
        -0xcac3d98 -> :sswitch_1d
        -0x7a08722 -> :sswitch_1c
        -0x68ee185 -> :sswitch_1b
        -0x32ce041 -> :sswitch_1a
        -0x1f169cf -> :sswitch_19
        -0x10edb0a -> :sswitch_18
        0x65825f6 -> :sswitch_17
        0xb9ed94d -> :sswitch_16
        0x141096a9 -> :sswitch_15
        0x1d5dd38c -> :sswitch_14
        0x2c211a37 -> :sswitch_13
        0x30b32a26 -> :sswitch_12
        0x33331bd1 -> :sswitch_11
        0x3e28c0f9 -> :sswitch_10
        0x402effa3 -> :sswitch_f
        0x410b6ca8 -> :sswitch_e
        0x4a4dcef6 -> :sswitch_d
        0x4e358861 -> :sswitch_c
        0x5aa2005b -> :sswitch_b
        0x66c50fdc -> :sswitch_a
        0x6714ace7 -> :sswitch_9
        0x6a1709ec -> :sswitch_8
        0x6bed5233 -> :sswitch_7
        0x6dfa45b0 -> :sswitch_6
        0x6dfb4b82 -> :sswitch_5
        0x72420634 -> :sswitch_4
        0x72be6f8b -> :sswitch_3
        0x738236e6 -> :sswitch_2
        0x7520af94 -> :sswitch_1
        0x7531c8a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
