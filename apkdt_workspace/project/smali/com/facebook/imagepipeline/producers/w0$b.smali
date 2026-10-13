.class Lcom/facebook/imagepipeline/producers/w0$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field private d:Le/f/c/j/e;

.field final synthetic e:Lcom/facebook/imagepipeline/producers/w0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/w0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w0$b;->e:Lcom/facebook/imagepipeline/producers/w0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/w0$b;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 4
    sget-object p1, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w0$b;->d:Le/f/c/j/e;

    return-void
.end method


# virtual methods
.method protected a(Le/f/i/g/e;I)V
    .locals 2
    .param p1    # Le/f/i/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$b;->d:Le/f/c/j/e;

    sget-object v1, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/w0;->a(Le/f/i/g/e;)Le/f/c/j/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$b;->d:Le/f/c/j/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$b;->d:Le/f/c/j/e;

    sget-object v1, Le/f/c/j/e;->NO:Le/f/c/j/e;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w0$b;->d:Le/f/c/j/e;

    sget-object v1, Le/f/c/j/e;->YES:Le/f/c/j/e;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 7
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/w0$b;->e:Lcom/facebook/imagepipeline/producers/w0;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/w0$b;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-static {p2, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/w0;->a(Lcom/facebook/imagepipeline/producers/w0;Le/f/i/g/e;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/w0$b;->a(Le/f/i/g/e;I)V

    return-void
.end method
