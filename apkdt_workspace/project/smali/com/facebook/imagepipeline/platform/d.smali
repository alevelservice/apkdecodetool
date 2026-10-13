.class public Lcom/facebook/imagepipeline/platform/d;
.super Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;
.source "KitKatPurgeableDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final c:Lcom/facebook/imagepipeline/memory/p;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/platform/d;->c:Lcom/facebook/imagepipeline/memory/p;

    return-void
.end method

.method private static a([BI)V
    .locals 1

    const/4 v0, -0x1

    .line 21
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, -0x27

    .line 22
    aput-byte v0, p0, p1

    return-void
.end method


# virtual methods
.method protected a(Le/f/c/g/a;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/c/f/g;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 10
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a(Le/f/c/g/a;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->b:[B

    .line 11
    :goto_0
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/c/f/g;

    .line 12
    invoke-interface {p1}, Le/f/c/f/g;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 13
    iget-object v1, p0, Lcom/facebook/imagepipeline/platform/d;->c:Lcom/facebook/imagepipeline/memory/p;

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/p;->a(I)Le/f/c/g/a;

    move-result-object v1

    .line 14
    :try_start_0
    invoke-virtual {v1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 15
    invoke-interface {p1, v2, v4, v2, p2}, Le/f/c/f/g;->a(I[BII)I

    if-eqz v0, :cond_2

    .line 16
    invoke-static {v4, p2}, Lcom/facebook/imagepipeline/platform/d;->a([BI)V

    move p2, v3

    .line 17
    :cond_2
    invoke-static {v4, v2, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    .line 18
    invoke-static {p1, p2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 20
    throw p1
.end method

.method protected a(Le/f/c/g/a;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/c/f/g;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/c/f/g;

    .line 2
    invoke-interface {p1}, Le/f/c/f/g;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/platform/d;->c:Lcom/facebook/imagepipeline/memory/p;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/memory/p;->a(I)Le/f/c/g/a;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {v1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    .line 5
    invoke-interface {p1, v3, v2, v3, v0}, Le/f/c/f/g;->a(I[BII)I

    .line 6
    invoke-static {v2, v3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    .line 7
    invoke-static {p1, p2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 9
    throw p1
.end method
