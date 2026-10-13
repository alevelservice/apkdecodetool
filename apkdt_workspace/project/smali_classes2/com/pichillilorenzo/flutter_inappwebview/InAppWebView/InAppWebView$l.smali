.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->initialPositionScrollStoppedTask:I

    sub-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onScrollStopped()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->initialPositionScrollStoppedTask:I

    .line 5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;->e:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    iget v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
