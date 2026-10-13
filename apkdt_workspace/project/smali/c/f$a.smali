.class Lc/f$a;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/f;->a(Lc/d;Ljava/util/concurrent/Executor;Lc/c;)Lc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/g;

.field final synthetic b:Lc/d;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lc/c;


# direct methods
.method constructor <init>(Lc/f;Lc/g;Lc/d;Ljava/util/concurrent/Executor;Lc/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/f$a;->a:Lc/g;

    iput-object p3, p0, Lc/f$a;->b:Lc/d;

    iput-object p4, p0, Lc/f$a;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lc/f$a;->d:Lc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lc/f;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/f$a;->a(Lc/f;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/f;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/f<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/f$a;->a:Lc/g;

    iget-object v1, p0, Lc/f$a;->b:Lc/d;

    iget-object v2, p0, Lc/f$a;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lc/f$a;->d:Lc/c;

    invoke-static {v0, v1, p1, v2, v3}, Lc/f;->a(Lc/g;Lc/d;Lc/f;Ljava/util/concurrent/Executor;Lc/c;)V

    const/4 p1, 0x0

    return-object p1
.end method
