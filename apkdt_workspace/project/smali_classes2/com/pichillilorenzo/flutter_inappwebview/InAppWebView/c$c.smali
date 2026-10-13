.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;
.super Landroid/webkit/WebViewClient;
.source "FlutterWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->dispose()V

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->destroy()V

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c$c;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    return-void
.end method
