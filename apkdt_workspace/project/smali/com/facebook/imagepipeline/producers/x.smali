.class public Lcom/facebook/imagepipeline/producers/x;
.super Ljava/lang/Object;
.source "LocalExifThumbnailProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/u0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/u0<",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Le/f/c/f/h;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/x;->b:Le/f/c/f/h;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/x;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Landroid/media/ExifInterface;)I
    .locals 1

    const-string v0, "Orientation"

    .line 28
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 29
    invoke-static {p1}, Lcom/facebook/imageutils/c;->a(I)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/x;)Le/f/c/f/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/x;->b:Le/f/c/f/h;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/x;Le/f/c/f/g;Landroid/media/ExifInterface;)Le/f/i/g/e;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;->a(Le/f/c/f/g;Landroid/media/ExifInterface;)Le/f/i/g/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Le/f/c/f/g;Landroid/media/ExifInterface;)Le/f/i/g/e;
    .locals 3

    .line 14
    new-instance v0, Le/f/c/f/i;

    invoke-direct {v0, p1}, Le/f/c/f/i;-><init>(Le/f/c/f/g;)V

    .line 15
    invoke-static {v0}, Lcom/facebook/imageutils/a;->a(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    .line 16
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/x;->a(Landroid/media/ExifInterface;)I

    move-result p2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 17
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    :cond_1
    invoke-static {p1}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p1

    .line 20
    :try_start_0
    new-instance v0, Le/f/i/g/e;

    invoke-direct {v0, p1}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 22
    sget-object p1, Le/f/h/b;->a:Le/f/h/c;

    invoke-virtual {v0, p1}, Le/f/i/g/e;->a(Le/f/h/c;)V

    .line 23
    invoke-virtual {v0, p2}, Le/f/i/g/e;->g(I)V

    .line 24
    invoke-virtual {v0, v2}, Le/f/i/g/e;->i(I)V

    .line 25
    invoke-virtual {v0, v1}, Le/f/i/g/e;->f(I)V

    return-object v0

    :catchall_0
    move-exception p2

    .line 26
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 27
    throw p2
.end method


# virtual methods
.method a(Landroid/net/Uri;)Landroid/media/ExifInterface;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x;->c:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Le/f/c/j/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13
    :catch_0
    const-class p1, Lcom/facebook/imagepipeline/producers/x;

    const-string v0, "StackOverflowError in ExifInterface constructor"

    invoke-static {p1, v0}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v3

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v6

    .line 7
    new-instance v7, Lcom/facebook/imagepipeline/producers/x$a;

    const-string v4, "LocalExifThumbnailProducer"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/x$a;-><init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;Le/f/i/i/b;)V

    .line 8
    new-instance p1, Lcom/facebook/imagepipeline/producers/x$b;

    invoke-direct {p1, p0, v7}, Lcom/facebook/imagepipeline/producers/x$b;-><init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/p0;)V

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    .line 9
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/x;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/common/e;)Z
    .locals 1

    const/16 v0, 0x200

    .line 3
    invoke-static {v0, v0, p1}, Lcom/facebook/imagepipeline/producers/v0;->a(IILcom/facebook/imagepipeline/common/e;)Z

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 30
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
