.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;
.super Ljava/lang/Object;
.source "WorkInitializer.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Le/i/b/a/i/w/j/c;

.field private final c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

.field private final d:Le/i/b/a/i/x/b;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Le/i/b/a/i/w/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;Le/i/b/a/i/x/b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->b:Le/i/b/a/i/w/j/c;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->d:Le/i/b/a/i/x/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)Ljava/lang/Object;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->b:Le/i/b/a/i/w/j/c;

    invoke-interface {v0}, Le/i/b/a/i/w/j/c;->y()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/a/i/m;

    .line 3
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->a(Le/i/b/a/i/m;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->d:Le/i/b/a/i/x/b;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)Le/i/b/a/i/x/b$a;

    move-result-object p0

    invoke-interface {v0, p0}, Le/i/b/a/i/x/b;->a(Le/i/b/a/i/x/b$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
