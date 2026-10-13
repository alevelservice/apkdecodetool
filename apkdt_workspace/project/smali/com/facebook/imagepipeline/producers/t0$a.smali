.class Lcom/facebook/imagepipeline/producers/t0$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "ThumbnailBranchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/i/g/e;",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/imagepipeline/producers/j0;

.field private final d:I

.field private final e:Lcom/facebook/imagepipeline/common/e;

.field final synthetic f:Lcom/facebook/imagepipeline/producers/t0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/t0$a;->f:Lcom/facebook/imagepipeline/producers/t0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/t0$a;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 4
    iput p4, p0, Lcom/facebook/imagepipeline/producers/t0$a;->d:I

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/t0$a;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object p1

    invoke-virtual {p1}, Le/f/i/i/b;->l()Lcom/facebook/imagepipeline/common/e;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/t0$a;->e:Lcom/facebook/imagepipeline/common/e;

    return-void
.end method


# virtual methods
.method protected a(Le/f/i/g/e;I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t0$a;->e:Lcom/facebook/imagepipeline/common/e;

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/v0;->a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    invoke-static {p1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/t0$a;->f:Lcom/facebook/imagepipeline/producers/t0;

    iget p2, p0, Lcom/facebook/imagepipeline/producers/t0$a;->d:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/t0$a;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 7
    invoke-static {p1, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/t0;->a(Lcom/facebook/imagepipeline/producers/t0;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/t0$a;->a(Le/f/i/g/e;I)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t0$a;->f:Lcom/facebook/imagepipeline/producers/t0;

    iget v1, p0, Lcom/facebook/imagepipeline/producers/t0$a;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/t0$a;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/t0;->a(Lcom/facebook/imagepipeline/producers/t0;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
