.class public Landroidx/webkit/e/j;
.super Landroid/webkit/WebViewRenderProcessClient;
.source "WebViewRenderProcessClientFrameworkAdapter.java"


# instance fields
.field private a:Landroidx/webkit/d;


# direct methods
.method public constructor <init>(Landroidx/webkit/d;)V
    .locals 0
    .param p1    # Landroidx/webkit/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/e/j;->a:Landroidx/webkit/d;

    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebViewRenderProcess;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/webkit/e/j;->a:Landroidx/webkit/d;

    .line 2
    invoke-static {p2}, Landroidx/webkit/e/k;->a(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/e/k;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/webkit/d;->a(Landroid/webkit/WebView;Landroidx/webkit/c;)V

    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebViewRenderProcess;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/webkit/e/j;->a:Landroidx/webkit/d;

    .line 2
    invoke-static {p2}, Landroidx/webkit/e/k;->a(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/e/k;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/webkit/d;->b(Landroid/webkit/WebView;Landroidx/webkit/c;)V

    return-void
.end method
