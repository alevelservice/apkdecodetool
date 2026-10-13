.class Lcom/google/common/collect/b1$a;
.super Lcom/google/common/collect/w0$a;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/w0$a<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field f:I

.field final synthetic g:Lcom/google/common/collect/b1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b1$a;->g:Lcom/google/common/collect/b1;

    invoke-direct {p0}, Lcom/google/common/collect/w0$a;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/b1;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/b1$a;->e:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/b1$a;->f:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/b1$a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/b1$a;->g:Lcom/google/common/collect/b1;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/b1;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b1$a;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/b1$a;->g:Lcom/google/common/collect/b1;

    iget-object v1, v1, Lcom/google/common/collect/b1;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/b1$a;->f:I

    aget-object v1, v1, v2

    .line 3
    invoke-static {v0, v1}, Le/i/c/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b1$a;->g:Lcom/google/common/collect/b1;

    iget-object v1, p0, Lcom/google/common/collect/b1$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/b1;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/b1$a;->f:I

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b1$a;->a()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/b1$a;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/b1$a;->g:Lcom/google/common/collect/b1;

    iget-object v1, v1, Lcom/google/common/collect/b1;->b:[I

    aget v0, v1, v0

    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$a;->e:Ljava/lang/Object;

    return-object v0
.end method
