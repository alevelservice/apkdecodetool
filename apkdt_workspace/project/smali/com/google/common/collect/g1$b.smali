.class final Lcom/google/common/collect/g1$b;
.super Lcom/google/common/collect/k0;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/g1;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/g1$b;->this$0:Lcom/google/common/collect/g1;

    invoke-direct {p0}, Lcom/google/common/collect/k0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/g1$b;-><init>(Lcom/google/common/collect/g1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g1$b;->this$0:Lcom/google/common/collect/g1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g1$b;->this$0:Lcom/google/common/collect/g1;

    iget-object v0, v0, Lcom/google/common/collect/g1;->contents:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g1$b;->this$0:Lcom/google/common/collect/g1;

    iget-object v0, v0, Lcom/google/common/collect/g1;->contents:Lcom/google/common/collect/b1;

    invoke-virtual {v0}, Lcom/google/common/collect/b1;->c()I

    move-result v0

    return v0
.end method
