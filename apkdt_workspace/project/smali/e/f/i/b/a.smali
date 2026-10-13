.class public Le/f/i/b/a;
.super Le/f/i/b/f;
.source "ArtBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/d;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/i/b/f;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/b/a;->a:Lcom/facebook/imagepipeline/memory/d;

    return-void
.end method


# virtual methods
.method public b(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;
    .locals 4
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

    .line 1
    invoke-static {p1, p2, p3}, Lcom/facebook/imageutils/a;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/f/i/b/a;->a:Lcom/facebook/imagepipeline/memory/d;

    invoke-interface {v1, v0}, Le/f/c/f/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    mul-int v2, p1, p2

    .line 4
    invoke-static {p3}, Lcom/facebook/imageutils/a;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v3

    mul-int v2, v2, v3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 7
    iget-object p1, p0, Le/f/i/b/a;->a:Lcom/facebook/imagepipeline/memory/d;

    invoke-static {v0, p1}, Le/f/c/g/a;->a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method
