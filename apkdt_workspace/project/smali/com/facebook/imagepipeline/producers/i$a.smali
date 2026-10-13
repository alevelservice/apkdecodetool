.class Lcom/facebook/imagepipeline/producers/i$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "BitmapPrepareProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput p2, p0, Lcom/facebook/imagepipeline/producers/i$a;->c:I

    .line 3
    iput p3, p0, Lcom/facebook/imagepipeline/producers/i$a;->d:I

    return-void
.end method

.method private a(Le/f/c/g/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Le/f/c/g/a;->C()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/i/g/c;

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Le/f/i/g/c;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Le/f/i/g/d;

    if-eqz v0, :cond_5

    .line 7
    check-cast p1, Le/f/i/g/d;

    .line 8
    invoke-virtual {p1}, Le/f/i/g/d;->p()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 10
    iget v1, p0, Lcom/facebook/imagepipeline/producers/i$a;->c:I

    if-ge v0, v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget v1, p0, Lcom/facebook/imagepipeline/producers/i$a;->d:I

    if-le v0, v1, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Le/f/c/g/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/i$a;->a(Le/f/c/g/a;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/i$a;->a(Le/f/c/g/a;I)V

    return-void
.end method
