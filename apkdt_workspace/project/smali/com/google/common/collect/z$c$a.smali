.class Lcom/google/common/collect/z$c$a;
.super Lcom/google/common/collect/a0;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/z$c;->createEntrySet()Lcom/google/common/collect/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/z$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/z$c$a;->this$0:Lcom/google/common/collect/z$c;

    invoke-direct {p0}, Lcom/google/common/collect/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z$c$a;->this$0:Lcom/google/common/collect/z$c;

    invoke-virtual {v0}, Lcom/google/common/collect/z$c;->entryIterator()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z$c$a;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$c$a;->this$0:Lcom/google/common/collect/z$c;

    return-object v0
.end method
