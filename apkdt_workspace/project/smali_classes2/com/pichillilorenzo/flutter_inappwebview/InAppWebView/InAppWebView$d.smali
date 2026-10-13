.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->e:I

    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onScrollStopped()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->g:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->e:I

    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onFloatingActionGlobalLayout(II)V

    :cond_1
    :goto_0
    return-void
.end method
