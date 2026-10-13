.class final Lcom/google/common/collect/e0$c;
.super Lcom/google/common/collect/k0;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k0<",
        "Lcom/google/common/collect/v0$a<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/e0;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-direct {p0}, Lcom/google/common/collect/k0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/e0$c;-><init>(Lcom/google/common/collect/e0;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/v0$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/v0$a;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-interface {p1}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/v0;->count(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method get(I)Lcom/google/common/collect/v0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0;->getEntry(I)Lcom/google/common/collect/v0$a;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0$c;->get(I)Lcom/google/common/collect/v0$a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-virtual {v0}, Lcom/google/common/collect/e0;->elementSet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$d;

    iget-object v1, p0, Lcom/google/common/collect/e0$c;->this$0:Lcom/google/common/collect/e0;

    invoke-direct {v0, v1}, Lcom/google/common/collect/e0$d;-><init>(Lcom/google/common/collect/e0;)V

    return-object v0
.end method
