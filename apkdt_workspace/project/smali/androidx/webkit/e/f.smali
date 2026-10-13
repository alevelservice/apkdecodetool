.class public Landroidx/webkit/e/f;
.super Ljava/lang/Object;
.source "WebViewProviderAdapter.java"


# instance fields
.field a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V
    .locals 0
    .param p1    # Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/e/f;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Landroidx/webkit/d;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/webkit/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroidx/webkit/e/i;

    invoke-direct {v0, p1, p2}, Landroidx/webkit/e/i;-><init>(Ljava/util/concurrent/Executor;Landroidx/webkit/d;)V

    .line 2
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p2, p0, Landroidx/webkit/e/f;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-interface {p2, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setWebViewRendererClient(Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method
