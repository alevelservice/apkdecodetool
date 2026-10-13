.class Lcom/google/common/collect/k0$a;
.super Lcom/google/common/collect/x;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k0;->createAsList()Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/k0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k0$a;->this$0:Lcom/google/common/collect/k0;

    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->this$0:Lcom/google/common/collect/k0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k0;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->this$0:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->this$0:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
