.class public Landroidx/webkit/e/b;
.super Landroidx/webkit/a;
.source "SafeBrowsingResponseImpl.java"


# instance fields
.field private a:Landroid/webkit/SafeBrowsingResponse;

.field private b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;


# direct methods
.method public constructor <init>(Landroid/webkit/SafeBrowsingResponse;)V
    .locals 0
    .param p1    # Landroid/webkit/SafeBrowsingResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroidx/webkit/a;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/webkit/e/b;->a:Landroid/webkit/SafeBrowsingResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1
    .param p1    # Ljava/lang/reflect/InvocationHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/webkit/a;-><init>()V

    .line 2
    const-class v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    iput-object p1, p0, Landroidx/webkit/e/b;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    return-void
.end method

.method private a()Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/e/b;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 3
    invoke-static {}, Landroidx/webkit/e/e;->c()Landroidx/webkit/e/l;

    move-result-object v1

    iget-object v2, p0, Landroidx/webkit/e/b;->a:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v1, v2}, Landroidx/webkit/e/l;->a(Landroid/webkit/SafeBrowsingResponse;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    iput-object v0, p0, Landroidx/webkit/e/b;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/webkit/e/b;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    return-object v0
.end method

.method private b()Landroid/webkit/SafeBrowsingResponse;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1b
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/e/b;->a:Landroid/webkit/SafeBrowsingResponse;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/webkit/e/e;->c()Landroidx/webkit/e/l;

    move-result-object v0

    iget-object v1, p0, Landroidx/webkit/e/b;->b:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 3
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/webkit/e/l;->a(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/SafeBrowsingResponse;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/e/b;->a:Landroid/webkit/SafeBrowsingResponse;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/webkit/e/b;->a:Landroid/webkit/SafeBrowsingResponse;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    .line 6
    invoke-static {v0}, Landroidx/webkit/e/d;->getFeature(Ljava/lang/String;)Landroidx/webkit/e/d;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-direct {p0}, Landroidx/webkit/e/b;->b()Landroid/webkit/SafeBrowsingResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/SafeBrowsingResponse;->showInterstitial(Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/e/d;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Landroidx/webkit/e/b;->a()Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;->showInterstitial(Z)V

    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-static {}, Landroidx/webkit/e/d;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
