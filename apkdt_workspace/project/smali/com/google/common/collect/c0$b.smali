.class Lcom/google/common/collect/c0$b;
.super Lcom/google/common/collect/x;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c0;->asList()Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/c0;

.field final synthetic val$entryList:Lcom/google/common/collect/x;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;Lcom/google/common/collect/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$b;->this$0:Lcom/google/common/collect/c0;

    iput-object p2, p0, Lcom/google/common/collect/c0$b;->val$entryList:Lcom/google/common/collect/x;

    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$b;->val$entryList:Lcom/google/common/collect/x;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/common/collect/c0$b;->val$entryList:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
