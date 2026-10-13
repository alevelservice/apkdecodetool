.class public Lio/flutter/embedding/engine/a;
.super Ljava/lang/Object;
.source "FlutterEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a$b;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/flutter/embedding/engine/h/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/flutter/embedding/engine/e/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/flutter/embedding/engine/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lg/a/c/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/flutter/embedding/engine/i/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lio/flutter/embedding/engine/i/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lio/flutter/embedding/engine/i/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lio/flutter/embedding/engine/i/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Lio/flutter/embedding/engine/i/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Lio/flutter/embedding/engine/i/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Lio/flutter/embedding/engine/i/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final m:Lio/flutter/embedding/engine/i/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n:Lio/flutter/embedding/engine/i/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Lio/flutter/embedding/engine/i/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Lio/flutter/embedding/engine/i/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q:Lio/flutter/plugin/platform/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lio/flutter/embedding/engine/a$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/k;[Ljava/lang/String;Z)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/f/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/engine/FlutterJNI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugin/platform/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 5
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/k;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/k;[Ljava/lang/String;ZZ)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/f/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/engine/FlutterJNI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugin/platform/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->r:Ljava/util/Set;

    .line 8
    new-instance v0, Lio/flutter/embedding/engine/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/a$a;-><init>(Lio/flutter/embedding/engine/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->s:Lio/flutter/embedding/engine/a$b;

    .line 9
    new-instance v0, Lio/flutter/embedding/engine/e/a;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lio/flutter/embedding/engine/e/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    .line 10
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->e()V

    .line 11
    new-instance v0, Lio/flutter/embedding/engine/i/b;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1, p3}, Lio/flutter/embedding/engine/i/b;-><init>(Lio/flutter/embedding/engine/e/a;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->f:Lio/flutter/embedding/engine/i/b;

    .line 12
    new-instance v0, Lio/flutter/embedding/engine/i/c;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/c;-><init>(Lg/a/c/a/c;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->g:Lio/flutter/embedding/engine/i/c;

    .line 13
    new-instance v0, Lio/flutter/embedding/engine/i/d;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/d;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->h:Lio/flutter/embedding/engine/i/d;

    .line 14
    new-instance v0, Lio/flutter/embedding/engine/i/e;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/e;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->i:Lio/flutter/embedding/engine/i/e;

    .line 15
    new-instance v0, Lio/flutter/embedding/engine/i/f;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/f;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->j:Lio/flutter/embedding/engine/i/f;

    .line 16
    new-instance v0, Lio/flutter/embedding/engine/i/g;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/g;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->k:Lio/flutter/embedding/engine/i/g;

    .line 17
    new-instance v0, Lio/flutter/embedding/engine/i/h;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/h;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->m:Lio/flutter/embedding/engine/i/h;

    .line 18
    new-instance v0, Lio/flutter/embedding/engine/i/j;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {v0, v1, p7}, Lio/flutter/embedding/engine/i/j;-><init>(Lio/flutter/embedding/engine/e/a;Z)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->l:Lio/flutter/embedding/engine/i/j;

    .line 19
    new-instance p7, Lio/flutter/embedding/engine/i/k;

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p7, v0}, Lio/flutter/embedding/engine/i/k;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->n:Lio/flutter/embedding/engine/i/k;

    .line 20
    new-instance p7, Lio/flutter/embedding/engine/i/l;

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p7, v0}, Lio/flutter/embedding/engine/i/l;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->o:Lio/flutter/embedding/engine/i/l;

    .line 21
    new-instance p7, Lio/flutter/embedding/engine/i/m;

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-direct {p7, v0}, Lio/flutter/embedding/engine/i/m;-><init>(Lio/flutter/embedding/engine/e/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->p:Lio/flutter/embedding/engine/i/m;

    .line 22
    new-instance p7, Lg/a/c/b/a;

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->i:Lio/flutter/embedding/engine/i/e;

    invoke-direct {p7, p1, v0}, Lg/a/c/b/a;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/i/e;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->e:Lg/a/c/b/a;

    .line 23
    iput-object p3, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    if-nez p2, :cond_0

    .line 24
    invoke-static {}, Lg/a/a;->c()Lg/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lg/a/a;->a()Lio/flutter/embedding/engine/f/c;

    move-result-object p2

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p7

    invoke-virtual {p2, p7}, Lio/flutter/embedding/engine/f/c;->a(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p2, p1, p5}, Lio/flutter/embedding/engine/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 27
    iget-object p5, p0, Lio/flutter/embedding/engine/a;->s:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    .line 28
    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/k;)V

    .line 29
    iget-object p5, p0, Lio/flutter/embedding/engine/a;->e:Lg/a/c/b/a;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lg/a/c/b/a;)V

    .line 30
    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->r()V

    .line 31
    new-instance p5, Lio/flutter/embedding/engine/h/a;

    invoke-direct {p5, p3}, Lio/flutter/embedding/engine/h/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/h/a;

    .line 32
    iput-object p4, p0, Lio/flutter/embedding/engine/a;->q:Lio/flutter/plugin/platform/k;

    .line 33
    iget-object p3, p0, Lio/flutter/embedding/engine/a;->q:Lio/flutter/plugin/platform/k;

    invoke-virtual {p3}, Lio/flutter/plugin/platform/k;->i()V

    .line 34
    new-instance p3, Lio/flutter/embedding/engine/c;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1, p0, p2}, Lio/flutter/embedding/engine/c;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Lio/flutter/embedding/engine/f/c;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    if-eqz p6, :cond_1

    .line 36
    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->t()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/f/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/flutter/embedding/engine/FlutterJNI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v4, Lio/flutter/plugin/platform/k;

    invoke-direct {v4}, Lio/flutter/plugin/platform/k;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/k;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v3, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v3}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ZZ)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v3, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v3}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    new-instance v4, Lio/flutter/plugin/platform/k;

    invoke-direct {v4}, Lio/flutter/plugin/platform/k;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/k;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/a;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/a;->r:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/a;->q:Lio/flutter/plugin/platform/k;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/embedding/engine/a;)Lio/flutter/embedding/engine/i/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/a;->l:Lio/flutter/embedding/engine/i/j;

    return-object p0
.end method

.method private r()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    .line 1
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative(Z)V

    .line 3
    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method

.method private t()V
    .locals 6

    const-string v0, "io.flutter.plugins.GeneratedPluginRegistrant"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerWith"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Lio/flutter/embedding/engine/a;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to automatically register plugins with FlutterEngine ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") but could not find and invoke the GeneratedPluginRegistrant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterEngine"

    invoke-static {v1, v0}, Lg/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    .line 2
    invoke-static {v0, v1}, Lg/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/c;->c()V

    .line 4
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->q:Lio/flutter/plugin/platform/k;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/k;->k()V

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/e/a;->f()V

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->s:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    .line 7
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    return-void
.end method

.method public b()Lio/flutter/embedding/engine/i/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->f:Lio/flutter/embedding/engine/i/b;

    return-object v0
.end method

.method public c()Lio/flutter/embedding/engine/g/c/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/e/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Lio/flutter/embedding/engine/e/a;

    return-object v0
.end method

.method public e()Lio/flutter/embedding/engine/i/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->g:Lio/flutter/embedding/engine/i/c;

    return-object v0
.end method

.method public f()Lio/flutter/embedding/engine/i/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->h:Lio/flutter/embedding/engine/i/d;

    return-object v0
.end method

.method public g()Lg/a/c/b/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->e:Lg/a/c/b/a;

    return-object v0
.end method

.method public h()Lio/flutter/embedding/engine/i/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->j:Lio/flutter/embedding/engine/i/f;

    return-object v0
.end method

.method public i()Lio/flutter/embedding/engine/i/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->k:Lio/flutter/embedding/engine/i/g;

    return-object v0
.end method

.method public j()Lio/flutter/embedding/engine/i/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->m:Lio/flutter/embedding/engine/i/h;

    return-object v0
.end method

.method public k()Lio/flutter/plugin/platform/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->q:Lio/flutter/plugin/platform/k;

    return-object v0
.end method

.method public l()Lio/flutter/embedding/engine/g/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    return-object v0
.end method

.method public m()Lio/flutter/embedding/engine/h/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/h/a;

    return-object v0
.end method

.method public n()Lio/flutter/embedding/engine/i/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->l:Lio/flutter/embedding/engine/i/j;

    return-object v0
.end method

.method public o()Lio/flutter/embedding/engine/i/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->n:Lio/flutter/embedding/engine/i/k;

    return-object v0
.end method

.method public p()Lio/flutter/embedding/engine/i/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->o:Lio/flutter/embedding/engine/i/l;

    return-object v0
.end method

.method public q()Lio/flutter/embedding/engine/i/m;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->p:Lio/flutter/embedding/engine/i/m;

    return-object v0
.end method
