.class final Le/i/b/a/i/d;
.super Le/i/b/a/i/s;
.source "DaggerTransportRuntimeComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/d$b;
    }
.end annotation


# instance fields
.field private e:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljavax/inject/a;

.field private h:Ljavax/inject/a;

.field private i:Ljavax/inject/a;

.field private j:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/j/b0;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/w/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljavax/inject/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/a<",
            "Le/i/b/a/i/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Le/i/b/a/i/s;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Le/i/b/a/i/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Le/i/b/a/i/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/i/b/a/i/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {}, Le/i/b/a/i/j;->a()Le/i/b/a/i/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Ljavax/inject/a;)Ljavax/inject/a;

    move-result-object v0

    iput-object v0, p0, Le/i/b/a/i/d;->e:Ljavax/inject/a;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/c;->a(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/b;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->f:Ljavax/inject/a;

    .line 3
    iget-object p1, p0, Le/i/b/a/i/d;->f:Ljavax/inject/a;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/c;->a()Lcom/google/android/datatransport/runtime/time/c;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/d;->a()Lcom/google/android/datatransport/runtime/time/d;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/backends/k;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Lcom/google/android/datatransport/runtime/backends/k;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->g:Ljavax/inject/a;

    .line 4
    iget-object p1, p0, Le/i/b/a/i/d;->f:Ljavax/inject/a;

    iget-object v0, p0, Le/i/b/a/i/d;->g:Ljavax/inject/a;

    invoke-static {p1, v0}, Lcom/google/android/datatransport/runtime/backends/m;->a(Ljavax/inject/a;Ljavax/inject/a;)Lcom/google/android/datatransport/runtime/backends/m;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Ljavax/inject/a;)Ljavax/inject/a;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->h:Ljavax/inject/a;

    .line 5
    iget-object p1, p0, Le/i/b/a/i/d;->f:Ljavax/inject/a;

    invoke-static {}, Le/i/b/a/i/w/j/f;->a()Le/i/b/a/i/w/j/f;

    move-result-object v0

    invoke-static {}, Le/i/b/a/i/w/j/g;->a()Le/i/b/a/i/w/j/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Le/i/b/a/i/w/j/i0;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/j/i0;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->i:Ljavax/inject/a;

    .line 6
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/c;->a()Lcom/google/android/datatransport/runtime/time/c;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/d;->a()Lcom/google/android/datatransport/runtime/time/d;

    move-result-object v0

    invoke-static {}, Le/i/b/a/i/w/j/h;->a()Le/i/b/a/i/w/j/h;

    move-result-object v1

    iget-object v2, p0, Le/i/b/a/i/d;->i:Ljavax/inject/a;

    invoke-static {p1, v0, v1, v2}, Le/i/b/a/i/w/j/c0;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/j/c0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Ljavax/inject/a;)Ljavax/inject/a;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->j:Ljavax/inject/a;

    .line 7
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/c;->a()Lcom/google/android/datatransport/runtime/time/c;

    move-result-object p1

    invoke-static {p1}, Le/i/b/a/i/w/g;->a(Ljavax/inject/a;)Le/i/b/a/i/w/g;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->k:Ljavax/inject/a;

    .line 8
    iget-object p1, p0, Le/i/b/a/i/d;->f:Ljavax/inject/a;

    iget-object v0, p0, Le/i/b/a/i/d;->j:Ljavax/inject/a;

    iget-object v1, p0, Le/i/b/a/i/d;->k:Ljavax/inject/a;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/d;->a()Lcom/google/android/datatransport/runtime/time/d;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Le/i/b/a/i/w/i;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/i;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->l:Ljavax/inject/a;

    .line 9
    iget-object p1, p0, Le/i/b/a/i/d;->e:Ljavax/inject/a;

    iget-object v0, p0, Le/i/b/a/i/d;->h:Ljavax/inject/a;

    iget-object v1, p0, Le/i/b/a/i/d;->l:Ljavax/inject/a;

    iget-object v2, p0, Le/i/b/a/i/d;->j:Ljavax/inject/a;

    invoke-static {p1, v0, v1, v2, v2}, Le/i/b/a/i/w/d;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/w/d;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->m:Ljavax/inject/a;

    .line 10
    iget-object v0, p0, Le/i/b/a/i/d;->f:Ljavax/inject/a;

    iget-object v1, p0, Le/i/b/a/i/d;->h:Ljavax/inject/a;

    iget-object v5, p0, Le/i/b/a/i/d;->j:Ljavax/inject/a;

    iget-object v3, p0, Le/i/b/a/i/d;->l:Ljavax/inject/a;

    iget-object v4, p0, Le/i/b/a/i/d;->e:Ljavax/inject/a;

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/c;->a()Lcom/google/android/datatransport/runtime/time/c;

    move-result-object v6

    move-object v2, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->n:Ljavax/inject/a;

    .line 11
    iget-object p1, p0, Le/i/b/a/i/d;->e:Ljavax/inject/a;

    iget-object v0, p0, Le/i/b/a/i/d;->j:Ljavax/inject/a;

    iget-object v1, p0, Le/i/b/a/i/d;->l:Ljavax/inject/a;

    invoke-static {p1, v0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->o:Ljavax/inject/a;

    .line 12
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/c;->a()Lcom/google/android/datatransport/runtime/time/c;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/d;->a()Lcom/google/android/datatransport/runtime/time/d;

    move-result-object v0

    iget-object v1, p0, Le/i/b/a/i/d;->m:Ljavax/inject/a;

    iget-object v2, p0, Le/i/b/a/i/d;->n:Ljavax/inject/a;

    iget-object v3, p0, Le/i/b/a/i/d;->o:Ljavax/inject/a;

    invoke-static {p1, v0, v1, v2, v3}, Le/i/b/a/i/t;->a(Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;Ljavax/inject/a;)Le/i/b/a/i/t;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Ljavax/inject/a;)Ljavax/inject/a;

    move-result-object p1

    iput-object p1, p0, Le/i/b/a/i/d;->p:Ljavax/inject/a;

    return-void
.end method

.method public static k()Le/i/b/a/i/s$a;
    .locals 2

    .line 1
    new-instance v0, Le/i/b/a/i/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/i/b/a/i/d$b;-><init>(Le/i/b/a/i/d$a;)V

    return-object v0
.end method


# virtual methods
.method i()Le/i/b/a/i/w/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/a/i/d;->j:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/a/i/w/j/c;

    return-object v0
.end method

.method j()Le/i/b/a/i/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/a/i/d;->p:Ljavax/inject/a;

    invoke-interface {v0}, Ljavax/inject/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/a/i/r;

    return-object v0
.end method
