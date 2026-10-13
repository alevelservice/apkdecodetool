.class public Lcom/facebook/imagepipeline/producers/f;
.super Lcom/facebook/imagepipeline/producers/h;
.source "BitmapMemoryCacheGetProducer.java"


# direct methods
.method public constructor <init>(Le/f/i/c/p;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Le/f/i/c/f;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/h;-><init>(Le/f/i/c/p;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/producers/Consumer;Le/f/b/a/d;Z)Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;",
            "Le/f/b/a/d;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;"
        }
    .end annotation

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method
