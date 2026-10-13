.class public Le/a/a/a/d;
.super Ljava/lang/Object;
.source "EventQueue.java"


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le/a/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/a/a/a/d;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/a/c/a;
    .locals 1

    .line 2
    iget-object v0, p0, Le/a/a/a/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/c/a;

    return-object v0
.end method

.method public a(Le/a/a/a/c/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/d;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method
