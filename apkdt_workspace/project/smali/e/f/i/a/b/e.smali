.class public Le/f/i/a/b/e;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Le/f/i/a/b/d;


# static fields
.field static c:Le/f/i/a/b/c;

.field static d:Le/f/i/a/b/c;


# instance fields
.field private final a:Le/f/i/a/c/b;

.field private final b:Le/f/i/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.facebook.animated.gif.GifImage"

    .line 1
    invoke-static {v0}, Le/f/i/a/b/e;->a(Ljava/lang/String;)Le/f/i/a/b/c;

    move-result-object v0

    sput-object v0, Le/f/i/a/b/e;->c:Le/f/i/a/b/c;

    const-string v0, "com.facebook.animated.webp.WebPImage"

    .line 2
    invoke-static {v0}, Le/f/i/a/b/e;->a(Ljava/lang/String;)Le/f/i/a/b/c;

    move-result-object v0

    sput-object v0, Le/f/i/a/b/e;->d:Le/f/i/a/b/c;

    return-void
.end method

.method public constructor <init>(Le/f/i/a/c/b;Le/f/i/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/a/b/e;->a:Le/f/i/a/c/b;

    .line 3
    iput-object p2, p0, Le/f/i/a/b/e;->b:Le/f/i/b/f;

    return-void
.end method

.method private a(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Le/f/i/a/b/e;->b:Le/f/i/b/f;

    .line 57
    invoke-virtual {v0, p1, p2, p3}, Le/f/i/b/f;->b(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 59
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xc

    if-lt p2, p3, :cond_0

    .line 60
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-object p1
.end method

.method private a(Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;I)Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/a/a/c;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Le/f/i/a/a/c;->getWidth()I

    move-result v0

    .line 37
    invoke-interface {p1}, Le/f/i/a/a/c;->getHeight()I

    move-result v1

    .line 38
    invoke-direct {p0, v0, v1, p2}, Le/f/i/a/b/e;->a(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;

    move-result-object p2

    .line 39
    invoke-static {p1}, Le/f/i/a/a/e;->a(Le/f/i/a/a/c;)Le/f/i/a/a/e;

    move-result-object p1

    .line 40
    iget-object v0, p0, Le/f/i/a/b/e;->a:Le/f/i/a/c/b;

    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, p1, v1}, Le/f/i/a/c/b;->a(Le/f/i/a/a/e;Landroid/graphics/Rect;)Le/f/i/a/a/a;

    move-result-object p1

    .line 42
    new-instance v0, Le/f/i/a/c/d;

    new-instance v1, Le/f/i/a/b/e$a;

    invoke-direct {v1, p0}, Le/f/i/a/b/e$a;-><init>(Le/f/i/a/b/e;)V

    invoke-direct {v0, p1, v1}, Le/f/i/a/c/d;-><init>(Le/f/i/a/a/a;Le/f/i/a/c/d$b;)V

    .line 43
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3, p1}, Le/f/i/a/c/d;->a(ILandroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private static a(Ljava/lang/String;)Le/f/i/a/b/c;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/f/i/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/facebook/imagepipeline/common/b;Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;)Le/f/i/g/c;
    .locals 4

    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p2}, Le/f/i/a/a/c;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-eqz v3, :cond_1

    .line 16
    new-instance p1, Le/f/i/g/d;

    .line 17
    invoke-direct {p0, p2, p3, v1}, Le/f/i/a/b/e;->a(Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;I)Le/f/c/g/a;

    move-result-object p2

    sget-object p3, Le/f/i/g/g;->d:Le/f/i/g/h;

    invoke-direct {p1, p2, p3, v2}, Le/f/i/g/d;-><init>(Le/f/c/g/a;Le/f/i/g/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 19
    invoke-static {v0}, Le/f/c/g/a;->c(Ljava/lang/Iterable;)V

    return-object p1

    .line 20
    :cond_1
    :try_start_1
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    if-eqz v2, :cond_2

    .line 21
    invoke-direct {p0, p2, p3}, Le/f/i/a/b/e;->a(Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/c/g/a;

    invoke-static {v3}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 23
    :goto_1
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/b;->b:Z

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 24
    invoke-direct {p0, p2, p3, v1}, Le/f/i/a/b/e;->a(Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;I)Le/f/c/g/a;

    move-result-object p1

    move-object v0, p1

    .line 25
    :cond_3
    invoke-static {p2}, Le/f/i/a/a/e;->b(Le/f/i/a/a/c;)Le/f/i/a/a/f;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Le/f/i/a/a/f;->a(Le/f/c/g/a;)Le/f/i/a/a/f;

    .line 27
    invoke-virtual {p1, v1}, Le/f/i/a/a/f;->a(I)Le/f/i/a/a/f;

    .line 28
    invoke-virtual {p1, v2}, Le/f/i/a/a/f;->a(Ljava/util/List;)Le/f/i/a/a/f;

    .line 29
    invoke-virtual {p1}, Le/f/i/a/a/f;->a()Le/f/i/a/a/e;

    move-result-object p1

    .line 30
    new-instance p2, Le/f/i/g/a;

    invoke-direct {p2, p1}, Le/f/i/g/a;-><init>(Le/f/i/a/a/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 32
    invoke-static {v2}, Le/f/c/g/a;->c(Ljava/lang/Iterable;)V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v0

    .line 33
    :goto_2
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 34
    invoke-static {v2}, Le/f/c/g/a;->c(Ljava/lang/Iterable;)V

    .line 35
    throw p1
.end method

.method private a(Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/a/a/c;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List<",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Le/f/i/a/a/e;->a(Le/f/i/a/a/c;)Le/f/i/a/a/e;

    move-result-object p1

    .line 45
    iget-object v0, p0, Le/f/i/a/b/e;->a:Le/f/i/a/c/b;

    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, p1, v1}, Le/f/i/a/c/b;->a(Le/f/i/a/a/e;Landroid/graphics/Rect;)Le/f/i/a/a/a;

    move-result-object p1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-interface {p1}, Le/f/i/a/a/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    new-instance v1, Le/f/i/a/c/d;

    new-instance v2, Le/f/i/a/b/e$b;

    invoke-direct {v2, p0, v0}, Le/f/i/a/b/e$b;-><init>(Le/f/i/a/b/e;Ljava/util/List;)V

    invoke-direct {v1, p1, v2}, Le/f/i/a/c/d;-><init>(Le/f/i/a/a/a;Le/f/i/a/c/d$b;)V

    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-interface {p1}, Le/f/i/a/a/a;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 51
    invoke-interface {p1}, Le/f/i/a/a/a;->getWidth()I

    move-result v3

    .line 52
    invoke-interface {p1}, Le/f/i/a/a/a;->getHeight()I

    move-result v4

    .line 53
    invoke-direct {p0, v3, v4, p2}, Le/f/i/a/b/e;->a(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Le/f/i/a/c/d;->a(ILandroid/graphics/Bitmap;)V

    .line 55
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Le/f/i/g/c;
    .locals 4

    .line 3
    sget-object v0, Le/f/i/a/b/e;->c:Le/f/i/a/b/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Le/f/i/g/e;->j()Le/f/c/g/a;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/f/g;

    .line 7
    invoke-interface {v0}, Le/f/c/f/g;->w()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Le/f/i/a/b/e;->c:Le/f/i/a/b/c;

    invoke-interface {v0}, Le/f/c/f/g;->w()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/f/i/a/b/c;->a(Ljava/nio/ByteBuffer;)Le/f/i/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Le/f/i/a/b/e;->c:Le/f/i/a/b/c;

    invoke-interface {v0}, Le/f/c/f/g;->x()J

    move-result-wide v2

    invoke-interface {v0}, Le/f/c/f/g;->size()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Le/f/i/a/b/c;->a(JI)Le/f/i/a/a/c;

    move-result-object v0

    .line 10
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Le/f/i/a/b/e;->a(Lcom/facebook/imagepipeline/common/b;Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;)Le/f/i/g/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 12
    throw p2

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated gif please add the dependency to the animated-gif module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Le/f/i/g/c;
    .locals 4

    .line 1
    sget-object v0, Le/f/i/a/b/e;->d:Le/f/i/a/b/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Le/f/i/g/e;->j()Le/f/c/g/a;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/f/g;

    .line 5
    invoke-interface {v0}, Le/f/c/f/g;->w()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Le/f/i/a/b/e;->d:Le/f/i/a/b/c;

    invoke-interface {v0}, Le/f/c/f/g;->w()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Le/f/i/a/b/c;->a(Ljava/nio/ByteBuffer;)Le/f/i/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Le/f/i/a/b/e;->d:Le/f/i/a/b/c;

    invoke-interface {v0}, Le/f/c/f/g;->x()J

    move-result-wide v2

    invoke-interface {v0}, Le/f/c/f/g;->size()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Le/f/i/a/b/c;->a(JI)Le/f/i/a/a/c;

    move-result-object v0

    .line 8
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Le/f/i/a/b/e;->a(Lcom/facebook/imagepipeline/common/b;Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;)Le/f/i/g/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 10
    throw p2

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated webp please add the dependency to the animated-webp module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
