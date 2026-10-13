.class final Lcom/google/android/gms/internal/ads/si;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/fi;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private A:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private C:Lcom/google/android/gms/internal/ads/zzbbu;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private D:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private E:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private F:Lcom/google/android/gms/internal/ads/g;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private G:Lcom/google/android/gms/internal/ads/d;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private H:Lcom/google/android/gms/internal/ads/nr1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private I:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private J:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private K:Lcom/google/android/gms/internal/ads/nw1;

.field private L:Lcom/google/android/gms/internal/ads/nw1;

.field private M:Lcom/google/android/gms/internal/ads/nw1;

.field private N:Lcom/google/android/gms/internal/ads/qw1;

.field private O:Lcom/google/android/gms/ads/internal/overlay/zze;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private P:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private Q:Lcom/google/android/gms/internal/ads/hd;

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/jh;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Landroid/view/WindowManager;

.field private final a0:Lcom/google/android/gms/internal/ads/ks1;

.field private final e:Lcom/google/android/gms/internal/ads/sj;

.field private final f:Lcom/google/android/gms/internal/ads/t11;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/zzawv;

.field private final h:Lcom/google/android/gms/ads/internal/i;

.field private final i:Lcom/google/android/gms/ads/internal/b;

.field private final j:Landroid/util/DisplayMetrics;

.field private final k:F

.field private final l:Lcom/google/android/gms/internal/ads/qr1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/google/android/gms/internal/ads/ii;

.field private q:Lcom/google/android/gms/ads/internal/overlay/zze;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private r:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private s:Lcom/google/android/gms/internal/ads/uj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private u:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private v:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private w:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private x:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private y:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private z:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/sj;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)V
    .locals 2
    .param p6    # Lcom/google/android/gms/internal/ads/t11;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    .line 2
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/si;->n:Z

    .line 3
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/si;->o:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->A:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/si;->B:Ljava/lang/String;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/si;->R:I

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/ads/si;->S:I

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/si;->T:I

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/si;->U:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/si;->t:Ljava/lang/String;

    .line 13
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/si;->w:Z

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/ads/si;->z:I

    .line 15
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/si;->f:Lcom/google/android/gms/internal/ads/t11;

    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/si;->g:Lcom/google/android/gms/internal/ads/zzawv;

    .line 17
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/si;->h:Lcom/google/android/gms/ads/internal/i;

    .line 18
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/si;->i:Lcom/google/android/gms/ads/internal/b;

    .line 19
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/si;->W:Landroid/view/WindowManager;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->W:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    .line 22
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/si;->a0:Lcom/google/android/gms/internal/ads/ks1;

    .line 23
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/si;->l:Lcom/google/android/gms/internal/ads/qr1;

    .line 24
    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/si;->m:Z

    .line 25
    invoke-virtual {p0, p5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 28
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    .line 29
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 31
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 32
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 33
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    const/4 p3, 0x2

    .line 34
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object p3

    iget-object p4, p7, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object p3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/ads/db;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 37
    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->d()V

    .line 39
    invoke-static {}, Lcom/google/android/gms/common/util/o;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aj;->a(Lcom/google/android/gms/internal/ads/fi;)Lcom/google/android/gms/internal/ads/aj;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string p2, "accessibility"

    .line 41
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    .line 42
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 43
    new-instance p2, Lcom/google/android/gms/internal/ads/hd;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    .line 44
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sj;->a()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/hd;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/si;->Q:Lcom/google/android/gms/internal/ads/hd;

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->h()V

    .line 46
    new-instance p2, Lcom/google/android/gms/internal/ads/qw1;

    new-instance p3, Lcom/google/android/gms/internal/ads/pw1;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/si;->t:Ljava/lang/String;

    const-string p6, "make_wv"

    invoke-direct {p3, v0, p6, p5}, Lcom/google/android/gms/internal/ads/pw1;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/qw1;-><init>(Lcom/google/android/gms/internal/ads/pw1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    .line 47
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/google/android/gms/internal/ads/pw1;->a(Lcom/google/android/gms/internal/ads/pw1;)V

    .line 48
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/kw1;->a(Lcom/google/android/gms/internal/ads/pw1;)Lcom/google/android/gms/internal/ads/nw1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/si;->L:Lcom/google/android/gms/internal/ads/nw1;

    .line 49
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/si;->L:Lcom/google/android/gms/internal/ads/nw1;

    const-string p5, "native:view_create"

    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/internal/ads/qw1;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/nw1;)V

    .line 50
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/si;->M:Lcom/google/android/gms/internal/ads/nw1;

    .line 51
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/si;->K:Lcom/google/android/gms/internal/ads/nw1;

    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/db;->b(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ca;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/si;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/google/android/gms/internal/ads/si;->J:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/si;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/ads/si;->J:I

    return p1
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)Lcom/google/android/gms/internal/ads/si;
    .locals 15
    .param p5    # Lcom/google/android/gms/internal/ads/t11;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/sj;

    move-object v0, p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/sj;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v14, Lcom/google/android/gms/internal/ads/si;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/si;-><init>(Lcom/google/android/gms/internal/ads/sj;Lcom/google/android/gms/internal/ads/uj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/qr1;Z)V

    return-object v14
.end method

.method private final a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->y:Ljava/lang/Boolean;

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ca;->a(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/si;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/si;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final a(Z)V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 37
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static final synthetic a(ZILcom/google/android/gms/internal/ads/pt1;)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/ws1;->m()Lcom/google/android/gms/internal/ads/ws1$a;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws1$a;->j()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ws1$a;->a(Z)Lcom/google/android/gms/internal/ads/ws1$a;

    .line 42
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ws1$a;->a(I)Lcom/google/android/gms/internal/ads/ws1$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/ws1;

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/pt1;->h:Lcom/google/android/gms/internal/ads/ws1;

    return-void
.end method

.method private final a()Z
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sj;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->c(Landroid/app/Activity;)[I

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    .line 14
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->S:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->R:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->T:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->U:I

    if-ne v0, v7, :cond_3

    return v1

    .line 15
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->S:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->R:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 16
    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/si;->S:I

    .line 17
    iput v5, p0, Lcom/google/android/gms/internal/ads/si;->R:I

    .line 18
    iput v6, p0, Lcom/google/android/gms/internal/ads/si;->T:I

    .line 19
    iput v7, p0, Lcom/google/android/gms/internal/ads/si;->U:I

    .line 20
    new-instance v3, Lcom/google/android/gms/internal/ads/k6;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/k6;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->W:Landroid/view/WindowManager;

    .line 21
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 22
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/k6;->a(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ca;->d()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/si;->y:Ljava/lang/Boolean;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->y:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/si;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 11
    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/si;)V
    .locals 0

    .line 13
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private final c()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->L:Lcom/google/android/gms/internal/ads/nw1;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kw1;->a(Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/internal/ads/nw1;[Ljava/lang/String;)Z

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/o;->f()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->b()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/si;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->w:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->x:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/si;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->e()Lcom/google/android/gms/internal/ads/db;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/si;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/jh;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jh;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ca;->c()Lcom/google/android/gms/internal/ads/ew1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ca;->c()Lcom/google/android/gms/internal/ads/ew1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ew1;->a(Lcom/google/android/gms/internal/ads/pw1;)Z

    :cond_1
    return-void
.end method

.method private final declared-synchronized i()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->y:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->P:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ca;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->Q:Lcom/google/android/gms/internal/ads/hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hd;->d()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/si;->r:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->i()V

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->y()Lcom/google/android/gms/internal/ads/gh;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/gh;->a(Lcom/google/android/gms/internal/ads/tf;)Z

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->g()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->v:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/si;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->f(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .locals 1

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->v:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->i()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->y()Lcom/google/android/gms/internal/ads/gh;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/gh;->a(Lcom/google/android/gms/internal/ads/tf;)Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->g()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->j()V

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized isDestroyed()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 4
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->Q:Lcom/google/android/gms/internal/ads/hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hd;->a()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->D:Z

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ii;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->E:Z

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->k()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->l()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/si;->E:Z

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->a()Z

    const/4 v0, 0x1

    .line 15
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/si;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->Q:Lcom/google/android/gms/internal/ads/hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hd;->b()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->k()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->l()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/si;->E:Z

    .line 16
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/si;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 7
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 8
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->a()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->zzyu()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzsp()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->w:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->V1:Lcom/google/android/gms/internal/ads/pv1;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->zzxj()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbu;->getAspectRatio()F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_5
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_6

    if-eqz v2, :cond_6

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 20
    :cond_7
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 21
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->X1:Lcom/google/android/gms/internal/ads/pv1;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/common/util/o;->d()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "/contentHeight"

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/ui;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ui;-><init>(Lcom/google/android/gms/internal/ads/si;)V

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/si;->c(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 32
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 33
    iget v1, p0, Lcom/google/android/gms/internal/ads/si;->J:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 34
    iget p2, p0, Lcom/google/android/gms/internal/ads/si;->J:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    .line 35
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 36
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 38
    :cond_b
    :goto_3
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 40
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->j:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_d
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_e

    goto :goto_4

    :cond_e
    const v0, 0x7fffffff

    goto :goto_5

    :cond_f
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_11

    :cond_10
    move v5, p2

    .line 47
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/uj;->c:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/uj;->b:I

    if-le v2, v5, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 48
    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ads/aw1;->T2:Lcom/google/android/gms/internal/ads/pv1;

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 51
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/uj;->c:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/uj;->b:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    if-eqz v2, :cond_15

    goto :goto_9

    :cond_15
    move v0, v2

    :goto_9
    const/16 v2, 0x8

    if-eqz v0, :cond_17

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/uj;->c:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/uj;->b:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/gms/internal/ads/si;->k:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dp, but only has "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_16

    const/4 p1, 0x4

    .line 54
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 55
    :cond_16
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 56
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/si;->n:Z

    if-nez p1, :cond_1a

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->a0:Lcom/google/android/gms/internal/ads/ks1;

    sget-object p2, Lcom/google/android/gms/internal/ads/ms1;->zzbth:Lcom/google/android/gms/internal/ads/ms1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/ms1;)V

    .line 58
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/si;->n:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 59
    :cond_17
    :try_start_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_18

    .line 60
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 61
    :cond_18
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/si;->o:Z

    if-nez p1, :cond_19

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->a0:Lcom/google/android/gms/internal/ads/ks1;

    sget-object p2, Lcom/google/android/gms/internal/ads/ms1;->zzbti:Lcom/google/android/gms/internal/ads/ms1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/ms1;)V

    .line 63
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/si;->o:Z

    .line 64
    :cond_19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget p1, p1, Lcom/google/android/gms/internal/ads/uj;->c:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    iget p2, p2, Lcom/google/android/gms/internal/ads/uj;->b:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 65
    :cond_1a
    monitor-exit p0

    return-void

    .line 66
    :cond_1b
    :goto_a
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ii;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->F:Lcom/google/android/gms/internal/ads/g;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->F:Lcom/google/android/gms/internal/ads/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/g;->a(Landroid/view/MotionEvent;)V

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->f:Lcom/google/android/gms/internal/ads/t11;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/t11;->a(Landroid/view/MotionEvent;)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/si;->z:I

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->z:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ii;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ii;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->zzzp()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v0, "Initializing ArWebView object."

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->l:Lcom/google/android/gms/internal/ads/qr1;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/qr1;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 57
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->l:Lcom/google/android/gms/internal/ads/qr1;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/qr1;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/si;->l:Lcom/google/android/gms/internal/ads/qr1;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/qr1;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p1, "The FrameLayout object cannot be null."

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ii;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 19
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/cq1;)V
    .locals 1

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/cq1;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->D:Z

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/cq1;->j:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/si;->a(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/d;)V
    .locals 0

    monitor-enter p0

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->G:Lcom/google/android/gms/internal/ads/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/g;)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->F:Lcom/google/android/gms/internal/ads/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/nr1;)V
    .locals 0

    monitor-enter p0

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->H:Lcom/google/android/gms/internal/ads/nr1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/uj;)V
    .locals 0

    monitor-enter p0

    .line 21
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    .line 22
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbbu;)V
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->C:Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->C:Lcom/google/android/gms/internal/ads/zzbbu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p<",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ii;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jh;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ii;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wa;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/si;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ii;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ii;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "success"

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzae(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ii;->c()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/si;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzao(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ii;->b(Z)V

    return-void
.end method

.method public final declared-synchronized zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->r:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaq(Z)V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->w:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/si;->w:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->d()V

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->O:Lcom/google/android/gms/internal/ads/pv1;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/k6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/k6;-><init>(Lcom/google/android/gms/internal/ads/fi;)V

    if-eqz p1, :cond_2

    const-string p1, "expanded"

    goto :goto_1

    :cond_2
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k6;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzar(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/si;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzas(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->I:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/si;->I:I

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/ads/si;->I:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzat(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ii;->c(Z)V

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 10
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->O:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o0<",
            "-",
            "Lcom/google/android/gms/internal/ads/fi;",
            ">;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ii;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/lj;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/lj;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    .line 3
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/si;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(ZI)Z
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->destroy()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->a0:Lcom/google/android/gms/internal/ads/ks1;

    new-instance v1, Lcom/google/android/gms/internal/ads/vi;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/vi;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/js1;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->a0:Lcom/google/android/gms/internal/ads/ks1;

    sget-object p2, Lcom/google/android/gms/internal/ads/ms1;->zzbtj:Lcom/google/android/gms/internal/ads/ms1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ks1;->a(Lcom/google/android/gms/internal/ads/ms1;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzbq(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sj;->setBaseContext(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->Q:Lcom/google/android/gms/internal/ads/hd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sj;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hd;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ii;->a(ZI)V

    return-void
.end method

.method public final zzct(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/si;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdc(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->L:Lcom/google/android/gms/internal/ads/nw1;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kw1;->a(Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/internal/ads/nw1;[Ljava/lang/String;)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->c()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/pw1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/si;->g:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzez(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/jh;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/jh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzju()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->h:Lcom/google/android/gms/ads/internal/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->h:Lcom/google/android/gms/ads/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/i;->zzju()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzjv()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->h:Lcom/google/android/gms/ads/internal/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->h:Lcom/google/android/gms/ads/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/i;->zzjv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzsq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->K:Lcom/google/android/gms/internal/ads/nw1;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->L:Lcom/google/android/gms/internal/ads/nw1;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kw1;->a(Lcom/google/android/gms/internal/ads/pw1;Lcom/google/android/gms/internal/ads/nw1;[Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kw1;->a(Lcom/google/android/gms/internal/ads/pw1;)Lcom/google/android/gms/internal/ads/nw1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/si;->K:Lcom/google/android/gms/internal/ads/nw1;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->K:Lcom/google/android/gms/internal/ads/nw1;

    const-string v2, "native:view_show"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/qw1;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/nw1;)V

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->g:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzsr()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/si;->zzyu()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzsr()V

    :cond_0
    return-void
.end method

.method public final zzxi()Lcom/google/android/gms/internal/ads/if;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzxj()Lcom/google/android/gms/internal/ads/zzbbu;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->C:Lcom/google/android/gms/internal/ads/zzbbu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzxk()Lcom/google/android/gms/internal/ads/nw1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->L:Lcom/google/android/gms/internal/ads/nw1;

    return-object v0
.end method

.method public final zzxl()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sj;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzxm()Lcom/google/android/gms/ads/internal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->i:Lcom/google/android/gms/ads/internal/b;

    return-object v0
.end method

.method public final declared-synchronized zzxn()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzxo()Lcom/google/android/gms/internal/ads/qw1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    return-object v0
.end method

.method public final zzxp()Lcom/google/android/gms/internal/ads/zzawv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->g:Lcom/google/android/gms/internal/ads/zzawv;

    return-object v0
.end method

.method public final zzxq()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzxr()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzxs()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->G:Lcom/google/android/gms/internal/ads/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->G:Lcom/google/android/gms/internal/ads/d;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/d;->zzqe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzyr()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->c()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->g:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzys()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->h()Lcom/google/android/gms/internal/ads/mb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mb;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->h()Lcom/google/android/gms/internal/ads/mb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mb;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mb;->a(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/si;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzyt()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->e:Lcom/google/android/gms/internal/ads/sj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzyu()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->q:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzyv()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->O:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzyw()Lcom/google/android/gms/internal/ads/uj;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->s:Lcom/google/android/gms/internal/ads/uj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzyx()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzyy()Lcom/google/android/gms/internal/ads/oj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    return-object v0
.end method

.method public final zzyz()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->p:Lcom/google/android/gms/internal/ads/ii;

    return-object v0
.end method

.method public final declared-synchronized zzza()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzb()Lcom/google/android/gms/internal/ads/t11;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->f:Lcom/google/android/gms/internal/ads/t11;

    return-object v0
.end method

.method public final declared-synchronized zzzc()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->r:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzd()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzze()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/si;->j()V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/wi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wi;-><init>(Lcom/google/android/gms/internal/ads/si;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzf()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzg()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final zzzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->Q:Lcom/google/android/gms/internal/ads/hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hd;->c()V

    return-void
.end method

.method public final zzzi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->M:Lcom/google/android/gms/internal/ads/nw1;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qw1;->a()Lcom/google/android/gms/internal/ads/pw1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kw1;->a(Lcom/google/android/gms/internal/ads/pw1;)Lcom/google/android/gms/internal/ads/nw1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/si;->M:Lcom/google/android/gms/internal/ads/nw1;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->N:Lcom/google/android/gms/internal/ads/qw1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/si;->M:Lcom/google/android/gms/internal/ads/nw1;

    const-string v2, "native:view_load"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/qw1;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/nw1;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzzj()Lcom/google/android/gms/internal/ads/g;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->F:Lcom/google/android/gms/internal/ads/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzk()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzzl()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzzm()Lcom/google/android/gms/internal/ads/nr1;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->H:Lcom/google/android/gms/internal/ads/nr1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzzo()Lcom/google/android/gms/internal/ads/qr1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->l:Lcom/google/android/gms/internal/ads/qr1;

    return-object v0
.end method

.method public final zzzp()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->I3:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->l:Lcom/google/android/gms/internal/ads/qr1;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/si;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
