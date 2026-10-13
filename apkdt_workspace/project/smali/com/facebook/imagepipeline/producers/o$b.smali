.class Lcom/facebook/imagepipeline/producers/o$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "DiskCacheWriteProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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

.field private final d:Le/f/i/c/e;

.field private final e:Le/f/i/c/e;

.field private final f:Le/f/i/c/f;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "Le/f/i/c/e;",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o$b;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/o$b;->d:Le/f/i/c/e;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/o$b;->e:Le/f/i/c/e;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/o$b;->f:Le/f/i/c/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/o$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/facebook/imagepipeline/producers/o$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Le/f/i/g/e;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    .line 2
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v0

    sget-object v1, Le/f/h/c;->b:Le/f/h/c;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o$b;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/o$b;->f:Le/f/i/c/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/o$b;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 6
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/j0;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/f/i/c/f;->c(Le/f/i/i/b;Ljava/lang/Object;)Le/f/b/a/d;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Le/f/i/i/b;->b()Le/f/i/i/b$a;

    move-result-object v0

    sget-object v2, Le/f/i/i/b$a;->SMALL:Le/f/i/i/b$a;

    if-ne v0, v2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o$b;->e:Le/f/i/c/e;

    invoke-virtual {v0, v1, p1}, Le/f/i/c/e;->a(Le/f/b/a/d;Le/f/i/g/e;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o$b;->d:Le/f/i/c/e;

    invoke-virtual {v0, v1, p1}, Le/f/i/c/e;->a(Le/f/b/a/d;Le/f/i/g/e;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o$b;->a(Le/f/i/g/e;I)V

    return-void
.end method
