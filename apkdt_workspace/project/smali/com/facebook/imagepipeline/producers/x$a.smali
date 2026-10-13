.class Lcom/facebook/imagepipeline/producers/x$a;
.super Lcom/facebook/imagepipeline/producers/p0;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/x;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p0<",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j:Le/f/i/i/b;

.field final synthetic k:Lcom/facebook/imagepipeline/producers/x;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;Le/f/i/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x$a;->k:Lcom/facebook/imagepipeline/producers/x;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/x$a;->j:Le/f/i/i/b;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/p0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Le/f/i/g/e;)V
    .locals 0

    .line 2
    invoke-static {p1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/x$a;->a(Le/f/i/g/e;)V

    return-void
.end method

.method protected b()Le/f/i/g/e;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x$a;->j:Le/f/i/i/b;

    invoke-virtual {v0}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x$a;->k:Lcom/facebook/imagepipeline/producers/x;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/producers/x;->a(Landroid/net/Uri;)Landroid/media/ExifInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/x$a;->k:Lcom/facebook/imagepipeline/producers/x;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/x;->a(Lcom/facebook/imagepipeline/producers/x;)Le/f/c/f/h;

    move-result-object v2

    invoke-interface {v2, v1}, Le/f/c/f/h;->a([B)Le/f/c/f/g;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/x$a;->k:Lcom/facebook/imagepipeline/producers/x;

    invoke-static {v2, v1, v0}, Lcom/facebook/imagepipeline/producers/x;->a(Lcom/facebook/imagepipeline/producers/x;Le/f/c/f/g;Landroid/media/ExifInterface;)Le/f/i/g/e;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/x$a;->b()Le/f/i/g/e;

    move-result-object v0

    return-object v0
.end method

.method protected b(Le/f/i/g/e;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/g/e;",
            ")",
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

    .line 8
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/e;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/x$a;->b(Le/f/i/g/e;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
