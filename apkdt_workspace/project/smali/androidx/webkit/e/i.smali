.class public Landroidx/webkit/e/i;
.super Ljava/lang/Object;
.source "WebViewRenderProcessClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewRendererClientBoundaryInterface;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroidx/webkit/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/webkit/e/i;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/webkit/d;)V
    .locals 0
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/e/i;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Landroidx/webkit/e/i;->b:Landroidx/webkit/d;

    return-void
.end method


# virtual methods
.method public final getSupportedFeatures()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/webkit/e/i;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/InvocationHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroidx/webkit/e/k;->a(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/e/k;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/webkit/e/i;->b:Landroidx/webkit/d;

    .line 3
    iget-object v1, p0, Landroidx/webkit/e/i;->a:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/webkit/d;->a(Landroid/webkit/WebView;Landroidx/webkit/c;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Landroidx/webkit/e/i$b;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/webkit/e/i$b;-><init>(Landroidx/webkit/e/i;Landroidx/webkit/d;Landroid/webkit/WebView;Landroidx/webkit/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onRendererUnresponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/InvocationHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroidx/webkit/e/k;->a(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/e/k;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/webkit/e/i;->b:Landroidx/webkit/d;

    .line 3
    iget-object v1, p0, Landroidx/webkit/e/i;->a:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/webkit/d;->b(Landroid/webkit/WebView;Landroidx/webkit/c;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Landroidx/webkit/e/i$a;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/webkit/e/i$a;-><init>(Landroidx/webkit/e/i;Landroidx/webkit/d;Landroid/webkit/WebView;Landroidx/webkit/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
