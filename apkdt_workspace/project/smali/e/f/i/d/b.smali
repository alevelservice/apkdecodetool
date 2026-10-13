.class public Le/f/i/d/b;
.super Le/f/i/d/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/f/i/d/a<",
        "Le/f/c/g/a<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/o0;Le/f/i/h/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/o0;",
            "Le/f/i/h/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/f/i/d/a;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/o0;Le/f/i/h/c;)V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/o0;Le/f/i/h/c;)Le/f/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/c/g/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/o0;",
            "Le/f/i/h/c;",
            ")",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloseableProducerToDataSourceAdapter#create"

    .line 4
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Le/f/i/d/b;

    invoke-direct {v0, p0, p1, p2}, Le/f/i/d/b;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/o0;Le/f/i/h/c;)V

    .line 6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected a(Le/f/c/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void
.end method

.method protected a(Le/f/c/g/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "TT;>;I)V"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    invoke-super {p0, p1, p2}, Le/f/i/d/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Le/f/i/d/b;->a(Le/f/c/g/a;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1, p2}, Le/f/i/d/b;->a(Le/f/c/g/a;I)V

    return-void
.end method

.method public e()Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    invoke-super {p0}, Le/f/d/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/i/d/b;->e()Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method
