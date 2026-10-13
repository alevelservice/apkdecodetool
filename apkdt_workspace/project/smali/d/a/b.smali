.class public final Ld/a/b;
.super Ljava/lang/Object;
.source "GallerySaver.kt"

# interfaces
.implements Lg/a/c/a/m$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\u0016\u001a\u00020\u0011H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J+\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00a2\u0006\u0002\u0010 J\u0008\u0010!\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcarnegietechnologies/gallery_saver/GallerySaver;",
        "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "albumName",
        "",
        "filePath",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "mediaType",
        "Lcarnegietechnologies/gallery_saver/MediaType;",
        "pendingResult",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "uiScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "checkPermissionAndSaveFile",
        "",
        "methodCall",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "checkPermissionAndSaveFile$gallery_saver_release",
        "finishWithSuccess",
        "isWritePermissionGranted",
        "",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)Z",
        "saveMediaFile",
        "Companion",
        "gallery_saver_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private e:Lg/a/c/a/k$d;

.field private f:Ld/a/d;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Lkotlinx/coroutines/q;

.field private final j:Lkotlinx/coroutines/e0;

.field private final k:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/a/b$a;-><init>(Lkotlin/jvm/d/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a/b;->k:Landroid/app/Activity;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Ld/a/b;->g:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Ld/a/b;->h:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/k1;->a(Lkotlinx/coroutines/g1;ILjava/lang/Object;)Lkotlinx/coroutines/q;

    move-result-object p1

    iput-object p1, p0, Ld/a/b;->i:Lkotlinx/coroutines/q;

    .line 5
    invoke-static {}, Lkotlinx/coroutines/s0;->c()Lkotlinx/coroutines/r1;

    move-result-object p1

    iget-object v0, p0, Ld/a/b;->i:Lkotlinx/coroutines/q;

    invoke-virtual {p1, v0}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/f0;->a(Lkotlin/coroutines/f;)Lkotlinx/coroutines/e0;

    move-result-object p1

    iput-object p1, p0, Ld/a/b;->j:Lkotlinx/coroutines/e0;

    return-void
.end method

.method private final a()V
    .locals 3

    .line 11
    iget-object v0, p0, Ld/a/b;->e:Lg/a/c/a/k$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 12
    iput-object v1, p0, Ld/a/b;->e:Lg/a/c/a/k$d;

    return-void

    .line 13
    :cond_0
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    throw v1
.end method

.method public static final synthetic a(Ld/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/b;->a()V

    return-void
.end method

.method public static final synthetic b(Ld/a/b;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/a/b;->k:Landroid/app/Activity;

    return-object p0
.end method

.method private final b()Z
    .locals 2

    .line 2
    iget-object v0, p0, Ld/a/b;->k:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic c(Ld/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/a/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method private final c()V
    .locals 6

    .line 2
    iget-object v0, p0, Ld/a/b;->j:Lkotlinx/coroutines/e0;

    new-instance v3, Ld/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Ld/a/b$b;-><init>(Ld/a/b;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/d;->b(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;ILjava/lang/Object;)Lkotlinx/coroutines/g1;

    return-void
.end method

.method public static final synthetic d(Ld/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/a/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Ld/a/b;)Ld/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/a/b;->f:Ld/a/d;

    return-object p0
.end method


# virtual methods
.method public final a(Lg/a/c/a/j;Lg/a/c/a/k$d;Ld/a/d;)V
    .locals 2
    .param p1    # Lg/a/c/a/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ld/a/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "methodCall"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaType"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Ld/a/b;->g:Ljava/lang/String;

    const-string v0, "albumName"

    .line 3
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Ld/a/b;->h:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ld/a/b;->f:Ld/a/d;

    .line 5
    iput-object p2, p0, Ld/a/b;->e:Lg/a/c/a/k$d;

    .line 6
    invoke-direct {p0}, Ld/a/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Ld/a/b;->c()V

    goto :goto_2

    .line 8
    :cond_2
    iget-object p1, p0, Ld/a/b;->k:Landroid/app/Activity;

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 9
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x968

    .line 10
    invoke-static {p1, p2, p3}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 8
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    aget p2, p3, v1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/16 p3, 0x968

    if-ne p1, p3, :cond_4

    if-eqz p2, :cond_3

    .line 2
    iget-object p1, p0, Ld/a/b;->f:Ld/a/d;

    sget-object p2, Ld/a/d;->video:Ld/a/d;

    const-string p3, "activity.contentResolver"

    if-ne p1, p2, :cond_2

    .line 3
    sget-object v1, Ld/a/a;->a:Ld/a/a;

    iget-object p1, p0, Ld/a/b;->k:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Ld/a/b;->g:Ljava/lang/String;

    iget-object v4, p0, Ld/a/b;->h:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Ld/a/a;->a(Ld/a/a;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Z

    goto :goto_2

    .line 4
    :cond_2
    sget-object p1, Ld/a/a;->a:Ld/a/a;

    iget-object p2, p0, Ld/a/b;->k:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Ld/a/b;->g:Ljava/lang/String;

    iget-object v1, p0, Ld/a/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v1}, Ld/a/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    return v0

    :cond_4
    return v1
.end method
