.class Le/f/i/d/a$a;
.super Lcom/facebook/imagepipeline/producers/b;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/d/a;->i()Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Le/f/i/d/a;


# direct methods
.method constructor <init>(Le/f/i/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/d/a$a;->b:Le/f/i/d/a;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 3
    iget-object v0, p0, Le/f/i/d/a$a;->b:Le/f/i/d/a;

    invoke-static {v0}, Le/f/i/d/a;->a(Le/f/i/d/a;)V

    return-void
.end method

.method protected b(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Le/f/i/d/a$a;->b:Le/f/i/d/a;

    invoke-static {v0, p1}, Le/f/i/d/a;->a(Le/f/i/d/a;F)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/d/a$a;->b:Le/f/i/d/a;

    invoke-virtual {v0, p1, p2}, Le/f/i/d/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/f/i/d/a$a;->b:Le/f/i/d/a;

    invoke-static {v0, p1}, Le/f/i/d/a;->a(Le/f/i/d/a;Ljava/lang/Throwable;)V

    return-void
.end method
