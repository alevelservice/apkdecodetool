.class Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;
.super Ljava/lang/Object;
.source "ContentBlockerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/b/d;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/b/f;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field final synthetic g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/b/d;[Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;->e:[Ljava/lang/String;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;->e:[Ljava/lang/String;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;->f:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/d$a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
