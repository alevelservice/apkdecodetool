.class public Landroidx/webkit/e/k;
.super Landroidx/webkit/c;
.source "WebViewRenderProcessImpl.java"


# static fields
.field private static c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/webkit/WebViewRenderProcess;",
            "Landroidx/webkit/e/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebViewRenderProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/webkit/e/k;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewRenderProcess;)V
    .locals 1
    .param p1    # Landroid/webkit/WebViewRenderProcess;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroidx/webkit/c;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/webkit/e/k;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V
    .locals 0
    .param p1    # Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/webkit/c;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/e/k;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    return-void
.end method

.method public static a(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/e/k;
    .locals 2
    .param p0    # Landroid/webkit/WebViewRenderProcess;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    sget-object v0, Landroidx/webkit/e/k;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/webkit/e/k;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Landroidx/webkit/e/k;

    invoke-direct {v0, p0}, Landroidx/webkit/e/k;-><init>(Landroid/webkit/WebViewRenderProcess;)V

    .line 6
    sget-object v1, Landroidx/webkit/e/k;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/e/k;
    .locals 1
    .param p0    # Ljava/lang/reflect/InvocationHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 2
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 3
    new-instance v0, Landroidx/webkit/e/k$a;

    invoke-direct {v0, p0}, Landroidx/webkit/e/k$a;-><init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V

    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/webkit/e/k;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-string v0, "WEB_VIEW_RENDERER_TERMINATE"

    .line 7
    invoke-static {v0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/webkit/e/k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewRenderProcess;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/webkit/WebViewRenderProcess;->terminate()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/webkit/e/k;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;->terminate()Z

    move-result v0

    return v0

    .line 13
    :cond_2
    invoke-static {}, Landroidx/webkit/e/d;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
