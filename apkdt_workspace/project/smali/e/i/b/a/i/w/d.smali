.class public final Le/i/b/a/i/w/d;
.super Ljava/lang/Object;
.source "DefaultScheduler_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Le/i/b/a/i/w/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/backends/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/x/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/backends/e;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/c;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/x/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/a/i/w/d;->a:Ljavax/inject/a;

    .line 3
    iput-object p2, p0, Le/i/b/a/i/w/d;->b:Ljavax/inject/a;

    .line 4
    iput-object p3, p0, Le/i/b/a/i/w/d;->c:Ljavax/inject/a;

    .line 5
    iput-object p4, p0, Le/i/b/a/i/w/d;->d:Ljavax/inject/a;

    .line 6
    iput-object p5, p0, Le/i/b/a/i/w/d;->e:Ljavax/inject/a;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;Le/i/b/a/i/w/j/c;Le/i/b/a/i/x/b;)Le/i/b/a/i/w/c;
    .locals 7

    .line 2
    new-instance v6, Le/i/b/a/i/w/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/i/b/a/i/w/c;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;Le/i/b/a/i/w/j/c;Le/i/b/a/i/x/b;)V

    return-object v6
.end method

.method public static a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/backends/e;",
            ">;",
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/c;",
            ">;",
            "Ljavax/inject/a<",
            "Le/i/b/a/i/x/b;",
            ">;)",
            "Le/i/b/a/i/w/d;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/i/b/a/i/w/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/i/b/a/i/w/d;-><init>(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)V

    return-object v6
.end method


# virtual methods
.method public get()Le/i/b/a/i/w/c;
    .locals 5

    .line 2
    iget-object v0, p0, Le/i/b/a/i/w/d;->a:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/i/b/a/i/w/d;->b:Ljavax/inject/a;

    invoke-interface {v1}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/e;

    iget-object v2, p0, Le/i/b/a/i/w/d;->c:Ljavax/inject/a;

    invoke-interface {v2}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    iget-object v3, p0, Le/i/b/a/i/w/d;->d:Ljavax/inject/a;

    invoke-interface {v3}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/i/b/a/i/w/j/c;

    iget-object v4, p0, Le/i/b/a/i/w/d;->e:Ljavax/inject/a;

    invoke-interface {v4}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/i/b/a/i/x/b;

    invoke-static {v0, v1, v2, v3, v4}, Le/i/b/a/i/w/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;Le/i/b/a/i/w/j/c;Le/i/b/a/i/x/b;)Le/i/b/a/i/w/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/w/d;->get()Le/i/b/a/i/w/c;

    move-result-object v0

    return-object v0
.end method
