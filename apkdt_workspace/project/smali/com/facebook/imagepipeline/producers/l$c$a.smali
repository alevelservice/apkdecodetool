.class Lcom/facebook/imagepipeline/producers/l$c$a;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/t$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/j0;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/imagepipeline/producers/l$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->c:Lcom/facebook/imagepipeline/producers/l$c;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->a:Lcom/facebook/imagepipeline/producers/j0;

    iput p4, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/i/g/e;I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->c:Lcom/facebook/imagepipeline/producers/l$c;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/l$c;->h:Lcom/facebook/imagepipeline/producers/l;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/l;->a(Lcom/facebook/imagepipeline/producers/l;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->a:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->c:Lcom/facebook/imagepipeline/producers/l$c;

    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/l$c;->h:Lcom/facebook/imagepipeline/producers/l;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/l;->b(Lcom/facebook/imagepipeline/producers/l;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Le/f/c/j/f;->i(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Le/f/i/i/b;->n()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Le/f/i/i/b;->l()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    iget v2, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->b:I

    .line 7
    invoke-static {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/transcoder/a;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Le/f/i/g/e;I)I

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Le/f/i/g/e;->h(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$a;->c:Lcom/facebook/imagepipeline/producers/l$c;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->a(Lcom/facebook/imagepipeline/producers/l$c;Le/f/i/g/e;I)V

    :cond_3
    return-void
.end method
