.class Lcom/google/firebase/crashlytics/d/h/k$t;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/o/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/i/b/b/d/h<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Ljava/util/Date;

.field final synthetic f:Ljava/lang/Throwable;

.field final synthetic g:Ljava/lang/Thread;

.field final synthetic h:Lcom/google/firebase/crashlytics/d/o/e;

.field final synthetic i:Lcom/google/firebase/crashlytics/d/h/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/d/o/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->e:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->f:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->g:Ljava/lang/Thread;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->h:Lcom/google/firebase/crashlytics/d/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Le/i/b/b/d/h;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->e:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/util/Date;)J

    move-result-wide v7

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->l(Lcom/google/firebase/crashlytics/d/h/k;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Tried to write a fatal exception while no session was open."

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 6
    invoke-static {v9}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->m(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/n;->a()Z

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->n(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/h0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->f:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->g:Ljava/lang/Thread;

    .line 9
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide v5, v7

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->g:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->f:Ljava/lang/Throwable;

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/crashlytics/d/h/k;->b(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V

    .line 12
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/k;J)V

    .line 13
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->h:Lcom/google/firebase/crashlytics/d/o/e;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/o/e;->b()Lcom/google/firebase/crashlytics/d/o/i/e;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/o/i/e;->b()Lcom/google/firebase/crashlytics/d/o/i/d;

    move-result-object v1

    iget v1, v1, Lcom/google/firebase/crashlytics/d/o/i/d;->a:I

    .line 15
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/o/i/e;->b()Lcom/google/firebase/crashlytics/d/o/i/d;

    move-result-object v0

    iget v0, v0, Lcom/google/firebase/crashlytics/d/o/i/d;->b:I

    .line 16
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(I)V

    .line 17
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/k;)V

    .line 18
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/d/h/k;->c(I)V

    .line 19
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->b(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/t;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {v9}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->c(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$t;->h:Lcom/google/firebase/crashlytics/d/o/e;

    .line 23
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/o/e;->a()Le/i/b/b/d/h;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/d/h/k$t$a;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/crashlytics/d/h/k$t$a;-><init>(Lcom/google/firebase/crashlytics/d/h/k$t;Ljava/util/concurrent/Executor;)V

    .line 24
    invoke-virtual {v1, v0, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k$t;->call()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
