.class public Lcom/facebook/imagepipeline/memory/y;
.super Le/f/c/f/j;
.source "MemoryPooledByteBufferOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/y$a;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final e:Lcom/facebook/imagepipeline/memory/u;

.field private f:Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/a<",
            "Lcom/facebook/imagepipeline/memory/t;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/u;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/u;->d()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/u;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Le/f/c/f/j;-><init>()V

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/facebook/imagepipeline/memory/u;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/y;->e:Lcom/facebook/imagepipeline/memory/u;

    .line 5
    iput v0, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    .line 6
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/y;->e:Lcom/facebook/imagepipeline/memory/u;

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/memory/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/imagepipeline/memory/y;->e:Lcom/facebook/imagepipeline/memory/u;

    invoke-static {p1, p2}, Le/f/c/g/a;->a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/memory/y$a;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/y$a;-><init>()V

    throw v0
.end method


# virtual methods
.method c(I)V
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/y;->j()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/t;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/t;->i()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->e:Lcom/facebook/imagepipeline/memory/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/t;

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/t;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v2, v1}, Lcom/facebook/imagepipeline/memory/t;->a(ILcom/facebook/imagepipeline/memory/t;II)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->close()V

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->e:Lcom/facebook/imagepipeline/memory/u;

    invoke-static {p1, v0}, Le/f/c/g/a;->a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    .line 4
    invoke-super {p0}, Le/f/c/f/j;->close()V

    return-void
.end method

.method public i()Lcom/facebook/imagepipeline/memory/w;
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/y;->j()V

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/memory/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/w;-><init>(Le/f/c/g/a;I)V

    return-object v0
.end method

.method public bridge synthetic i()Le/f/c/f/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/y;->i()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    return v0
.end method

.method public write(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/y;->j()V

    .line 4
    iget v0, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/y;->c(I)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/y;->f:Le/f/c/g/a;

    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/t;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/t;->b(I[BII)I

    .line 6
    iget p1, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/facebook/imagepipeline/memory/y;->g:I

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionLength="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
