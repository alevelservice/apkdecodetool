.class Lcom/facebook/imagepipeline/producers/b0$a;
.super Lcom/facebook/imagepipeline/producers/p0;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/b0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p0<",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic j:Lcom/facebook/imagepipeline/producers/l0;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Le/f/i/i/b;

.field final synthetic m:Lcom/facebook/imagepipeline/producers/b0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/b0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Le/f/i/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/b0$a;->m:Lcom/facebook/imagepipeline/producers/b0;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/b0$a;->j:Lcom/facebook/imagepipeline/producers/l0;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/b0$a;->k:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/b0$a;->l:Le/f/i/i/b;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/p0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Le/f/c/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->a(Ljava/lang/Exception;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/b0$a;->j:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b0$a;->k:Ljava/lang/String;

    const-string v1, "VideoThumbnailProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/b0$a;->a(Le/f/c/g/a;)V

    return-void
.end method

.method protected b()Le/f/c/g/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b0$a;->m:Lcom/facebook/imagepipeline/producers/b0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/b0$a;->l:Le/f/i/i/b;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/b0;->a(Lcom/facebook/imagepipeline/producers/b0;Le/f/i/i/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/b0$a;->l:Le/f/i/i/b;

    .line 5
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/b0;->a(Le/f/i/i/b;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Le/f/i/g/d;

    .line 7
    invoke-static {}, Le/f/i/b/h;->a()Le/f/i/b/h;

    move-result-object v2

    sget-object v3, Le/f/i/g/g;->d:Le/f/i/g/h;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Le/f/i/g/d;-><init>(Landroid/graphics/Bitmap;Le/f/c/g/c;Le/f/i/g/h;I)V

    .line 8
    invoke-static {v1}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/b0$a;->b()Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method protected b(Le/f/c/g/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/e;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/b0$a;->c(Le/f/c/g/a;)V

    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/b0$a;->b(Le/f/c/g/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected c(Le/f/c/g/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->b(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/b0$a;->j:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/b0$a;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "VideoThumbnailProducer"

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
