.class Lcom/facebook/imagepipeline/producers/l$b;
.super Lcom/facebook/imagepipeline/producers/l$c;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final i:Le/f/i/e/f;

.field private final j:Le/f/i/e/e;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/i/e/f;Le/f/i/e/e;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "Le/f/i/e/f;",
            "Le/f/i/e/e;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;ZI)V

    .line 2
    invoke-static {p4}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Le/f/i/e/f;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/l$b;->i:Le/f/i/e/f;

    .line 3
    invoke-static {p5}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Le/f/i/e/e;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/l$b;->j:Le/f/i/e/e;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->k:I

    return-void
.end method


# virtual methods
.method protected a(Le/f/i/g/e;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->i:Le/f/i/e/f;

    invoke-virtual {p1}, Le/f/i/e/f;->a()I

    move-result p1

    return p1
.end method

.method protected declared-synchronized b(Le/f/i/g/e;I)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->b(Le/f/i/g/e;I)Z

    move-result v0

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x4

    .line 3
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4
    invoke-static {p1}, Le/f/i/g/e;->e(Le/f/i/g/e;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object p2

    sget-object v1, Le/f/h/b;->a:Le/f/h/c;

    if-ne p2, v1, :cond_4

    .line 6
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/l$b;->i:Le/f/i/e/f;

    invoke-virtual {p2, p1}, Le/f/i/e/f;->a(Le/f/i/g/e;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 7
    monitor-exit p0

    return p2

    .line 8
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->i:Le/f/i/e/f;

    invoke-virtual {p1}, Le/f/i/e/f;->b()I

    move-result p1

    .line 9
    iget v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v1, :cond_2

    .line 10
    monitor-exit p0

    return p2

    .line 11
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->j:Le/f/i/e/e;

    iget v2, p0, Lcom/facebook/imagepipeline/producers/l$b;->k:I

    invoke-interface {v1, v2}, Le/f/i/e/e;->b(I)I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->i:Le/f/i/e/f;

    .line 12
    invoke-virtual {v1}, Le/f/i/e/f;->c()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 13
    monitor-exit p0

    return p2

    .line 14
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->k:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected d()Le/f/i/g/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->j:Le/f/i/e/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->i:Le/f/i/e/f;

    invoke-virtual {v1}, Le/f/i/e/f;->b()I

    move-result v1

    invoke-interface {v0, v1}, Le/f/i/e/e;->a(I)Le/f/i/g/h;

    move-result-object v0

    return-object v0
.end method
