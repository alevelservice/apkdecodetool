.class Lio/flutter/plugins/f/c$b;
.super Landroid/webkit/WebChromeClient;
.source "FlutterWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/f/c;


# direct methods
.method private constructor <init>(Lio/flutter/plugins/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/f/c$b;->a:Lio/flutter/plugins/f/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/plugins/f/c;Lio/flutter/plugins/f/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/flutter/plugins/f/c$b;-><init>(Lio/flutter/plugins/f/c;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 1
    new-instance p2, Lio/flutter/plugins/f/c$b$a;

    invoke-direct {p2, p0}, Lio/flutter/plugins/f/c$b$a;-><init>(Lio/flutter/plugins/f/c$b;)V

    .line 2
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 5
    invoke-virtual {p1, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 6
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method
