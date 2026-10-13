.class public Lio/flutter/plugins/imagepicker/d;
.super Ljava/lang/Object;
.source "ImagePickerDelegate.java"

# interfaces
.implements Lg/a/c/a/m$a;
.implements Lg/a/c/a/m$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/d$h;,
        Lio/flutter/plugins/imagepicker/d$f;,
        Lio/flutter/plugins/imagepicker/d$g;,
        Lio/flutter/plugins/imagepicker/d$i;
    }
.end annotation


# instance fields
.field final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final f:Landroid/app/Activity;

.field private final g:Ljava/io/File;

.field private final h:Lio/flutter/plugins/imagepicker/g;

.field private final i:Lio/flutter/plugins/imagepicker/d$i;

.field private final j:Lio/flutter/plugins/imagepicker/d$g;

.field private final k:Lio/flutter/plugins/imagepicker/d$f;

.field private final l:Lio/flutter/plugins/imagepicker/b;

.field private m:Landroid/net/Uri;

.field private n:Lg/a/c/a/k$d;

.field private o:Lg/a/c/a/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/g;)V
    .locals 10

    .line 1
    new-instance v6, Lio/flutter/plugins/imagepicker/d$a;

    invoke-direct {v6, p1}, Lio/flutter/plugins/imagepicker/d$a;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lio/flutter/plugins/imagepicker/d$b;

    invoke-direct {v7, p1}, Lio/flutter/plugins/imagepicker/d$b;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lio/flutter/plugins/imagepicker/d$c;

    invoke-direct {v8, p1}, Lio/flutter/plugins/imagepicker/d$c;-><init>(Landroid/app/Activity;)V

    new-instance v9, Lio/flutter/plugins/imagepicker/b;

    invoke-direct {v9}, Lio/flutter/plugins/imagepicker/b;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lio/flutter/plugins/imagepicker/d;-><init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/g;Lg/a/c/a/k$d;Lg/a/c/a/j;Lio/flutter/plugins/imagepicker/d$i;Lio/flutter/plugins/imagepicker/d$g;Lio/flutter/plugins/imagepicker/d$f;Lio/flutter/plugins/imagepicker/b;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/io/File;Lio/flutter/plugins/imagepicker/g;Lg/a/c/a/k$d;Lg/a/c/a/j;Lio/flutter/plugins/imagepicker/d$i;Lio/flutter/plugins/imagepicker/d$g;Lio/flutter/plugins/imagepicker/d$f;Lio/flutter/plugins/imagepicker/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/d;->g:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lio/flutter/plugins/imagepicker/d;->h:Lio/flutter/plugins/imagepicker/g;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".flutter.image_provider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/d;->e:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lio/flutter/plugins/imagepicker/d;->n:Lg/a/c/a/k$d;

    .line 8
    iput-object p5, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    .line 9
    iput-object p6, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    .line 10
    iput-object p7, p0, Lio/flutter/plugins/imagepicker/d;->j:Lio/flutter/plugins/imagepicker/d$g;

    .line 11
    iput-object p8, p0, Lio/flutter/plugins/imagepicker/d;->k:Lio/flutter/plugins/imagepicker/d$f;

    .line 12
    iput-object p9, p0, Lio/flutter/plugins/imagepicker/d;->l:Lio/flutter/plugins/imagepicker/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->g:Ljava/io/File;

    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 33
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->k:Lio/flutter/plugins/imagepicker/d$f;

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->m:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lio/flutter/plugins/imagepicker/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Lio/flutter/plugins/imagepicker/d$d;

    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/d$d;-><init>(Lio/flutter/plugins/imagepicker/d;)V

    .line 35
    invoke-interface {p1, v0, v1}, Lio/flutter/plugins/imagepicker/d$f;->a(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/d$h;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 30
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->l:Lio/flutter/plugins/imagepicker/b;

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/imagepicker/b;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/d;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 29
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p2, v2}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/imagepicker/d;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/imagepicker/d;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->n:Lg/a/c/a/k$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    invoke-static {v1, p1, p2}, Lio/flutter/plugins/imagepicker/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-interface {v0, p1, p2, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .line 37
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    if-eqz v0, :cond_0

    const-string v1, "maxWidth"

    .line 38
    invoke-virtual {v0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 39
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    const-string v2, "maxHeight"

    invoke-virtual {v1, v2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 40
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/d;->h:Lio/flutter/plugins/imagepicker/g;

    invoke-virtual {v2, p1, v0, v1}, Lio/flutter/plugins/imagepicker/g;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 43
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    .line 19
    iput-object v0, p0, Lio/flutter/plugins/imagepicker/d;->n:Lg/a/c/a/k$d;

    return-void
.end method

.method private b(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->k:Lio/flutter/plugins/imagepicker/d$f;

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->m:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lio/flutter/plugins/imagepicker/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Lio/flutter/plugins/imagepicker/d$e;

    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/d$e;-><init>(Lio/flutter/plugins/imagepicker/d;)V

    .line 11
    invoke-interface {p1, v0, v1}, Lio/flutter/plugins/imagepicker/d$f;->a(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/d$h;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->l:Lio/flutter/plugins/imagepicker/b;

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/imagepicker/b;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lg/a/c/a/k$d;)V
    .locals 3

    const-string v0, "already_active"

    const-string v1, "Image picker is already active"

    const/4 v2, 0x0

    .line 17
    invoke-interface {p1, v0, v1, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->n:Lg/a/c/a/k$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0, v0}, Lio/flutter/plugins/imagepicker/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-interface {v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 16
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->b()V

    return-void
.end method

.method private c()Ljava/io/File;
    .locals 1

    const-string v0, ".jpg"

    .line 7
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d()Ljava/io/File;
    .locals 1

    const-string v0, ".mp4"

    .line 7
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    const/16 v2, 0x926

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private e(Lg/a/c/a/j;Lg/a/c/a/k$d;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->n:Lg/a/c/a/k$d;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    .line 6
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/d;->n:Lg/a/c/a/k$d;

    .line 7
    invoke-static {}, Lio/flutter/plugins/imagepicker/c;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method private f()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    const/16 v2, 0x930

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->j:Lio/flutter/plugins/imagepicker/d$g;

    invoke-interface {v1, v0}, Lio/flutter/plugins/imagepicker/d$g;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "no_available_camera"

    const-string v1, "No cameras available for taking pictures."

    .line 3
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->c()Ljava/io/File;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/plugins/imagepicker/d;->m:Landroid/net/Uri;

    .line 6
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/d;->k:Lio/flutter/plugins/imagepicker/d$f;

    iget-object v3, p0, Lio/flutter/plugins/imagepicker/d;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lio/flutter/plugins/imagepicker/d$f;->a(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/d;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    const/16 v2, 0x927

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->j:Lio/flutter/plugins/imagepicker/d$g;

    invoke-interface {v1, v0}, Lio/flutter/plugins/imagepicker/d$g;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "no_available_camera"

    const-string v1, "No cameras available for taking pictures."

    .line 3
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->d()Ljava/io/File;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/plugins/imagepicker/d;->m:Landroid/net/Uri;

    .line 6
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/d;->k:Lio/flutter/plugins/imagepicker/d$f;

    iget-object v3, p0, Lio/flutter/plugins/imagepicker/d;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lio/flutter/plugins/imagepicker/d$f;->a(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/d;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/d;->f:Landroid/app/Activity;

    const/16 v2, 0x931

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugins/imagepicker/d$i;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/c;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->o:Lg/a/c/a/j;

    invoke-static {v0}, Lio/flutter/plugins/imagepicker/c;->a(Lg/a/c/a/j;)V

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/d;->m:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lio/flutter/plugins/imagepicker/c;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public a(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/d;->e(Lg/a/c/a/j;Lg/a/c/a/k$d;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 19
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/d;->b(Lg/a/c/a/k$d;)V

    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const/16 v0, 0x928

    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->e()V

    return-void
.end method

.method a(Lg/a/c/a/k$d;)V
    .locals 6

    .line 8
    invoke-static {}, Lio/flutter/plugins/imagepicker/c;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "path"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "maxWidth"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    const-string v4, "maxHeight"

    .line 11
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 12
    iget-object v5, p0, Lio/flutter/plugins/imagepicker/d;->h:Lio/flutter/plugins/imagepicker/g;

    invoke-virtual {v5, v2, v3, v4}, Lio/flutter/plugins/imagepicker/g;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 17
    :goto_0
    invoke-static {}, Lio/flutter/plugins/imagepicker/c;->a()V

    return-void
.end method

.method public b(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/d;->e(Lg/a/c/a/j;Lg/a/c/a/k$d;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/d;->b(Lg/a/c/a/k$d;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const/16 v0, 0x932

    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->f()V

    return-void
.end method

.method public c(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/d;->e(Lg/a/c/a/j;Lg/a/c/a/k$d;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/d;->b(Lg/a/c/a/k$d;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const-string p2, "android.permission.CAMERA"

    .line 4
    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const/16 v0, 0x929

    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->g()V

    return-void
.end method

.method public d(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/d;->e(Lg/a/c/a/j;Lg/a/c/a/k$d;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/d;->b(Lg/a/c/a/k$d;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const-string p2, "android.permission.CAMERA"

    .line 4
    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/d;->i:Lio/flutter/plugins/imagepicker/d$i;

    const/16 v0, 0x933

    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/d$i;->a(Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->h()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x926

    if-eq p1, v0, :cond_3

    const/16 v0, 0x927

    if-eq p1, v0, :cond_2

    const/16 v0, 0x930

    if-eq p1, v0, :cond_1

    const/16 p3, 0x931

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/d;->b(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p2, p3}, Lio/flutter/plugins/imagepicker/d;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p2, p3}, Lio/flutter/plugins/imagepicker/d;->a(ILandroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2

    .line 1
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    aget p2, p3, v1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x928

    if-eq p1, p3, :cond_4

    const/16 p3, 0x929

    if-eq p1, p3, :cond_3

    const/16 p3, 0x932

    if-eq p1, p3, :cond_2

    const/16 p3, 0x933

    if-eq p1, p3, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_5

    .line 2
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->h()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->f()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    .line 4
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->g()V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/d;->e()V

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/d;->b(Ljava/lang/String;)V

    :cond_6
    return v0
.end method
