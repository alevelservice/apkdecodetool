.class final Le/i/b/b/d/x;
.super Ljava/lang/Object;

# interfaces
.implements Le/i/b/b/d/b;
.implements Le/i/b/b/d/d;
.implements Le/i/b/b/d/e;
.implements Le/i/b/b/d/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/i/b/b/d/b;",
        "Le/i/b/b/d/d;",
        "Le/i/b/b/d/e<",
        "TTContinuationResult;>;",
        "Le/i/b/b/d/z<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Le/i/b/b/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/g<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Le/i/b/b/d/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/c0<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/i/b/b/d/g;Le/i/b/b/d/c0;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le/i/b/b/d/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le/i/b/b/d/c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/i/b/b/d/g<",
            "TTResult;TTContinuationResult;>;",
            "Le/i/b/b/d/c0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/b/d/x;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Le/i/b/b/d/x;->b:Le/i/b/b/d/g;

    .line 4
    iput-object p3, p0, Le/i/b/b/d/x;->c:Le/i/b/b/d/c0;

    return-void
.end method

.method static synthetic a(Le/i/b/b/d/x;)Le/i/b/b/d/g;
    .locals 0

    .line 5
    iget-object p0, p0, Le/i/b/b/d/x;->b:Le/i/b/b/d/g;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Le/i/b/b/d/x;->c:Le/i/b/b/d/c0;

    invoke-virtual {v0}, Le/i/b/b/d/c0;->f()Z

    return-void
.end method

.method public final a(Le/i/b/b/d/h;)V
    .locals 2
    .param p1    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/h<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/b/d/x;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/b/d/y;

    invoke-direct {v1, p0, p1}, Le/i/b/b/d/y;-><init>(Le/i/b/b/d/x;Le/i/b/b/d/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Le/i/b/b/d/x;->c:Le/i/b/b/d/c0;

    invoke-virtual {v0, p1}, Le/i/b/b/d/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/i/b/b/d/x;->c:Le/i/b/b/d/c0;

    invoke-virtual {v0, p1}, Le/i/b/b/d/c0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
