.class Lcom/facebook/imagepipeline/producers/w0$a;
.super Lcom/facebook/imagepipeline/producers/p0;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/w0;->a(Le/f/i/g/e;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
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
.field final synthetic j:Le/f/i/g/e;

.field final synthetic k:Lcom/facebook/imagepipeline/producers/w0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/w0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Ljava/lang/String;Le/f/i/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w0$a;->k:Lcom/facebook/imagepipeline/producers/w0;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/w0$a;->j:Le/f/i/g/e;

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

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$a;->j:Le/f/i/g/e;

    invoke-static {v0}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 4
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w0$a;->a(Le/f/i/g/e;)V

    return-void
.end method

.method protected b()Le/f/i/g/e;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$a;->k:Lcom/facebook/imagepipeline/producers/w0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/w0;->a(Lcom/facebook/imagepipeline/producers/w0;)Le/f/c/f/h;

    move-result-object v0

    invoke-interface {v0}, Le/f/c/f/h;->a()Le/f/c/f/j;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/w0$a;->j:Le/f/i/g/e;

    invoke-static {v1, v0}, Lcom/facebook/imagepipeline/producers/w0;->a(Le/f/i/g/e;Le/f/c/f/j;)V

    .line 5
    invoke-virtual {v0}, Le/f/c/f/j;->i()Le/f/c/f/g;

    move-result-object v1

    invoke-static {v1}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v2, Le/f/i/g/e;

    invoke-direct {v2, v1}, Le/f/i/g/e;-><init>(Le/f/c/g/a;)V

    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/w0$a;->j:Le/f/i/g/e;

    invoke-virtual {v2, v3}, Le/f/i/g/e;->a(Le/f/i/g/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    invoke-virtual {v0}, Le/f/c/f/j;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 10
    :try_start_3
    invoke-static {v1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 11
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 12
    invoke-virtual {v0}, Le/f/c/f/j;->close()V

    .line 13
    throw v1
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/w0$a;->b()Le/f/i/g/e;

    move-result-object v0

    return-object v0
.end method

.method protected b(Le/f/i/g/e;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$a;->j:Le/f/i/g/e;

    invoke-static {v0}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 15
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w0$a;->b(Le/f/i/g/e;)V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$a;->j:Le/f/i/g/e;

    invoke-static {v0}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 2
    invoke-super {p0}, Lcom/facebook/imagepipeline/producers/p0;->c()V

    return-void
.end method
