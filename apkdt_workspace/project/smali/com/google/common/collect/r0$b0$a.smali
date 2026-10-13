.class final Lcom/google/common/collect/r0$b0$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/r0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0$b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/r0$j<",
        "TK;TV;",
        "Lcom/google/common/collect/r0$b0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/r0$c0<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/r0$b0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0$b0$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$b0$a;

    invoke-direct {v0}, Lcom/google/common/collect/r0$b0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/r0$b0$a;->a:Lcom/google/common/collect/r0$b0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/r0$b0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/r0$b0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$b0$a;->a:Lcom/google/common/collect/r0$b0$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/r0$c0;Lcom/google/common/collect/r0$b0;Lcom/google/common/collect/r0$b0;)Lcom/google/common/collect/r0$b0;
    .locals 1
    .param p3    # Lcom/google/common/collect/r0$b0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, Lcom/google/common/collect/r0$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/r0$c0;->access$300(Lcom/google/common/collect/r0$c0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/r0$b0;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/r0$b0;)Lcom/google/common/collect/r0$b0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/common/collect/r0$c0;Ljava/lang/Object;ILcom/google/common/collect/r0$b0;)Lcom/google/common/collect/r0$b0;
    .locals 1
    .param p4    # Lcom/google/common/collect/r0$b0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$c0<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/common/collect/r0$b0;

    invoke-static {p1}, Lcom/google/common/collect/r0$c0;->access$300(Lcom/google/common/collect/r0$c0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/r0$b0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/r0$b0;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/r0$c0<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/r0$c0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/common/collect/r0$c0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/r0$c0;-><init>(Lcom/google/common/collect/r0;II)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Lcom/google/common/collect/r0$i;Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0
    .param p3    # Lcom/google/common/collect/r0$i;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/r0$c0;

    check-cast p2, Lcom/google/common/collect/r0$b0;

    check-cast p3, Lcom/google/common/collect/r0$b0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$b0$a;->a(Lcom/google/common/collect/r0$c0;Lcom/google/common/collect/r0$b0;Lcom/google/common/collect/r0$b0;)Lcom/google/common/collect/r0$b0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Ljava/lang/Object;ILcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0
    .param p4    # Lcom/google/common/collect/r0$i;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/google/common/collect/r0$c0;

    check-cast p4, Lcom/google/common/collect/r0$b0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/r0$b0$a;->a(Lcom/google/common/collect/r0$c0;Ljava/lang/Object;ILcom/google/common/collect/r0$b0;)Lcom/google/common/collect/r0$b0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$n;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$b0$a;->a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$c0;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/google/common/collect/r0$p;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/common/collect/r0$p;->WEAK:Lcom/google/common/collect/r0$p;

    return-object v0
.end method

.method public a(Lcom/google/common/collect/r0$c0;Lcom/google/common/collect/r0$b0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/r0$b0<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/common/collect/r0$b0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Lcom/google/common/collect/r0$i;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/google/common/collect/r0$c0;

    check-cast p2, Lcom/google/common/collect/r0$b0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$b0$a;->a(Lcom/google/common/collect/r0$c0;Lcom/google/common/collect/r0$b0;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lcom/google/common/collect/r0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$p;->STRONG:Lcom/google/common/collect/r0$p;

    return-object v0
.end method
